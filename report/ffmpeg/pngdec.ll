Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pngdec?download=true
inline.NumInlined: 45
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@decode_frame_common:bb.a
bb.ic:                                            ; preds = %bytestream2_get_byte.exit.i424, %.loopexit.i423
  %.str.54.sink.i = phi ptr [ @.str.53, %.loopexit.i423 ], [ @.str.54, %bytestream2_get_byte.exit.i424 ]
  %i.akf = load ptr, ptr %i.ap, align 8, !tbaa !53
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.akf, i32 noundef 16, ptr noundef nonnull %.str.54.sink.i) #12
  store i8 0, ptr %i.ao, align 8, !tbaa !9
  br label %decode_iccp_chunk.exit.thread

decode_iccp_chunk.exit.thread:                    ; preds = %bytestream2_get_byte.exit.thread.i, %bb.ib, %bb.ic
  %.020.i.ph = phi i32 [ -1094995529, %bb.ic ], [ %i.akb, %bytestream2_get_byte.exit.thread.i ], [ %i.akd, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %apng_reset_background.exit

decode_iccp_chunk.exit:                           ; preds = %bb.ib
  %i.akg = load i32, ptr %i.ar, align 8, !tbaa !100
  %i.akh = zext i32 %i.akg to i64
  store i64 %i.akh, ptr %i.as, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.thread530

bb.id:                                            ; preds = %bb.t
  store i32 1, ptr %i.ak, align 4, !tbaa !56
  %i.aki = ptrtoint ptr %i.ft to i64              ; 14 uses
  %i.akj = icmp samesign ult i32 %.0.i362529, 4
  br i1 %i.akj, label %bytestream2_get_be32.exit359, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.akk = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 2 uses
  %i.akl = load i32, ptr %i.fr, align 1, !tbaa !9
  %i.akm = call i32 @llvm.bswap.i32(i32 %i.akl)
  %.pre696 = ptrtoint ptr %i.akk to i64
  br label %bytestream2_get_be32.exit359

bytestream2_get_be32.exit359:                     ; preds = %bb.id, %bb.ie
  %.pre-phi697 = phi i64 [ %i.aki, %bb.id ], [ %.pre696, %bb.ie ]
  %.sroa.0.6 = phi ptr [ %i.ft, %bb.id ], [ %i.akk, %bb.ie ] ; 2 uses
  %.0.i358 = phi i32 [ 0, %bb.id ], [ %i.akm, %bb.ie ]
  store i32 %.0.i358, ptr %i.al, align 8, !tbaa !15
  %i.akn = sub i64 %i.aki, %.pre-phi697
  %i.ako = icmp slt i64 %i.akn, 4
  br i1 %i.ako, label %bytestream2_get_be32.exit357, label %bb.if

bb.if:                                            ; preds = %bytestream2_get_be32.exit359
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 4 ; 2 uses
  %i.akq = load i32, ptr %.sroa.0.6, align 1, !tbaa !9
  %i.akr = call i32 @llvm.bswap.i32(i32 %i.akq)
  %.pre698 = ptrtoint ptr %i.akp to i64
  br label %bytestream2_get_be32.exit357

bytestream2_get_be32.exit357:                     ; preds = %bytestream2_get_be32.exit359, %bb.if
  %.pre-phi699 = phi i64 [ %i.aki, %bytestream2_get_be32.exit359 ], [ %.pre698, %bb.if ]
  %.sroa.0.5 = phi ptr [ %i.ft, %bytestream2_get_be32.exit359 ], [ %i.akp, %bb.if ] ; 2 uses
  %.0.i356 = phi i32 [ 0, %bytestream2_get_be32.exit359 ], [ %i.akr, %bb.if ]
  store i32 %.0.i356, ptr %i.am, align 4, !tbaa !15
  %i.aks = sub i64 %i.aki, %.pre-phi699
  %i.akt = icmp slt i64 %i.aks, 4
  br i1 %i.akt, label %bytestream2_get_be32.exit355, label %bb.ig

bb.ig:                                            ; preds = %bytestream2_get_be32.exit357
  %i.aku = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 4 ; 2 uses
  %i.akv = load i32, ptr %.sroa.0.5, align 1, !tbaa !9
  %i.akw = call i32 @llvm.bswap.i32(i32 %i.akv)
  %.pre700 = ptrtoint ptr %i.aku to i64
  br label %bytestream2_get_be32.exit355

bytestream2_get_be32.exit355:                     ; preds = %bytestream2_get_be32.exit357, %bb.ig
  %.pre-phi701 = phi i64 [ %i.aki, %bytestream2_get_be32.exit357 ], [ %.pre700, %bb.ig ]
  %.sroa.0.4 = phi ptr [ %i.ft, %bytestream2_get_be32.exit357 ], [ %i.aku, %bb.ig ] ; 2 uses
  %.0.i354 = phi i32 [ 0, %bytestream2_get_be32.exit357 ], [ %i.akw, %bb.ig ]
  store i32 %.0.i354, ptr %i.an, align 8, !tbaa !15
  %i.akx = sub i64 %i.aki, %.pre-phi701
  %i.aky = icmp slt i64 %i.akx, 4
  br i1 %i.aky, label %bytestream2_get_be32.exit353, label %bb.ih

bb.ih:                                            ; preds = %bytestream2_get_be32.exit355
  %i.akz = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 4 ; 2 uses
  %i.ala = load i32, ptr %.sroa.0.4, align 1, !tbaa !9
  %i.alb = call i32 @llvm.bswap.i32(i32 %i.ala)
  %.pre702 = ptrtoint ptr %i.akz to i64
  br label %bytestream2_get_be32.exit353

bytestream2_get_be32.exit353:                     ; preds = %bytestream2_get_be32.exit355, %bb.ih
  %.pre-phi703 = phi i64 [ %i.aki, %bytestream2_get_be32.exit355 ], [ %.pre702, %bb.ih ]
  %.sroa.0.3 = phi ptr [ %i.ft, %bytestream2_get_be32.exit355 ], [ %i.akz, %bb.ih ] ; 2 uses
  %.0.i352 = phi i32 [ 0, %bytestream2_get_be32.exit355 ], [ %i.alb, %bb.ih ]
  store i32 %.0.i352, ptr %i.di, align 4, !tbaa !15
  %i.alc = sub i64 %i.aki, %.pre-phi703
  %i.ald = icmp slt i64 %i.alc, 4
  br i1 %i.ald, label %bytestream2_get_be32.exit355.1, label %bb.ii

bb.ii:                                            ; preds = %bytestream2_get_be32.exit353
  %i.ale = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 4 ; 2 uses
  %i.alf = load i32, ptr %.sroa.0.3, align 1, !tbaa !9
  %i.alg = call i32 @llvm.bswap.i32(i32 %i.alf)
  %.pre704 = ptrtoint ptr %i.ale to i64
  br label %bytestream2_get_be32.exit355.1

bytestream2_get_be32.exit355.1:                   ; preds = %bb.ii, %bytestream2_get_be32.exit353
  %.pre-phi705 = phi i64 [ %.pre704, %bb.ii ], [ %i.aki, %bytestream2_get_be32.exit353 ]
  %.sroa.0.4.1 = phi ptr [ %i.ale, %bb.ii ], [ %i.ft, %bytestream2_get_be32.exit353 ] ; 2 uses
  %.0.i354.1 = phi i32 [ %i.alg, %bb.ii ], [ 0, %bytestream2_get_be32.exit353 ]
  store i32 %.0.i354.1, ptr %i.dj, align 8, !tbaa !15
  %i.alh = sub i64 %i.aki, %.pre-phi705
  %i.ali = icmp slt i64 %i.alh, 4
  br i1 %i.ali, label %bytestream2_get_be32.exit353.1, label %bb.ij

bb.ij:                                            ; preds = %bytestream2_get_be32.exit355.1
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.0.4.1, i64 4 ; 2 uses
  %i.alk = load i32, ptr %.sroa.0.4.1, align 1, !tbaa !9
  %i.all = call i32 @llvm.bswap.i32(i32 %i.alk)
  %.pre706 = ptrtoint ptr %i.alj to i64
  br label %bytestream2_get_be32.exit353.1

bytestream2_get_be32.exit353.1:                   ; preds = %bb.ij, %bytestream2_get_be32.exit355.1
  %.pre-phi707 = phi i64 [ %.pre706, %bb.ij ], [ %i.aki, %bytestream2_get_be32.exit355.1 ]
  %.sroa.0.3.1 = phi ptr [ %i.alj, %bb.ij ], [ %i.ft, %bytestream2_get_be32.exit355.1 ] ; 2 uses
  %.0.i352.1 = phi i32 [ %i.all, %bb.ij ], [ 0, %bytestream2_get_be32.exit355.1 ]
  store i32 %.0.i352.1, ptr %i.dk, align 4, !tbaa !15
  %i.alm = sub i64 %i.aki, %.pre-phi707
  %i.aln = icmp slt i64 %i.alm, 4
  br i1 %i.aln, label %bytestream2_get_be32.exit355.2, label %bb.ik

bb.ik:                                            ; preds = %bytestream2_get_be32.exit353.1
  %i.alo = getelementptr inbounds nuw i8, ptr %.sroa.0.3.1, i64 4 ; 2 uses
  %i.alp = load i32, ptr %.sroa.0.3.1, align 1, !tbaa !9
  %i.alq = call i32 @llvm.bswap.i32(i32 %i.alp)
  %.pre708 = ptrtoint ptr %i.alo to i64
  br label %bytestream2_get_be32.exit355.2

bytestream2_get_be32.exit355.2:                   ; preds = %bb.ik, %bytestream2_get_be32.exit353.1
  %.pre-phi709 = phi i64 [ %.pre708, %bb.ik ], [ %i.aki, %bytestream2_get_be32.exit353.1 ]
  %.sroa.0.4.2 = phi ptr [ %i.alo, %bb.ik ], [ %i.ft, %bytestream2_get_be32.exit353.1 ]
  %.0.i354.2 = phi i32 [ %i.alq, %bb.ik ], [ 0, %bytestream2_get_be32.exit353.1 ]
  store i32 %.0.i354.2, ptr %i.dl, align 8, !tbaa !15
  %i.alr = sub i64 %i.aki, %.pre-phi709
  %i.als = icmp slt i64 %i.alr, 4
  br i1 %i.als, label %bytestream2_get_be32.exit353.2, label %bb.il

bb.il:                                            ; preds = %bytestream2_get_be32.exit355.2
  %i.alt = load i32, ptr %.sroa.0.4.2, align 1, !tbaa !9
  %i.alu = call i32 @llvm.bswap.i32(i32 %i.alt)
  br label %bytestream2_get_be32.exit353.2

bytestream2_get_be32.exit353.2:                   ; preds = %bb.il, %bytestream2_get_be32.exit355.2
  %.0.i352.2 = phi i32 [ %i.alu, %bb.il ], [ 0, %bytestream2_get_be32.exit355.2 ]
  store i32 %.0.i352.2, ptr %i.dm, align 4, !tbaa !15
  br label %.thread530

bb.im:                                            ; preds = %bb.t
  %i.alv = load i32, ptr %i.t, align 8, !tbaa !51
  %i.alw = and i32 %i.alv, 1
  %.not.i426 = icmp eq i32 %i.alw, 0
  br i1 %.not.i426, label %decode_sbit_chunk.exit, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.alx = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.aly = and i32 %i.alx, 1
  %.not34.i = icmp eq i32 %i.aly, 0
  br i1 %.not34.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.56) #12
  br label %.thread530

bb.ip:                                            ; preds = %bb.in
  %i.alz = load i32, ptr %i.ah, align 8, !tbaa !88 ; 2 uses
  %i.ama = and i32 %i.alz, 1
  %.not35.i = icmp eq i32 %i.ama, 0
  br i1 %.not35.i, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.amb = call i32 @ff_png_get_nb_channels(i32 noundef %i.alz) #12
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %i.amc = phi i32 [ %i.amb, %bb.iq ], [ 3, %bb.ip ] ; 7 uses
  %.not36.i = icmp eq i32 %i.amc, %.0.i362529
  br i1 %.not36.i, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.57, i32 noundef %.0.i362529, i32 noundef %i.amc) #12
  %i.amd = icmp sgt i32 %i.amc, %.0.i362529
  br i1 %i.amd, label %.thread530, label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %i.ame = icmp sgt i32 %i.amc, 0
  br i1 %i.ame, label %.lr.ph.i428.preheader, label %._crit_edge.thread.i

.lr.ph.i428.preheader:                            ; preds = %bb.it
  %i.amf = zext nneg i32 %i.amc to i64            ; 2 uses
  %min.iters.check831 = icmp ult i32 %i.amc, 8
  br i1 %min.iters.check831, label %.lr.ph.i428.preheader885, label %vector.ph832

vector.ph832:                                     ; preds = %.lr.ph.i428.preheader
  %n.vec833 = and i64 %i.amf, 2147483640          ; 4 uses
  %i.amg = getelementptr i8, ptr %i.fr, i64 %n.vec833
  %i.amh = trunc nuw nsw i64 %n.vec833 to i32
  br label %vector.body834

vector.body834:                                   ; preds = %vector.body834, %vector.ph832
  %index835 = phi i64 [ 0, %vector.ph832 ], [ %index.next838, %vector.body834 ] ; 2 uses
  %vec.phi = phi <4 x i8> [ zeroinitializer, %vector.ph832 ], [ %7, %vector.body834 ]
  %vec.phi836 = phi <4 x i8> [ zeroinitializer, %vector.ph832 ], [ %8, %vector.body834 ]
  %next.gep = getelementptr i8, ptr %i.fr, i64 %index835 ; 2 uses
  %i.ami = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load837 = load <4 x i8>, ptr %i.ami, align 1, !tbaa !9
  %7 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load, <4 x i8> %vec.phi) ; 2 uses
  %8 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load837, <4 x i8> %vec.phi836) ; 2 uses
  %index.next838 = add nuw i64 %index835, 8       ; 2 uses
  %i.amj = icmp eq i64 %index.next838, %n.vec833
  br i1 %i.amj, label %middle.block839, label %vector.body834, !llvm.loop !155

middle.block839:                                  ; preds = %vector.body834
  %rdx.minmax = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %7, <4 x i8> %8)
  %9 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %rdx.minmax)
  %10 = zext i8 %9 to i32                         ; 2 uses
  %cmp.n840 = icmp eq i64 %n.vec833, %i.amf
  br i1 %cmp.n840, label %._crit_edge.i430, label %.lr.ph.i428.preheader885

.lr.ph.i428.preheader885:                         ; preds = %.lr.ph.i428.preheader, %middle.block839
  %.ph = phi ptr [ %i.fr, %.lr.ph.i428.preheader ], [ %i.amg, %middle.block839 ]
  %.03039.i.ph = phi i32 [ 0, %.lr.ph.i428.preheader ], [ %i.amh, %middle.block839 ]
  %.03138.i.ph = phi i32 [ 0, %.lr.ph.i428.preheader ], [ %10, %middle.block839 ]
  br label %.lr.ph.i428

._crit_edge.i430:                                 ; preds = %.lr.ph.i428, %middle.block839
  %.lcssa = phi i32 [ %10, %middle.block839 ], [ %i.amp, %.lr.ph.i428 ] ; 4 uses
  %i.amk = icmp eq i32 %.lcssa, 0
  br i1 %i.amk, label %._crit_edge.thread.i, label %bb.iu

.lr.ph.i428:                                      ; preds = %.lr.ph.i428.preheader885, %.lr.ph.i428
  %i.aml = phi ptr [ %i.amm, %.lr.ph.i428 ], [ %.ph, %.lr.ph.i428.preheader885 ] ; 2 uses
  %.03039.i = phi i32 [ %i.amq, %.lr.ph.i428 ], [ %.03039.i.ph, %.lr.ph.i428.preheader885 ]
  %.03138.i = phi i32 [ %i.amp, %.lr.ph.i428 ], [ %.03138.i.ph, %.lr.ph.i428.preheader885 ]
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 1
  %i.amn = load i8, ptr %i.aml, align 1, !tbaa !9
  %i.amo = zext i8 %i.amn to i32
  %i.amp = call i32 @llvm.umax.i32(i32 %i.amo, i32 %.03138.i) ; 2 uses
  %i.amq = add nuw nsw i32 %.03039.i, 1           ; 2 uses
  %exitcond.not.i429 = icmp eq i32 %i.amq, %i.amc
  br i1 %exitcond.not.i429, label %._crit_edge.i430, label %.lr.ph.i428, !llvm.loop !156

bb.iu:                                            ; preds = %._crit_edge.i430
  %i.amr = load i32, ptr %i.ah, align 8, !tbaa !88
  %i.ams = and i32 %i.amr, 1
  %.not37.i = icmp eq i32 %i.ams, 0
  br i1 %.not37.i, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.amt = load i32, ptr %i.ai, align 4, !tbaa !176
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.amu = phi i32 [ %i.amt, %bb.iv ], [ 8, %bb.iu ]
  %i.amv = icmp sgt i32 %.lcssa, %i.amu
  br i1 %i.amv, label %._crit_edge.thread.i, label %bb.ix

._crit_edge.thread.i:                             ; preds = %bb.iw, %._crit_edge.i430, %bb.it
  %.031.lcssa43.i = phi i32 [ 0, %._crit_edge.i430 ], [ %.lcssa, %bb.iw ], [ 0, %bb.it ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.58, i32 noundef %.031.lcssa43.i) #12
  br label %.thread530

bb.ix:                                            ; preds = %bb.iw
  store i32 %.lcssa, ptr %i.aj, align 8, !tbaa !205
  br label %.thread530

decode_sbit_chunk.exit:                           ; preds = %bb.im
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.55) #12
  br label %apng_reset_background.exit

bb.iy:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.amw = icmp samesign ult i32 %.0.i362529, 4
  br i1 %i.amw, label %bytestream2_get_be32.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.amx = load i32, ptr %i.fr, align 1, !tbaa !9
  %i.amy = call i32 @llvm.bswap.i32(i32 %i.amx)
  br label %bytestream2_get_be32.exit

bytestream2_get_be32.exit:                        ; preds = %bb.iy, %bb.iz
  %.0.i = phi i32 [ %i.amy, %bb.iz ], [ 0, %bb.iy ]
  store i32 %.0.i, ptr %i.ae, align 8, !tbaa !202
  call void @av_bprint_init(ptr noundef nonnull %6, i32 noundef 0, i32 noundef -1) #12
  %i.amz = load i32, ptr %i.ae, align 8, !tbaa !202
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.19, i32 noundef %i.amz, i32 noundef 100000) #12
  %i.ana = call i32 @av_bprint_finalize(ptr noundef nonnull %6, ptr noundef nonnull %i.e) #12 ; 2 uses
  %i.anb = icmp sgt i32 %i.ana, -1
  br i1 %i.anb, label %.thread554, label %bb.ja

.thread554:                                       ; preds = %bytestream2_get_be32.exit
  %i.anc = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.and = call i32 @av_dict_set(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.20, ptr noundef %i.anc, i32 noundef 8) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.thread530

bb.ja:                                            ; preds = %bytestream2_get_be32.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.thread567

bb.jb:                                            ; preds = %bb.t, %bb.t
  %.not332 = icmp eq i32 %.0.i362529, 8
  br i1 %.not332, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.21, i32 noundef %.0.i362529) #12
  br label %.thread530

bb.jd:                                            ; preds = %bb.jb
  store i32 1, ptr %i.ab, align 8, !tbaa !207
  %i.ane = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.anf = load i32, ptr %i.fr, align 1, !tbaa !9
  %i.ang = call i32 @llvm.bswap.i32(i32 %i.anf)
  store i32 %i.ang, ptr %i.ac, align 4, !tbaa !228
  %i.anh = load i32, ptr %i.ane, align 1, !tbaa !9
  %i.ani = call i32 @llvm.bswap.i32(i32 %i.anh)
  store i32 %i.ani, ptr %i.ad, align 8, !tbaa !229
  br label %.thread530

bb.je:                                            ; preds = %bb.t, %bb.t
  %.not331 = icmp eq i32 %.0.i362529, 24
  br i1 %.not331, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.22, i32 noundef %.0.i362529) #12
  br label %.thread530

bb.jg:                                            ; preds = %bb.je
  store i32 1, ptr %i.v, align 4, !tbaa !210
  %i.anj = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  %i.ank = load i16, ptr %i.fr, align 1, !tbaa !9
  %i.anl = call i16 @llvm.bswap.i16(i16 %i.ank)
  store i16 %i.anl, ptr %i.w, align 8, !tbaa !216
  %i.anm = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ann = load i16, ptr %i.anj, align 1, !tbaa !9
  %i.ano = call i16 @llvm.bswap.i16(i16 %i.ann)
  store i16 %i.ano, ptr %i.dd, align 2, !tbaa !216
  %i.anp = getelementptr inbounds nuw i8, ptr %i.fr, i64 6
  %i.anq = load i16, ptr %i.anm, align 1, !tbaa !9
  %i.anr = call i16 @llvm.bswap.i16(i16 %i.anq)
  store i16 %i.anr, ptr %i.de, align 4, !tbaa !216
  %i.ans = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ant = load i16, ptr %i.anp, align 1, !tbaa !9
  %i.anu = call i16 @llvm.bswap.i16(i16 %i.ant)
  store i16 %i.anu, ptr %i.df, align 2, !tbaa !216
  %i.anv = getelementptr inbounds nuw i8, ptr %i.fr, i64 10
  %i.anw = load i16, ptr %i.ans, align 1, !tbaa !9
  %i.anx = call i16 @llvm.bswap.i16(i16 %i.anw)
  store i16 %i.anx, ptr %i.dg, align 8, !tbaa !216
  %i.any = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.anz = load i16, ptr %i.anv, align 1, !tbaa !9
  %i.aoa = call i16 @llvm.bswap.i16(i16 %i.anz)
  store i16 %i.aoa, ptr %i.dh, align 2, !tbaa !216
  %i.aob = getelementptr inbounds nuw i8, ptr %i.fr, i64 14
  %i.aoc = load i16, ptr %i.any, align 1, !tbaa !9
  %i.aod = call i16 @llvm.bswap.i16(i16 %i.aoc)
  store i16 %i.aod, ptr %i.x, align 4, !tbaa !216
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.aof = load i16, ptr %i.aob, align 1, !tbaa !9
  %i.aog = call i16 @llvm.bswap.i16(i16 %i.aof)
  store i16 %i.aog, ptr %i.y, align 2, !tbaa !216
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  %i.aoi = load i32, ptr %i.aoe, align 1, !tbaa !9
  %i.aoj = call i32 @llvm.bswap.i32(i32 %i.aoi)
  store i32 %i.aoj, ptr %i.z, align 8, !tbaa !218
  %i.aok = load i32, ptr %i.aoh, align 1, !tbaa !9
  %i.aol = call i32 @llvm.bswap.i32(i32 %i.aok)
  store i32 %i.aol, ptr %i.aa, align 4, !tbaa !219
  br label %.thread530

bb.jh:                                            ; preds = %bb.t
  %i.aom = load i32, ptr %i.t, align 8, !tbaa !51
  %i.aon = and i32 %i.aom, 1
  %.not.i431 = icmp eq i32 %i.aon, 0
  br i1 %.not.i431, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.59) #12
  br label %apng_reset_background.exit

bb.jj:                                            ; preds = %bb.jh
  call void @av_buffer_unref(ptr noundef nonnull %i.u) #12
  %i.aoo = call ptr @av_buffer_alloc(i64 noundef %i.fs) #12 ; 4 uses
  store ptr %i.aoo, ptr %i.u, align 8, !tbaa !101
  %.not10.i = icmp eq ptr %i.aoo, null
  br i1 %.not10.i, label %apng_reset_background.exit, label %decode_exif_chunk.exit

decode_exif_chunk.exit:                           ; preds = %bb.jj
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !104
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoo, i64 16
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !105 ; 2 uses
  %i.aot = and i64 %i.aos, 4294967295
  %i.aou = icmp samesign ult i64 %i.aot, %i.fs
  %.v.i = select i1 %i.aou, i64 %i.aos, i64 %i.fs
  %i.aov = and i64 %.v.i, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aoq, ptr nonnull align 1 %i.fr, i64 %i.aov, i1 false)
  br label %.thread530

bb.jk:                                            ; preds = %bb.t
  %i.aow = load i32, ptr %i.ag, align 4, !tbaa !63 ; 2 uses
  %i.aox = and i32 %i.aow, 2
  %.not329 = icmp eq i32 %i.aox, 0
  br i1 %.not329, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.23) #12
  %.pre691 = load i32, ptr %i.ag, align 4, !tbaa !63
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.aoy = phi i32 [ %.pre691, %bb.jl ], [ %i.aow, %bb.jk ]
  %i.aoz = and i32 %i.aoy, 3
  %.not330 = icmp eq i32 %i.aoz, 0
  br i1 %.not330, label %apng_reset_background.exit, label %.thread575

.thread530:                                       ; preds = %bytestream2_get_be32.exit353.2, %bb.aj, %bytestream2_get_be32.exit.i386, %decode_idat_chunk.exit, %bb.is, %bb.ix, %._crit_edge.thread.i, %bb.io, %bb.k, %bb.t, %bb.hw, %bb.hx, %bb.jc, %bb.jd, %bb.jf, %bb.jg, %bb.hm, %bb.hl, %bb.ho, %bb.hn, %bb.hq, %bytestream2_get_byte.exit375.thread, %bytestream2_get_byte.exit.i, %bb.ad, %decode_fctl_chunk.exit, %bb.gn, %._crit_edge.i, %bb.gu, %bb.gw, %bb.gx, %bb.gy, %bb.hb, %bb.hc, %bb.hd, %.loopexit.i, %decode_iccp_chunk.exit, %.thread554, %decode_exif_chunk.exit, %bytestream2_get_be32.exit361, %bb.bg, %bb.ak, %bb.s
  %.2301 = phi i32 [ %.0299633, %decode_idat_chunk.exit ], [ %.0299633, %bb.jf ], [ %.0299633, %.thread554 ], [ %.0299633, %bb.jc ], [ %.0299633, %bytestream2_get_byte.exit.i ], [ %.0299633, %bb.gn ], [ %.0299633, %bb.jd ], [ %.0299633, %bb.gu ], [ %.0299633, %bb.s ], [ %.0299633, %bb.gw ], [ %.0299633, %bb.gx ], [ %.0299633, %bb.ak ], [ %.0299633, %bb.gy ], [ %.0299633, %bb.bg ], [ 0, %bytestream2_get_be32.exit361 ], [ %.0299633, %bb.hb ], [ %.0299633, %bb.hc ], [ %.0299633, %bb.hd ], [ %.0299633, %bb.jg ], [ %.0299633, %.loopexit.i ], [ %.0299633, %bb.is ], [ %.0299633, %bb.hq ], [ %.0299633, %bb.t ], [ %.0299633, %bytestream2_get_byte.exit375.thread ], [ %.0299633, %bb.ix ], [ %.0299633, %decode_exif_chunk.exit ], [ %.0299633, %bb.ad ], [ %.0299633, %._crit_edge.i ], [ %.0299633, %bb.hm ], [ %.0299633, %bb.hl ], [ %.0299633, %bb.ho ], [ %.0299633, %bb.hn ], [ 1, %decode_fctl_chunk.exit ], [ %.0299633, %bb.hw ], [ %.0299633, %bb.hx ], [ %.0299633, %decode_iccp_chunk.exit ], [ %.0299633, %bb.aj ], [ %.0299633, %bb.k ], [ %.0299633, %bb.io ], [ %.0299633, %._crit_edge.thread.i ], [ %.0299633, %bytestream2_get_be32.exit.i386 ], [ %.0299633, %bytestream2_get_be32.exit353.2 ]
  %i.apa = load ptr, ptr %i.h, align 8, !tbaa !61 ; 2 uses
  %i.apb = load ptr, ptr %i.g, align 8, !tbaa !59 ; 2 uses
  %i.apc = ptrtoint ptr %i.apa to i64
  %i.apd = ptrtoint ptr %i.apb to i64
  %i.ape = sub i64 %i.apc, %i.apd                 ; 2 uses
  %i.apf = and i64 %i.ape, 4294967295
end_hunk_0
begin_hunk_1_@handle_p_frame_apng:bb.a
  ret i32 %.0136
}

declare void @ff_progress_frame_report(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_png_get_nb_channels(i32 noundef) local_unnamed_addr #2

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_progress_frame_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_thread_finish_setup(ptr noundef) local_unnamed_addr #2

declare i32 @ff_png_pass_row_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_fast_padded_mallocz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_frame_new_side_data(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_csp_primaries_id_from_desc(ptr noundef) local_unnamed_addr #2

declare i32 @ff_decode_content_light_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_decode_mastering_display_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @decode_zbuf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.FFZStream, align 8          ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = call i32 @ff_inflate_init(ptr noundef nonnull %4, ptr noundef %3) #12 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !96
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.h, ptr %i.i, align 8, !tbaa !95
  call void @av_bprint_init(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1) #12
  %.old = load i32, ptr %i.i, align 8, !tbaa !95
  %.not.old = icmp eq i32 %.old, 0
  br i1 %.not.old, label %.loopexit29, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load i32, ptr %i.j, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.g
  %i.m = phi i32 [ %.pre, %.preheader ], [ %i.aa, %bb.g ]
  %i.n = icmp ugt i32 %i.m, 16777216
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.51, i32 noundef 16777216) #12
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @av_bprint_get_buffer(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.o = load i32, ptr %i.b, align 4, !tbaa !15   ; 2 uses
  %i.p = icmp ult i32 %i.o, 2
  br i1 %i.p, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !81
  store ptr %i.q, ptr %i.k, align 8, !tbaa !98
  %i.r = add i32 %i.o, -1
  store i32 %i.r, ptr %i.l, align 8, !tbaa !97
  %i.s = call i32 @inflate(ptr noundef nonnull %4, i32 noundef 1) #12 ; 2 uses
  %or.cond = icmp ugt i32 %i.s, 1
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = load i32, ptr %i.j, align 8, !tbaa !100
  %i.z = trunc i64 %i.x to i32
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !100
  %i.ab = icmp eq i32 %i.s, 1
  %i.ac = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.ac, 0
  %or.cond28 = select i1 %i.ab, i1 true, i1 %.not
  br i1 %or.cond28, label %.loopexit29, label %bb.c, !llvm.loop !265

.loopexit29:                                      ; preds = %bb.g, %bb.b
  call void @ff_inflate_end(ptr noundef nonnull %4) #12
  %i.ad = load ptr, ptr %0, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !100
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  store i8 0, ptr %i.ah, align 1, !tbaa !9
  br label %bb.h

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ -1094995529, %bb.d ], [ -542398533, %bb.f ], [ -12, %bb.e ]
  call void @ff_inflate_end(ptr noundef nonnull %4) #12
  %i.ai = call i32 @av_bprint_finalize(ptr noundef nonnull %0, ptr noundef null) #12 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.loopexit, %.loopexit29
  %.026 = phi i32 [ 0, %.loopexit29 ], [ %.0, %.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.026
}

declare void @av_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #2

declare void @av_bprint_get_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_inflate_end(ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare ptr @av_buffer_alloc(i64 noundef) local_unnamed_addr #2

declare i32 @av_image_get_linesize(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_progress_frame_await(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_get_pix_fmt_name(i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_stereo3d_create_side_data(ptr noundef) local_unnamed_addr #2

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 4, i32 28}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!6, !6, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"PNGDSPContext", !16, i64 0, !16, i64 8}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = !{!"p1 _ZTS7AVClass", !16, i64 0}
!20 = !{!"p1 _ZTS7AVCodec", !16, i64 0}
!21 = !{!"p1 _ZTS15AVCodecInternal", !16, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"p1 omnipotent char", !16, i64 0}
!24 = !{!"AVRational", !6, i64 0, !6, i64 4}
!25 = !{!"float", !5, i64 0}
!26 = !{!"p1 short", !16, i64 0}
!27 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !16, i64 16}
!28 = !{!"p1 _ZTS10RcOverride", !16, i64 0}
!29 = !{!"p1 _ZTS9AVHWAccel", !16, i64 0}
!30 = !{!"p1 _ZTS11AVBufferRef", !16, i64 0}
!31 = !{!"p1 _ZTS17AVCodecDescriptor", !16, i64 0}
!32 = !{!"p1 _ZTS16AVPacketSideData", !16, i64 0}
!33 = !{!"p1 int", !16, i64 0}
!34 = !{!"any p2 pointer", !16, i64 0}
!35 = !{!"p2 _ZTS15AVFrameSideData", !34, i64 0}
!36 = !{!"AVCodecContext", !19, i64 0, !6, i64 8, !6, i64 12, !20, i64 16, !6, i64 24, !6, i64 28, !16, i64 32, !21, i64 40, !16, i64 48, !22, i64 56, !6, i64 64, !6, i64 68, !23, i64 72, !6, i64 80, !24, i64 84, !24, i64 92, !24, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !24, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !16, i64 184, !16, i64 192, !6, i64 200, !25, i64 204, !25, i64 208, !25, i64 212, !25, i64 216, !25, i64 220, !25, i64 224, !25, i64 228, !25, i64 232, !25, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !26, i64 288, !26, i64 296, !26, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !27, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !16, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !25, i64 428, !25, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !28, i64 456, !22, i64 464, !22, i64 472, !25, i64 480, !25, i64 484, !6, i64 488, !6, i64 492, !23, i64 496, !23, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !29, i64 536, !16, i64 544, !30, i64 552, !30, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !16, i64 672, !16, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !31, i64 728, !23, i64 736, !6, i64 744, !6, i64 748, !23, i64 752, !23, i64 760, !23, i64 768, !32, i64 776, !6, i64 784, !6, i64 788, !22, i64 792, !6, i64 800, !6, i64 804, !22, i64 808, !16, i64 816, !22, i64 824, !33, i64 832, !6, i64 840, !35, i64 848, !6, i64 856, !6, i64 860}
!37 = !{!36, !16, i64 32}
!38 = !{!36, !6, i64 24}
!39 = !{!"p1 _ZTS14AVCodecContext", !16, i64 0}
!40 = !{!"GetByteContext", !23, i64 0, !23, i64 8, !23, i64 16}
!41 = !{!"p1 _ZTS7AVFrame", !16, i64 0}
!42 = !{!"p1 _ZTS16ProgressInternal", !16, i64 0}
!43 = !{!"ProgressFrame", !41, i64 0, !42, i64 8}
!44 = !{!"p1 _ZTS12AVDictionary", !16, i64 0}
!45 = !{!"p1 _ZTS14internal_state", !16, i64 0}
!46 = !{!"z_stream_s", !23, i64 0, !6, i64 8, !22, i64 16, !23, i64 24, !6, i64 32, !22, i64 40, !23, i64 48, !45, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !6, i64 88, !22, i64 96, !22, i64 104}
!47 = !{!"FFZStream", !46, i64 0, !6, i64 112}
!48 = !{!"PNGDecContext", !17, i64 0, !39, i64 16, !40, i64 24, !43, i64 48, !43, i64 64, !44, i64 80, !5, i64 88, !23, i64 176, !22, i64 184, !6, i64 192, !6, i64 196, !5, i64 200, !5, i64 208, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !5, i64 272, !5, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !5, i64 328, !5, i64 329, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !5, i64 368, !6, i64 376, !5, i64 380, !23, i64 1408, !23, i64 1416, !6, i64 1424, !23, i64 1432, !6, i64 1440, !23, i64 1448, !6, i64 1456, !6, i64 1460, !6, i64 1464, !6, i64 1468, !6, i64 1472, !6, i64 1476, !47, i64 1480, !30, i64 1600}
!49 = !{!48, !6, i64 348}
!50 = !{!48, !6, i64 364}
!51 = !{!48, !6, i64 296}
!52 = !{!48, !5, i64 328}
!53 = !{!48, !39, i64 16}
!54 = !{!48, !22, i64 184}
!55 = !{!48, !6, i64 192}
!56 = !{!48, !6, i64 196}
!57 = !{!48, !6, i64 236}
!58 = !{!48, !6, i64 240}
!59 = !{!40, !23, i64 0}
!60 = !{!40, !23, i64 16}
!61 = !{!40, !23, i64 8}
!62 = !{!48, !6, i64 1476}
!63 = !{!48, !6, i64 300}
!64 = !{!"AVPacket", !30, i64 0, !22, i64 8, !22, i64 16, !23, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !32, i64 48, !6, i64 56, !22, i64 64, !22, i64 72, !16, i64 80, !30, i64 88, !24, i64 96}
!65 = !{!64, !23, i64 24}
!66 = !{!64, !6, i64 32}
!67 = !{!"AVStereo3D", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !24, i64 20, !24, i64 28}
!68 = !{!67, !6, i64 0}
!69 = !{!67, !6, i64 4}
!70 = !{!48, !44, i64 80}
!71 = !{!"p2 omnipotent char", !34, i64 0}
!72 = !{!"p2 _ZTS11AVBufferRef", !34, i64 0}
!73 = !{!"AVFrame", !5, i64 0, !5, i64 64, !71, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !24, i64 124, !22, i64 136, !22, i64 144, !24, i64 152, !6, i64 160, !16, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !72, i64 248, !6, i64 256, !35, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !22, i64 304, !44, i64 312, !6, i64 320, !30, i64 328, !30, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368, !16, i64 376, !27, i64 384, !22, i64 408, !6, i64 416}
!74 = !{!73, !44, i64 312}
!75 = !{!36, !6, i64 664}
!76 = !{!41, !41, i64 0}
!77 = !{!42, !42, i64 0}
!78 = !{i64 0, i64 8, !76, i64 8, i64 8, !77}
!79 = !{!48, !6, i64 1424}
!80 = !{!48, !6, i64 1440}
!81 = !{!23, !23, i64 0}
!82 = !{!36, !6, i64 704}
!83 = !{!48, !23, i64 1408}
!84 = !{!48, !6, i64 312}
!85 = !{!48, !6, i64 304}
!86 = !{!48, !6, i64 316}
!87 = !{!48, !6, i64 308}
!88 = !{!48, !6, i64 336}
!89 = !{!48, !41, i64 48}
!90 = !{!36, !6, i64 136}
!91 = !{!48, !6, i64 320}
!92 = !{!48, !6, i64 324}
!93 = !{!48, !5, i64 329}
!94 = !{!48, !6, i64 360}
!95 = !{!46, !6, i64 8}
!96 = !{!46, !23, i64 0}
!97 = !{!46, !6, i64 32}
!98 = !{!46, !23, i64 24}
!99 = !{!"AVBPrint", !23, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 21}
!100 = !{!99, !6, i64 8}
!101 = !{!48, !30, i64 1600}
!102 = !{!"p1 _ZTS8AVBuffer", !16, i64 0}
!103 = !{!"AVBufferRef", !102, i64 0, !23, i64 8, !22, i64 16}
!104 = !{!103, !23, i64 8}
!105 = !{!103, !22, i64 16}
!106 = !{!73, !6, i64 104}
!107 = !{!73, !6, i64 108}
!108 = !{!73, !6, i64 116}
!109 = !{!99, !23, i64 0}
!110 = distinct !{!110, !10, !11, !12}
!111 = distinct !{!111, !10, !11, !12}
!112 = distinct !{!112, !14}
!113 = distinct !{!113, !10, !11, !12}
!114 = distinct !{!114, !10, !11, !12}
!115 = distinct !{!115, !10, !11, !12}
!116 = distinct !{!116, !10, !11, !12}
!117 = distinct !{!117, !14}
!118 = distinct !{!118, !10, !11}
!119 = distinct !{!119, !10}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !10}
!122 = distinct !{!122, !10}
!123 = distinct !{!123, !10}
!124 = distinct !{!124, !10, !11, !12}
!125 = distinct !{!125, !10, !11, !12}
!126 = distinct !{!126, !10, !11}
!127 = distinct !{!127, !10, !11}
!128 = distinct !{!128, !10}
!129 = distinct !{!129, !10}
!130 = distinct !{!130, !10}
!131 = distinct !{!131, !10}
!132 = distinct !{!132, !10, !11, !12}
!133 = distinct !{!133, !10, !11, !12}
!134 = distinct !{!134, !10, !11}
!135 = distinct !{!135, !10, !11}
!136 = !{!"branch_weights", i32 8, i32 24}
!137 = !{!17, !16, i64 0}
!138 = !{!17, !16, i64 8}
!139 = !{!36, !6, i64 80}
!140 = !{!36, !23, i64 72}
!141 = !{!48, !6, i64 1456}
!142 = distinct !{!142, !10}
!143 = distinct !{!143, !10}
!144 = distinct !{!144, !10}
!145 = distinct !{!145, !10}
!146 = distinct !{!146, !10}
!147 = distinct !{!147, !10}
!148 = distinct !{!148, !10}
!149 = distinct !{!149, !10, !11, !12}
!150 = distinct !{!150, !10}
!151 = distinct !{!151, !10, !12, !11}
!152 = distinct !{!152, !10}
!153 = distinct !{!153, !10}
!154 = distinct !{!154, !10}
!155 = distinct !{!155, !10, !11, !12}
!156 = distinct !{!156, !10, !12, !11}
!157 = distinct !{!157, !10}
!158 = distinct !{!158, !10}
!159 = distinct !{!159, !10}
!160 = distinct !{!160, !10}
!161 = distinct !{!161, !10}
!162 = distinct !{!162, !10}
!163 = distinct !{!163, !10}
!164 = distinct !{!164, !10}
!165 = distinct !{!165, !10, !231}
!166 = distinct !{!166, !10}
!167 = distinct !{!167, !10}
!168 = distinct !{!168, !10}
!169 = distinct !{!169, !10}
!170 = distinct !{!170, !10}
!171 = distinct !{!171, !10}
!172 = !{!36, !6, i64 516}
end_hunk_1

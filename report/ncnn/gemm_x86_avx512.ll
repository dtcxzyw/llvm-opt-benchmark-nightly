Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  %.sroa.12.32.vec.extract = extractelement <4 x float> %.52536, i64 0
  %i.eza = getelementptr inbounds nuw i8, ptr %.343203896, i64 4
  store float %.sroa.12.32.vec.extract, ptr %i.eza, align 4, !tbaa !69
  %i.ezb = getelementptr inbounds nuw [4 x i8], ptr %.343203896, i64 %i.k
  %i.ezc = shufflevector <4 x float> %.52548, <4 x float> %.52536, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ezc, ptr %i.ezb, align 4, !tbaa !69
  %i.ezd = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3675
  %i.eze = shufflevector <4 x float> %.52548, <4 x float> %.52536, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.eze, ptr %i.ezd, align 4, !tbaa !69
  %i.ezf = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3676
  %i.ezg = shufflevector <4 x float> %.52548, <4 x float> %.52536, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ezg, ptr %i.ezf, align 4, !tbaa !69
  %.sroa.757.16.vec.extract = extractelement <4 x float> %.52542, i64 0
  %i.ezh = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx4501 ; 2 uses
  store float %.sroa.757.16.vec.extract, ptr %i.ezh, align 4, !tbaa !69
  %.sroa.17.48.vec.extract = extractelement <4 x float> %.52530, i64 0
  %i.ezi = getelementptr inbounds nuw i8, ptr %i.ezh, i64 4
  store float %.sroa.17.48.vec.extract, ptr %i.ezi, align 4, !tbaa !69
  %i.ezj = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3678
  %i.ezk = shufflevector <4 x float> %.52542, <4 x float> %.52530, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ezk, ptr %i.ezj, align 4, !tbaa !69
  %i.ezl = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3679
  %i.ezm = shufflevector <4 x float> %.52542, <4 x float> %.52530, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ezm, ptr %i.ezl, align 4, !tbaa !69
  %i.ezn = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3680
  %i.ezo = shufflevector <4 x float> %.52542, <4 x float> %.52530, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ezo, ptr %i.ezn, align 4, !tbaa !69
  br label %bb.nf

bb.ne:                                            ; preds = %bb.mz
  store <4 x float> %.52548, ptr %.343203896, align 1, !tbaa !90
  %i.ezp = getelementptr inbounds nuw i8, ptr %.343203896, i64 16
  store <4 x float> %.52542, ptr %i.ezp, align 1, !tbaa !90
  %i.ezq = getelementptr inbounds nuw [4 x i8], ptr %.343203896, i64 %i.k ; 2 uses
  store <4 x float> %.52536, ptr %i.ezq, align 1, !tbaa !90
  %i.ezr = getelementptr inbounds nuw i8, ptr %i.ezq, i64 16
  store <4 x float> %.52530, ptr %i.ezr, align 1, !tbaa !90
  br label %bb.nf

bb.nf:                                            ; preds = %bb.nd, %bb.na, %bb.nb, %bb.nc, %bb.ne
  %.sink4183 = phi i64 [ 32, %bb.ne ], [ %.idx4500, %bb.nc ], [ %.idx4500, %bb.nb ], [ %.idx4500, %bb.na ], [ %.idx4500, %bb.nd ]
  %i.ezs = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.sink4183 ; 2 uses
  %i.ezt = getelementptr inbounds nuw i8, ptr %.2042333898, i64 64 ; 2 uses
  %i.ezu = add nuw nsw i32 %.142973897, 8         ; 3 uses
  %i.ezv = or disjoint i32 %i.ezu, 7
  %i.ezw = icmp slt i32 %i.ezv, %6
  br i1 %i.ezw, label %.lr.ph3900, label %.preheader3689, !llvm.loop !934

.preheader3688:                                   ; preds = %bb.nq, %.preheader3689
  %.54322.lcssa = phi ptr [ %.34320.lcssa, %.preheader3689 ], [ %i.fbk, %bb.nq ] ; 2 uses
  %.24298.lcssa = phi i32 [ %.14297.lcssa, %.preheader3689 ], [ %i.fbm, %bb.nq ] ; 3 uses
  %.214234.lcssa = phi ptr [ %.204233.lcssa, %.preheader3689 ], [ %i.fbl, %bb.nq ] ; 2 uses
  %.82.lcssa = phi ptr [ %.79.lcssa, %.preheader3689 ], [ %.84, %bb.nq ] ; 2 uses
  %i.ezx = or disjoint i32 %.24298.lcssa, 1
  %i.ezy = icmp slt i32 %i.ezx, %6
  br i1 %i.ezy, label %.lr.ph3922.preheader, label %.preheader3687

.lr.ph3922.preheader:                             ; preds = %.preheader3688
  %i.ezz = shufflevector <2 x float> %i.ett, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph3922

.lr.ph3913:                                       ; preds = %.preheader3689, %bb.nq
  %.823912 = phi ptr [ %.84, %bb.nq ], [ %.79.lcssa, %.preheader3689 ] ; 9 uses
  %.2142343911 = phi ptr [ %i.fbl, %bb.nq ], [ %.204233.lcssa, %.preheader3689 ] ; 3 uses
  %.242983910 = phi i32 [ %i.fbm, %bb.nq ], [ %.14297.lcssa, %.preheader3689 ]
  %.543223909 = phi ptr [ %i.fbk, %bb.nq ], [ %.34320.lcssa, %.preheader3689 ] ; 10 uses
  %.525543908 = phi <4 x float> [ %.72556, %bb.nq ], [ %.22551.lcssa, %.preheader3689 ] ; 6 uses
  %.625633907 = phi <4 x float> [ %.82565, %bb.nq ], [ %.32560.lcssa, %.preheader3689 ] ; 7 uses
  %i.faa = load <4 x i32>, ptr %.2142343911, align 16, !tbaa !90
  %i.fab = sitofp fast <4 x i32> %i.faa to <4 x float> ; 2 uses
  %i.fac = getelementptr inbounds nuw i8, ptr %.2142343911, i64 16
  %i.fad = load <4 x i32>, ptr %i.fac, align 16, !tbaa !90
  %i.fae = sitofp fast <4 x i32> %i.fad to <4 x float> ; 2 uses
  %i.faf = shufflevector <4 x float> %i.fab, <4 x float> %i.fae, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.fag = shufflevector <4 x float> %i.fab, <4 x float> %i.fae, <4 x i32> <i32 3, i32 7, i32 1, i32 5>
  %i.fah = shufflevector <4 x float> %i.fag, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.fai = fmul fast <4 x float> %i.ess, %i.faf   ; 7 uses
  %i.faj = fmul fast <4 x float> %i.fah, %i.est   ; 7 uses
  %.not4494 = icmp eq ptr %.823912, null
  br i1 %.not4494, label %.thread3607, label %bb.ng

bb.ng:                                            ; preds = %.lr.ph3913
  br i1 %i.dmu, label %.thread3598, label %bb.nh

.thread3598:                                      ; preds = %bb.ng
  %i.fak = fadd fast <4 x float> %i.fai, %.625633907
  %i.fal = fadd fast <4 x float> %i.faj, %.625633907
  br label %.thread3607

bb.nh:                                            ; preds = %bb.ng
  br i1 %or.cond37, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.fam = fadd fast <4 x float> %i.fai, %.625633907
  %i.fan = fadd fast <4 x float> %i.faj, %.525543908
  br label %.thread3607

bb.nj:                                            ; preds = %bb.nh
  switch i32 %2, label %.thread3607 [
    i32 3, label %bb.nk
    i32 4, label %bb.nl
  ]

bb.nk:                                            ; preds = %bb.nj
  %i.fao = load <4 x float>, ptr %.823912, align 1, !tbaa !90 ; 3 uses
  %i.fap = getelementptr inbounds nuw [4 x i8], ptr %.823912, i64 %i.t
  %i.faq = load <4 x float>, ptr %i.fap, align 1, !tbaa !90 ; 3 uses
  %i.far = fadd fast <4 x float> %i.fao, %i.fai
  %i.fas = fadd fast <4 x float> %i.faq, %i.faj
  %i.fat = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fao, <4 x float> nofpclass(nan inf) %i.dnn, <4 x float> nofpclass(nan inf) %i.fai)
  %i.fau = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.faq, <4 x float> nofpclass(nan inf) %i.dnn, <4 x float> nofpclass(nan inf) %i.faj)
  %.22471 = select nsz i1 %i.dna, <4 x float> %i.far, <4 x float> %i.fat
  %.22465 = select nsz i1 %i.dna, <4 x float> %i.fas, <4 x float> %i.fau
  %i.fav = getelementptr inbounds nuw i8, ptr %.823912, i64 16
  br label %.thread3607

bb.nl:                                            ; preds = %bb.nj
  %i.faw = load <4 x float>, ptr %.823912, align 1, !tbaa !90
  %i.fax = fmul fast <4 x float> %i.faw, %i.dnn   ; 3 uses
  %i.fay = fadd fast <4 x float> %i.fax, %i.fai
  %i.faz = fadd fast <4 x float> %i.fax, %i.faj
  %i.fba = getelementptr inbounds nuw i8, ptr %.823912, i64 16
  br label %.thread3607

.thread3607:                                      ; preds = %bb.nj, %bb.ni, %.thread3598, %bb.nk, %bb.nl, %.lr.ph3913
  %.82565 = phi nsz <4 x float> [ %.625633907, %.lr.ph3913 ], [ %i.fax, %bb.nl ], [ %.625633907, %bb.nj ], [ %i.fao, %bb.nk ], [ %.625633907, %.thread3598 ], [ %.625633907, %bb.ni ]
  %.72556 = phi nsz <4 x float> [ %.525543908, %.lr.ph3913 ], [ %.525543908, %bb.nl ], [ %.525543908, %bb.nj ], [ %i.faq, %bb.nk ], [ %.525543908, %.thread3598 ], [ %.525543908, %bb.ni ]
  %.42473 = phi nsz <4 x float> [ %i.fai, %.lr.ph3913 ], [ %i.fay, %bb.nl ], [ %i.fai, %bb.nj ], [ %.22471, %bb.nk ], [ %i.fak, %.thread3598 ], [ %i.fam, %bb.ni ]
  %.42467 = phi nsz <4 x float> [ %i.faj, %.lr.ph3913 ], [ %i.faz, %bb.nl ], [ %i.faj, %bb.nj ], [ %.22465, %bb.nk ], [ %i.fal, %.thread3598 ], [ %i.fan, %bb.ni ]
  %.84 = phi ptr [ null, %.lr.ph3913 ], [ %i.fba, %bb.nl ], [ %.823912, %bb.nj ], [ %i.fav, %bb.nk ], [ %.823912, %.thread3598 ], [ %.823912, %bb.ni ] ; 2 uses
  %.52474 = fmul reassoc nsz arcp contract afn <4 x float> %.42473, %i.dnu ; 6 uses
  %.52468 = fmul reassoc nsz arcp contract afn <4 x float> %.42467, %i.dnu ; 6 uses
  br i1 %.not4489, label %bb.np, label %bb.nm

bb.nm:                                            ; preds = %.thread3607
  switch i32 %i.b, label %bb.nq [
    i32 4, label %bb.nn
    i32 1, label %bb.no
  ]

bb.nn:                                            ; preds = %bb.nm
  store <4 x float> %.52474, ptr %.543223909, align 16, !tbaa !90
  %i.fbb = getelementptr inbounds nuw i8, ptr %.543223909, i64 16
  store <4 x float> %.52468, ptr %i.fbb, align 16, !tbaa !90
  br label %bb.nq

bb.no:                                            ; preds = %bb.nm
  %.sroa.029.0.vec.extract = extractelement <4 x float> %.52474, i64 0
  store float %.sroa.029.0.vec.extract, ptr %.543223909, align 4, !tbaa !69
  %.sroa.730.16.vec.extract = extractelement <4 x float> %.52468, i64 0
  %i.fbc = getelementptr inbounds nuw i8, ptr %.543223909, i64 4
  store float %.sroa.730.16.vec.extract, ptr %i.fbc, align 4, !tbaa !69
  %i.fbd = getelementptr inbounds nuw [4 x i8], ptr %.543223909, i64 %i.k
  %i.fbe = shufflevector <4 x float> %.52474, <4 x float> %.52468, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.fbe, ptr %i.fbd, align 4, !tbaa !69
  %i.fbf = getelementptr inbounds nuw i8, ptr %.543223909, i64 %.idx3675
  %i.fbg = shufflevector <4 x float> %.52474, <4 x float> %.52468, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.fbg, ptr %i.fbf, align 4, !tbaa !69
  %i.fbh = getelementptr inbounds nuw i8, ptr %.543223909, i64 %.idx3676
  %i.fbi = shufflevector <4 x float> %.52474, <4 x float> %.52468, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.fbi, ptr %i.fbh, align 4, !tbaa !69
  br label %bb.nq

bb.np:                                            ; preds = %.thread3607
  store <4 x float> %.52474, ptr %.543223909, align 1, !tbaa !90
  %i.fbj = getelementptr inbounds nuw [4 x i8], ptr %.543223909, i64 %i.k
  store <4 x float> %.52468, ptr %i.fbj, align 1, !tbaa !90
  br label %bb.nq

bb.nq:                                            ; preds = %bb.no, %bb.nm, %bb.nn, %bb.np
  %.sink4184 = phi i64 [ 16, %bb.np ], [ %.idx4501, %bb.nn ], [ %.idx4501, %bb.nm ], [ %.idx4501, %bb.no ]
  %i.fbk = getelementptr inbounds nuw i8, ptr %.543223909, i64 %.sink4184 ; 2 uses
  %i.fbl = getelementptr inbounds nuw i8, ptr %.2142343911, i64 32 ; 2 uses
  %i.fbm = add nuw nsw i32 %.242983910, 4         ; 3 uses
  %i.fbn = or disjoint i32 %i.fbm, 3
  %i.fbo = icmp slt i32 %i.fbn, %6
  br i1 %i.fbo, label %.lr.ph3913, label %.preheader3688, !llvm.loop !935

.preheader3687:                                   ; preds = %.thread3626, %.preheader3688
  %.74324.lcssa = phi ptr [ %.54322.lcssa, %.preheader3688 ], [ %i.fcy, %.thread3626 ]
  %.34299.lcssa = phi i32 [ %.24298.lcssa, %.preheader3688 ], [ %i.fda, %.thread3626 ] ; 2 uses
  %.224235.lcssa = phi ptr [ %.214234.lcssa, %.preheader3688 ], [ %i.fcz, %.thread3626 ] ; 2 uses
  %.85.lcssa = phi ptr [ %.82.lcssa, %.preheader3688 ], [ %.87, %.thread3626 ] ; 2 uses
  %i.fbp = icmp slt i32 %.34299.lcssa, %6
  br i1 %i.fbp, label %.lr.ph3931, label %._crit_edge3932

.lr.ph3931:                                       ; preds = %.preheader3687
  %i.fbq = select ninf nsz i1 %i.dmu, float %.24316, float 0.000000e+00
  %i.fbr = select <2 x i1> %i.dnw, <2 x float> %i.ett, <2 x float> zeroinitializer
  %i.fbs = insertelement <2 x float> poison, float %i.fbq, i64 0
  %i.fbt = shufflevector <2 x float> %i.fbs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fbu = fadd reassoc nsz arcp contract afn <2 x float> %i.fbt, %i.fbr
  br label %bb.nx

.lr.ph3922:                                       ; preds = %.lr.ph3922.preheader, %.thread3626
  %.853921 = phi ptr [ %.87, %.thread3626 ], [ %.82.lcssa, %.lr.ph3922.preheader ] ; 9 uses
  %.2242353920 = phi ptr [ %i.fcz, %.thread3626 ], [ %.214234.lcssa, %.lr.ph3922.preheader ] ; 2 uses
  %.342993919 = phi i32 [ %i.fda, %.thread3626 ], [ %.24298.lcssa, %.lr.ph3922.preheader ]
  %.743243918 = phi ptr [ %i.fcy, %.thread3626 ], [ %.54322.lcssa, %.lr.ph3922.preheader ] ; 4 uses
  %i.fbv = load <4 x i32>, ptr %.2242353920, align 4, !tbaa !51
  %i.fbw = sitofp <4 x i32> %i.fbv to <4 x float>
  %i.fbx = fmul fast <4 x float> %i.esr, %i.fbw   ; 6 uses
  %.not4492 = icmp eq ptr %.853921, null
  br i1 %.not4492, label %.thread3626, label %bb.nr

bb.nr:                                            ; preds = %.lr.ph3922
  br i1 %i.dmu, label %.thread3613, label %bb.ns

.thread3613:                                      ; preds = %bb.nr
  %i.fby = fadd fast <4 x float> %i.fbx, %i.ezz
  br label %.thread3626

bb.ns:                                            ; preds = %bb.nr
  br i1 %or.cond37, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns
  %i.fbz = fadd fast <4 x float> %i.fbx, %i.etu
  br label %.thread3626

bb.nu:                                            ; preds = %bb.ns
  switch i32 %2, label %.thread3626 [
    i32 3, label %bb.nv
    i32 4, label %bb.nw
  ]

bb.nv:                                            ; preds = %bb.nu
  %i.fca = getelementptr inbounds nuw [4 x i8], ptr %.853921, i64 %i.t
  %i.fcb = load <2 x float>, ptr %.853921, align 4, !tbaa !69
  %i.fcc = load <2 x float>, ptr %i.fca, align 4, !tbaa !69
  %i.fcd = shufflevector <2 x float> %i.fcb, <2 x float> %i.fcc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fce = fmul fast <4 x float> %i.fcd, %i.dnn
  %i.fcf = fadd fast <4 x float> %i.fce, %i.fbx
  %i.fcg = getelementptr inbounds nuw i8, ptr %.853921, i64 8
  br label %.thread3626

bb.nw:                                            ; preds = %bb.nu
  %i.fch = load <2 x float>, ptr %.853921, align 4, !tbaa !69
  %i.fci = fmul fast <2 x float> %i.fch, %i.dny
  %i.fcj = shufflevector <2 x float> %i.fci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fck = fadd fast <4 x float> %i.fcj, %i.fbx
  %i.fcl = getelementptr inbounds nuw i8, ptr %.853921, i64 8
  br label %.thread3626

.thread3626:                                      ; preds = %bb.nu, %bb.nt, %.thread3613, %bb.nv, %bb.nw, %.lr.ph3922
  %.87 = phi ptr [ %i.fcl, %bb.nw ], [ %.853921, %bb.nu ], [ null, %.lr.ph3922 ], [ %i.fcg, %bb.nv ], [ %.853921, %.thread3613 ], [ %.853921, %bb.nt ] ; 2 uses
  %i.fcm = phi <4 x float> [ %i.fck, %bb.nw ], [ %i.fbx, %bb.nu ], [ %i.fbx, %.lr.ph3922 ], [ %i.fcf, %bb.nv ], [ %i.fby, %.thread3613 ], [ %i.fbz, %bb.nt ] ; 4 uses
  %i.fcn = extractelement <4 x float> %i.fcm, i64 0
  %i.fco = fmul fast float %i.fcn, %8
  %i.fcp = extractelement <4 x float> %i.fcm, i64 1
  %i.fcq = fmul fast float %i.fcp, %8             ; 2 uses
  %i.fcr = extractelement <4 x float> %i.fcm, i64 2
  %i.fcs = fmul fast float %i.fcr, %8             ; 2 uses
  %i.fct = extractelement <4 x float> %i.fcm, i64 3
  %i.fcu = fmul fast float %i.fct, %8
  store float %i.fco, ptr %.743243918, align 4, !tbaa !69
  %i.fcv = getelementptr inbounds nuw i8, ptr %.743243918, i64 4
  %i.fcw = getelementptr inbounds nuw [4 x i8], ptr %.743243918, i64 %i.k ; 2 uses
  %i.fcx = getelementptr i8, ptr %i.fcw, i64 4
  %. = select i1 %.not4489, float %i.fcq, float %i.fcs
  %.4192 = select i1 %.not4489, float %i.fcs, float %i.fcq
  store float %., ptr %i.fcv, align 4, !tbaa !69
  store float %.4192, ptr %i.fcw, align 4, !tbaa !69
  store float %i.fcu, ptr %i.fcx, align 4, !tbaa !69
  %i.fcy = getelementptr inbounds nuw i8, ptr %.743243918, i64 %..idx3675 ; 2 uses
  %i.fcz = getelementptr inbounds nuw i8, ptr %.2242353920, i64 16 ; 2 uses
  %i.fda = add nuw nsw i32 %.342993919, 2         ; 3 uses
  %i.fdb = or disjoint i32 %i.fda, 1
  %i.fdc = icmp slt i32 %i.fdb, %6
  br i1 %i.fdc, label %.lr.ph3922, label %.preheader3687, !llvm.loop !936

bb.nx:                                            ; preds = %.lr.ph3931, %bb.od
  %.883930 = phi ptr [ %.85.lcssa, %.lr.ph3931 ], [ %.90, %bb.od ] ; 7 uses
  %.2342363929 = phi ptr [ %.224235.lcssa, %.lr.ph3931 ], [ %i.fee, %bb.od ] ; 2 uses
  %.443003928 = phi i32 [ %.34299.lcssa, %.lr.ph3931 ], [ %i.fef, %bb.od ]
  %.943263927 = phi ptr [ %.74324.lcssa, %.lr.ph3931 ], [ %.104327, %bb.od ] ; 5 uses
  %i.fdd = load <2 x i32>, ptr %.2342363929, align 4, !tbaa !51
  %i.fde = sitofp <2 x i32> %i.fdd to <2 x float>
  %i.fdf = fmul fast <2 x float> %i.esq, %i.fde   ; 3 uses
  %.not4491 = icmp eq ptr %.883930, null
  br i1 %.not4491, label %bb.oa, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.fdg = fadd reassoc nsz arcp contract afn <2 x float> %i.fdf, %i.fbu ; 2 uses
  switch i32 %2, label %bb.oa [
    i32 3, label %.thread3632
    i32 4, label %bb.nz
  ]

.thread3632:                                      ; preds = %bb.ny
  %i.fdh = load float, ptr %.883930, align 4, !tbaa !69
  %i.fdi = getelementptr inbounds nuw [4 x i8], ptr %.883930, i64 %i.t
  %i.fdj = load float, ptr %i.fdi, align 4, !tbaa !69
  %i.fdk = insertelement <2 x float> poison, float %i.fdh, i64 0
  %i.fdl = insertelement <2 x float> %i.fdk, float %i.fdj, i64 1
  %i.fdm = fmul fast <2 x float> %i.fdl, %i.dny
  %i.fdn = fadd fast <2 x float> %i.fdm, %i.fdf
  %i.fdo = getelementptr inbounds nuw i8, ptr %.883930, i64 4
  br label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.fdp = load float, ptr %.883930, align 4, !tbaa !69
  %i.fdq = fmul fast float %i.fdp, %9
  %i.fdr = insertelement <2 x float> poison, float %i.fdq, i64 0
  %i.fds = shufflevector <2 x float> %i.fdr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fdt = fadd fast <2 x float> %i.fds, %i.fdg
  %i.fdu = getelementptr inbounds nuw i8, ptr %.883930, i64 4
  br label %bb.oa

bb.oa:                                            ; preds = %bb.ny, %.thread3632, %bb.nz, %bb.nx
  %.90 = phi ptr [ %i.fdu, %bb.nz ], [ %.883930, %bb.ny ], [ null, %bb.nx ], [ %i.fdo, %.thread3632 ] ; 2 uses
  %i.fdv = phi <2 x float> [ %i.fdt, %bb.nz ], [ %i.fdg, %bb.ny ], [ %i.fdf, %bb.nx ], [ %i.fdn, %.thread3632 ] ; 2 uses
  %i.fdw = extractelement <2 x float> %i.fdv, i64 0
  %i.fdx = fmul fast float %i.fdw, %8
  %i.fdy = extractelement <2 x float> %i.fdv, i64 1
  %i.fdz = fmul fast float %i.fdy, %8             ; 2 uses
  store float %i.fdx, ptr %.943263927, align 4, !tbaa !69
  br i1 %.not4489, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.fea = getelementptr inbounds nuw i8, ptr %.943263927, i64 4
  store float %i.fdz, ptr %i.fea, align 4, !tbaa !69
  %i.feb = getelementptr inbounds nuw [4 x i8], ptr %.943263927, i64 %i.k
  br label %bb.od

bb.oc:                                            ; preds = %bb.oa
  %i.fec = getelementptr inbounds nuw [4 x i8], ptr %.943263927, i64 %i.k
  store float %i.fdz, ptr %i.fec, align 4, !tbaa !69
  %i.fed = getelementptr inbounds nuw i8, ptr %.943263927, i64 4
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %.104327 = phi ptr [ %i.feb, %bb.ob ], [ %i.fed, %bb.oc ]
  %i.fee = getelementptr inbounds nuw i8, ptr %.2342363929, i64 8 ; 2 uses
  %i.fef = add nuw nsw i32 %.443003928, 1         ; 2 uses
  %exitcond4054.not = icmp eq i32 %i.fef, %6
  br i1 %exitcond4054.not, label %._crit_edge3932, label %bb.nx, !llvm.loop !937

._crit_edge3932:                                  ; preds = %bb.od, %.preheader3687
  %.234236.lcssa = phi ptr [ %.224235.lcssa, %.preheader3687 ], [ %i.fee, %bb.od ] ; 2 uses
  %.88.lcssa = phi ptr [ %.85.lcssa, %.preheader3687 ], [ %.90, %bb.od ] ; 2 uses
  %indvars.iv.next4056 = add nuw nsw i64 %indvars.iv4055, 2 ; 3 uses
  %i.feg = icmp slt i64 %indvars.iv.next4056, %invariant.op4155
  br i1 %i.feg, label %bb.ls, label %.preheader3686.loopexit, !llvm.loop !938

bb.oe:                                            ; preds = %.lr.ph3995, %._crit_edge3989
  %indvars.iv4059 = phi i64 [ %i.esb, %.lr.ph3995 ], [ %indvars.iv.next4060, %._crit_edge3989 ] ; 4 uses
  %.913994 = phi ptr [ %.72.lcssa, %.lr.ph3995 ], [ %.103.lcssa, %._crit_edge3989 ] ; 4 uses
  %.2442373993 = phi ptr [ %.184231.lcssa, %.lr.ph3995 ], [ %.294242.lcssa, %._crit_edge3989 ] ; 2 uses
  %i.feh = load ptr, ptr %1, align 8, !tbaa !25   ; 2 uses
  br i1 %.not, label %bb.og, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.fei = getelementptr inbounds nuw [4 x i8], ptr %i.feh, i64 %i.erb
  %i.fej = add nsw i64 %indvars.iv4059, %i.ere    ; 2 uses
  %i.fek = mul nsw i64 %i.fej, %i.esc
  %i.fel = getelementptr inbounds [4 x i8], ptr %i.fei, i64 %i.fek
  br label %bb.oh

bb.og:                                            ; preds = %bb.oe
  %i.fem = add nsw i64 %indvars.iv4059, %i.ere    ; 2 uses
  %i.fen = mul i64 %i.k, %i.fem
  %i.feo = getelementptr inbounds nuw [4 x i8], ptr %i.feh, i64 %i.fen
  %i.fep = getelementptr inbounds [4 x i8], ptr %i.feo, i64 %i.era
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  %.pre-phi4063 = phi i64 [ %i.fem, %bb.og ], [ %i.fej, %bb.of ] ; 2 uses
  %.04173 = phi ptr [ %i.fep, %bb.og ], [ %i.fel, %bb.of ] ; 2 uses
  %i.feq = load ptr, ptr %7, align 8, !tbaa !25
  %i.fer = getelementptr inbounds nuw [4 x i8], ptr %i.feq, i64 %.pre-phi4063
  %i.fes = load float, ptr %i.fer, align 4, !tbaa !69 ; 4 uses
  %i.fet = insertelement <4 x float> poison, float %i.fes, i64 0
  %i.feu = shufflevector <4 x float> %i.fet, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.fev = insertelement <16 x float> poison, float %i.fes, i64 0
  %i.few = shufflevector <16 x float> %i.fev, <16 x float> poison, <16 x i32> zeroinitializer
  %.not4467 = icmp eq ptr %.913994, null
  br i1 %.not4467, label %.thread3651, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  br i1 %i.erc, label %.thread3636, label %bb.oj

.thread3636:                                      ; preds = %bb.oi
  %i.fex = load float, ptr %.913994, align 4, !tbaa !69
  %i.fey = fmul fast float %i.fex, %9             ; 3 uses
  %i.fez = insertelement <4 x float> poison, float %i.fey, i64 0
  %i.ffa = shufflevector <4 x float> %i.fez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ffb = insertelement <16 x float> poison, float %i.fey, i64 0
  %i.ffc = shufflevector <16 x float> %i.ffb, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread3651

bb.oj:                                            ; preds = %bb.oi
  br i1 %or.cond49, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.ffd = load ptr, ptr %0, align 8, !tbaa !25
  %i.ffe = getelementptr inbounds [4 x i8], ptr %i.ffd, i64 %i.ere
  %i.fff = getelementptr inbounds nuw [4 x i8], ptr %i.ffe, i64 %indvars.iv4059 ; 2 uses
  %i.ffg = load float, ptr %i.fff, align 4, !tbaa !69
  %i.ffh = fmul fast float %i.ffg, %9             ; 3 uses
  %i.ffi = insertelement <4 x float> poison, float %i.ffh, i64 0
  %i.ffj = shufflevector <4 x float> %i.ffi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ffk = insertelement <16 x float> poison, float %i.ffh, i64 0
  %i.ffl = shufflevector <16 x float> %i.ffk, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread3651

bb.ol:                                            ; preds = %bb.oj
  switch i32 %2, label %.thread3651 [
    i32 3, label %bb.om
    i32 4, label %bb.on
  ]

bb.om:                                            ; preds = %bb.ol
  %i.ffm = load ptr, ptr %0, align 8, !tbaa !25
  %i.ffn = mul i64 %i.t, %.pre-phi4063
  %i.ffo = getelementptr inbounds nuw [4 x i8], ptr %i.ffm, i64 %i.ffn
  %i.ffp = getelementptr inbounds [4 x i8], ptr %i.ffo, i64 %i.era
  br label %.thread3651

bb.on:                                            ; preds = %bb.ol
  %i.ffq = load ptr, ptr %0, align 8, !tbaa !25
  %i.ffr = getelementptr inbounds [4 x i8], ptr %i.ffq, i64 %i.era
  br label %.thread3651

.thread3651:                                      ; preds = %bb.ol, %bb.ok, %.thread3636, %bb.om, %bb.on, %bb.oh
  %.22428 = phi nsz <4 x float> [ zeroinitializer, %bb.oh ], [ zeroinitializer, %bb.on ], [ zeroinitializer, %bb.ol ], [ zeroinitializer, %bb.om ], [ %i.ffa, %.thread3636 ], [ %i.ffj, %bb.ok ] ; 2 uses
  %.94 = phi ptr [ null, %bb.oh ], [ %i.ffr, %bb.on ], [ %.913994, %bb.ol ], [ %i.ffp, %bb.om ], [ %.913994, %.thread3636 ], [ %i.fff, %bb.ok ] ; 2 uses
  %.24172 = phi nsz float [ 0.000000e+00, %bb.oh ], [ 0.000000e+00, %bb.on ], [ 0.000000e+00, %bb.ol ], [ 0.000000e+00, %bb.om ], [ %i.fey, %.thread3636 ], [ %i.ffh, %bb.ok ] ; 2 uses
  %.24167 = phi nsz <16 x float> [ zeroinitializer, %bb.oh ], [ zeroinitializer, %bb.on ], [ zeroinitializer, %bb.ol ], [ zeroinitializer, %bb.om ], [ %i.ffc, %.thread3636 ], [ %i.ffl, %bb.ok ]
  br i1 %i.erf, label %.lr.ph3949, label %.preheader3685

.preheader3685:                                   ; preds = %bb.pa, %.thread3651
  %.254238.lcssa = phi ptr [ %.2442373993, %.thread3651 ], [ %i.fgp, %bb.pa ] ; 2 uses
  %.95.lcssa = phi ptr [ %.94, %.thread3651 ], [ %.96, %bb.pa ] ; 2 uses
  %.14174.lcssa = phi ptr [ %.04173, %.thread3651 ], [ %i.fgo, %bb.pa ] ; 2 uses
  %.04162.lcssa = phi i32 [ 0, %.thread3651 ], [ %i.fgq, %bb.pa ] ; 3 uses
  %i.ffs = or disjoint i32 %.04162.lcssa, 7
  %i.fft = icmp slt i32 %i.ffs, %6
  br i1 %i.fft, label %.lr.ph3959, label %.preheader3684

.lr.ph3949:                                       ; preds = %.thread3651, %bb.pa
  %.041623948 = phi i32 [ %i.fgq, %bb.pa ], [ 0, %.thread3651 ]
  %.341683947 = phi <16 x float> [ %.44169, %bb.pa ], [ %.24167, %.thread3651 ] ; 4 uses
  %.141743945 = phi ptr [ %i.fgo, %bb.pa ], [ %.04173, %.thread3651 ] ; 13 uses
  %.953944 = phi ptr [ %.96, %bb.pa ], [ %.94, %.thread3651 ] ; 5 uses
  %.2542383943 = phi ptr [ %i.fgp, %bb.pa ], [ %.2442373993, %.thread3651 ] ; 2 uses
  %i.ffu = load <16 x i32>, ptr %.2542383943, align 1, !tbaa !90
  %i.ffv = sitofp fast <16 x i32> %i.ffu to <16 x float>
  %i.ffw = fmul fast <16 x float> %i.few, %i.ffv  ; 4 uses
  %.not4483 = icmp eq ptr %.953944, null
  br i1 %.not4483, label %bb.or, label %bb.oo

bb.oo:                                            ; preds = %.lr.ph3949
  br i1 %or.cond53, label %.thread3656, label %bb.op

.thread3656:                                      ; preds = %bb.oo
  %i.ffx = fadd fast <16 x float> %i.ffw, %.341683947
  br label %bb.or

bb.op:                                            ; preds = %bb.oo
  br i1 %or.cond55, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.ffy = load <16 x float>, ptr %.953944, align 1, !tbaa !90 ; 2 uses
  %i.ffz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ffy, <16 x float> nofpclass(nan inf) %i.eri, <16 x float> nofpclass(nan inf) %i.ffw)
  %i.fga = getelementptr inbounds nuw i8, ptr %.953944, i64 64
  br label %bb.or

bb.or:                                            ; preds = %.thread3656, %bb.oq, %bb.op, %.lr.ph3949
  %.96 = phi ptr [ %i.fga, %bb.oq ], [ %.953944, %bb.op ], [ null, %.lr.ph3949 ], [ %.953944, %.thread3656 ] ; 2 uses
  %.44169 = phi nsz <16 x float> [ %i.ffy, %bb.oq ], [ %.341683947, %bb.op ], [ %.341683947, %.lr.ph3949 ], [ %.341683947, %.thread3656 ]
  %.14161 = phi nsz <16 x float> [ %i.ffz, %bb.oq ], [ %i.ffw, %bb.op ], [ %i.ffw, %.lr.ph3949 ], [ %i.ffx, %.thread3656 ]
  %.2 = fmul reassoc nsz arcp contract afn <16 x float> %.14161, %i.erm ; 12 uses
  br i1 %.not, label %bb.oz, label %bb.os

bb.os:                                            ; preds = %bb.or
  br i1 %i.ern, label %bb.ot, label %bb.ou

end_hunk_0
begin_hunk_1_@_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  %i.fhe = load <4 x float>, ptr %.973956, align 1, !tbaa !90 ; 2 uses
  %i.fhf = getelementptr inbounds nuw i8, ptr %.973956, i64 16
  %i.fhg = load <4 x float>, ptr %i.fhf, align 1, !tbaa !90
  %i.fhh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhe, <4 x float> nofpclass(nan inf) %i.erx, <4 x float> nofpclass(nan inf) %i.fgx)
  %i.fhi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhg, <4 x float> nofpclass(nan inf) %i.erx, <4 x float> nofpclass(nan inf) %i.fhb)
  %i.fhj = getelementptr inbounds nuw i8, ptr %.973956, i64 32
  br label %bb.pe

bb.pe:                                            ; preds = %.thread3661, %bb.pd, %bb.pc, %.lr.ph3959
  %.42430 = phi nsz <4 x float> [ %.324293954, %.lr.ph3959 ], [ %i.fhe, %bb.pd ], [ %.324293954, %bb.pc ], [ %.324293954, %.thread3661 ] ; 2 uses
  %.12424 = phi nsz <4 x float> [ %i.fgx, %.lr.ph3959 ], [ %i.fhh, %bb.pd ], [ %i.fgx, %bb.pc ], [ %i.fhc, %.thread3661 ]
  %.12421 = phi nsz <4 x float> [ %i.fhb, %.lr.ph3959 ], [ %i.fhi, %bb.pd ], [ %i.fhb, %bb.pc ], [ %i.fhd, %.thread3661 ]
  %.98 = phi ptr [ null, %.lr.ph3959 ], [ %i.fhj, %bb.pd ], [ %.973956, %bb.pc ], [ %.973956, %.thread3661 ] ; 2 uses
  %.22425 = fmul reassoc nsz arcp contract afn <4 x float> %.12424, %i.esa ; 8 uses
  %.22422 = fmul reassoc nsz arcp contract afn <4 x float> %.12421, %i.esa ; 8 uses
  br i1 %.not, label %bb.pl, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  br i1 %i.ern, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  store <4 x float> %.22425, ptr %.341763957, align 1, !tbaa !90
  %i.fhk = getelementptr inbounds nuw i8, ptr %.341763957, i64 16
  store <4 x float> %.22422, ptr %i.fhk, align 1, !tbaa !90
  br label %bb.pm

bb.ph:                                            ; preds = %bb.pf
  switch i32 %i.b, label %bb.pm [
    i32 8, label %bb.pi
    i32 4, label %bb.pj
    i32 1, label %bb.pk
  ]

bb.pi:                                            ; preds = %bb.ph
  store <4 x float> %.22425, ptr %.341763957, align 1, !tbaa !90
  %i.fhl = getelementptr inbounds nuw i8, ptr %.341763957, i64 16
  store <4 x float> %.22422, ptr %i.fhl, align 1, !tbaa !90
  br label %bb.pm

bb.pj:                                            ; preds = %bb.ph
  store <4 x float> %.22425, ptr %.341763957, align 1, !tbaa !90
  %i.fhm = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4485
  store <4 x float> %.22422, ptr %i.fhm, align 1, !tbaa !90
  br label %bb.pm

bb.pk:                                            ; preds = %bb.ph
  %.sroa.04.0.vec.extract = extractelement <4 x float> %.22425, i64 0
  store float %.sroa.04.0.vec.extract, ptr %.341763957, align 4, !tbaa !69
  %.sroa.04.4.vec.extract = extractelement <4 x float> %.22425, i64 1
  %i.fhn = getelementptr inbounds nuw [4 x i8], ptr %.341763957, i64 %i.k
  store float %.sroa.04.4.vec.extract, ptr %i.fhn, align 4, !tbaa !69
  %.sroa.04.8.vec.extract = extractelement <4 x float> %.22425, i64 2
  %i.fho = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4476
  store float %.sroa.04.8.vec.extract, ptr %i.fho, align 4, !tbaa !69
  %.sroa.04.12.vec.extract = extractelement <4 x float> %.22425, i64 3
  %i.fhp = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4477
  store float %.sroa.04.12.vec.extract, ptr %i.fhp, align 4, !tbaa !69
  %.sroa.7.16.vec.extract = extractelement <4 x float> %.22422, i64 0
  %i.fhq = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4485
  store float %.sroa.7.16.vec.extract, ptr %i.fhq, align 4, !tbaa !69
  %.sroa.7.20.vec.extract = extractelement <4 x float> %.22422, i64 1
  %i.fhr = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4479
  store float %.sroa.7.20.vec.extract, ptr %i.fhr, align 4, !tbaa !69
  %.sroa.7.24.vec.extract = extractelement <4 x float> %.22422, i64 2
  %i.fhs = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4480
  store float %.sroa.7.24.vec.extract, ptr %i.fhs, align 4, !tbaa !69
  %.sroa.7.28.vec.extract = extractelement <4 x float> %.22422, i64 3
  %i.fht = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4481
  store float %.sroa.7.28.vec.extract, ptr %i.fht, align 4, !tbaa !69
  br label %bb.pm

bb.pl:                                            ; preds = %bb.pe
  store <4 x float> %.22425, ptr %.341763957, align 1, !tbaa !90
  %i.fhu = getelementptr inbounds nuw i8, ptr %.341763957, i64 16
  store <4 x float> %.22422, ptr %i.fhu, align 1, !tbaa !90
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pg, %bb.pk, %bb.ph, %bb.pi, %bb.pj, %bb.pl
  %.sink4189 = phi i64 [ 32, %bb.pl ], [ %.idx4484, %bb.pj ], [ %.idx4484, %bb.pi ], [ %.idx4484, %bb.ph ], [ %.idx4484, %bb.pk ], [ %.idx4484, %bb.pg ]
  %i.fhv = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.sink4189 ; 2 uses
  %i.fhw = getelementptr inbounds nuw i8, ptr %.2642393955, i64 32 ; 2 uses
  %i.fhx = add nuw nsw i32 %.141633958, 8         ; 3 uses
  %i.fhy = or disjoint i32 %i.fhx, 7
  %i.fhz = icmp slt i32 %i.fhy, %6
  br i1 %i.fhz, label %.lr.ph3959, label %.preheader3684, !llvm.loop !940

.preheader3683:                                   ; preds = %bb.px, %.preheader3684
  %.274240.lcssa = phi ptr [ %.264239.lcssa, %.preheader3684 ], [ %i.fit, %bb.px ] ; 2 uses
  %.99.lcssa = phi ptr [ %.97.lcssa, %.preheader3684 ], [ %.100, %bb.px ] ; 2 uses
  %.5.lcssa = phi ptr [ %.34176.lcssa, %.preheader3684 ], [ %i.fis, %bb.px ] ; 2 uses
  %.24164.lcssa = phi i32 [ %.14163.lcssa, %.preheader3684 ], [ %i.fiu, %bb.px ] ; 3 uses
  %i.fia = or disjoint i32 %.24164.lcssa, 1
  %i.fib = icmp slt i32 %i.fia, %6
  br i1 %i.fib, label %.lr.ph3979, label %.preheader

.lr.ph3979:                                       ; preds = %.preheader3683
  %i.fic = select ninf nsz i1 %or.cond53, float %.24172, float 0.000000e+00
  %i.fid = insertelement <2 x float> poison, float %i.fes, i64 0
  %i.fie = shufflevector <2 x float> %i.fid, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fif = insertelement <2 x float> poison, float %i.fic, i64 0
  %i.fig = shufflevector <2 x float> %i.fif, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.py

.lr.ph3970:                                       ; preds = %.preheader3684, %bb.px
  %.241643969 = phi i32 [ %i.fiu, %bb.px ], [ %.14163.lcssa, %.preheader3684 ]
  %.53968 = phi ptr [ %i.fis, %bb.px ], [ %.34176.lcssa, %.preheader3684 ] ; 8 uses
  %.993967 = phi ptr [ %.100, %bb.px ], [ %.97.lcssa, %.preheader3684 ] ; 5 uses
  %.2742403966 = phi ptr [ %i.fit, %bb.px ], [ %.264239.lcssa, %.preheader3684 ] ; 2 uses
  %.524313965 = phi <4 x float> [ %.62432, %bb.px ], [ %.32429.lcssa, %.preheader3684 ] ; 4 uses
  %i.fih = load <4 x i32>, ptr %.2742403966, align 1, !tbaa !90
  %i.fii = sitofp fast <4 x i32> %i.fih to <4 x float>
  %i.fij = fmul fast <4 x float> %i.feu, %i.fii   ; 4 uses
  %.not4470 = icmp eq ptr %.993967, null
  br i1 %.not4470, label %bb.pq, label %bb.pn

bb.pn:                                            ; preds = %.lr.ph3970
  br i1 %or.cond53, label %.thread3665, label %bb.po

.thread3665:                                      ; preds = %bb.pn
  %i.fik = fadd fast <4 x float> %i.fij, %.524313965
  br label %bb.pq

bb.po:                                            ; preds = %bb.pn
  br i1 %or.cond55, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  %i.fil = load <4 x float>, ptr %.993967, align 1, !tbaa !90 ; 2 uses
  %i.fim = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fil, <4 x float> nofpclass(nan inf) %i.erx, <4 x float> nofpclass(nan inf) %i.fij)
  %i.fin = getelementptr inbounds nuw i8, ptr %.993967, i64 16
  br label %bb.pq

bb.pq:                                            ; preds = %.thread3665, %bb.pp, %bb.po, %.lr.ph3970
  %.62432 = phi nsz <4 x float> [ %.524313965, %.lr.ph3970 ], [ %i.fil, %bb.pp ], [ %.524313965, %bb.po ], [ %.524313965, %.thread3665 ]
  %.12369 = phi nsz <4 x float> [ %i.fij, %.lr.ph3970 ], [ %i.fim, %bb.pp ], [ %i.fij, %bb.po ], [ %i.fik, %.thread3665 ]
  %.100 = phi ptr [ null, %.lr.ph3970 ], [ %i.fin, %bb.pp ], [ %.993967, %bb.po ], [ %.993967, %.thread3665 ] ; 2 uses
  %i.fio = fmul fast <4 x float> %.12369, %i.erz  ; 7 uses
  br i1 %.not, label %bb.pw, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  br i1 %i.ern, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  store <4 x float> %i.fio, ptr %.53968, align 1, !tbaa !90
  br label %bb.px

bb.pt:                                            ; preds = %bb.pr
  switch i32 %i.b, label %bb.px [
    i32 4, label %bb.pu
    i32 1, label %bb.pv
  ]

bb.pu:                                            ; preds = %bb.pt
  store <4 x float> %i.fio, ptr %.53968, align 1, !tbaa !90
  br label %bb.px

bb.pv:                                            ; preds = %bb.pt
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.fio, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.53968, align 4, !tbaa !69
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.fio, i64 1
  %i.fip = getelementptr inbounds nuw [4 x i8], ptr %.53968, i64 %i.k
  store float %.sroa.0.4.vec.extract, ptr %i.fip, align 4, !tbaa !69
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.fio, i64 2
  %i.fiq = getelementptr inbounds nuw i8, ptr %.53968, i64 %.idx4476
  store float %.sroa.0.8.vec.extract, ptr %i.fiq, align 4, !tbaa !69
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.fio, i64 3
  %i.fir = getelementptr inbounds nuw i8, ptr %.53968, i64 %.idx4477
  store float %.sroa.0.12.vec.extract, ptr %i.fir, align 4, !tbaa !69
  br label %bb.px

bb.pw:                                            ; preds = %bb.pq
  store <4 x float> %i.fio, ptr %.53968, align 1, !tbaa !90
  br label %bb.px

bb.px:                                            ; preds = %bb.ps, %bb.pv, %bb.pt, %bb.pu, %bb.pw
  %.sink4190 = phi i64 [ 16, %bb.pw ], [ %.idx4485, %bb.pu ], [ %.idx4485, %bb.pt ], [ %.idx4485, %bb.pv ], [ %.idx4485, %bb.ps ]
  %i.fis = getelementptr inbounds nuw i8, ptr %.53968, i64 %.sink4190 ; 2 uses
  %i.fit = getelementptr inbounds nuw i8, ptr %.2742403966, i64 16 ; 2 uses
  %i.fiu = add nuw nsw i32 %.241643969, 4         ; 3 uses
  %i.fiv = or disjoint i32 %i.fiu, 3
  %i.fiw = icmp slt i32 %i.fiv, %6
  br i1 %i.fiw, label %.lr.ph3970, label %.preheader3683, !llvm.loop !941

.preheader:                                       ; preds = %bb.qe, %.preheader3683
  %.284241.lcssa = phi ptr [ %.274240.lcssa, %.preheader3683 ], [ %i.fjp, %bb.qe ] ; 2 uses
  %.101.lcssa = phi ptr [ %.99.lcssa, %.preheader3683 ], [ %.102, %bb.qe ] ; 2 uses
  %.7.lcssa = phi ptr [ %.5.lcssa, %.preheader3683 ], [ %i.fjo, %bb.qe ]
  %.3.lcssa = phi i32 [ %.24164.lcssa, %.preheader3683 ], [ %i.fjq, %bb.qe ] ; 2 uses
  %i.fix = icmp slt i32 %.3.lcssa, %6
  br i1 %i.fix, label %.lr.ph3988, label %._crit_edge3989

.lr.ph3988:                                       ; preds = %.preheader
  %i.fiy = select ninf nsz i1 %or.cond53, float %.24172, float 0.000000e+00
  br label %bb.qf

bb.py:                                            ; preds = %.lr.ph3979, %bb.qe
  %.33978 = phi i32 [ %.24164.lcssa, %.lr.ph3979 ], [ %i.fjq, %bb.qe ]
  %.73977 = phi ptr [ %.5.lcssa, %.lr.ph3979 ], [ %i.fjo, %bb.qe ] ; 4 uses
  %.1013976 = phi ptr [ %.99.lcssa, %.lr.ph3979 ], [ %.102, %bb.qe ] ; 4 uses
  %.2842413975 = phi ptr [ %.274240.lcssa, %.lr.ph3979 ], [ %i.fjp, %bb.qe ] ; 2 uses
  %i.fiz = load <2 x i32>, ptr %.2842413975, align 4, !tbaa !51
  %i.fja = sitofp <2 x i32> %i.fiz to <2 x float>
  %i.fjb = fmul fast <2 x float> %i.fie, %i.fja   ; 3 uses
  %.not4469 = icmp eq ptr %.1013976, null
  br i1 %.not4469, label %bb.qb, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.fjc = fadd fast <2 x float> %i.fjb, %i.fig
  br i1 %or.cond55, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz
  %i.fjd = load <2 x float>, ptr %.1013976, align 4, !tbaa !69
  %i.fje = fmul fast <2 x float> %i.fjd, %i.ese
  %i.fjf = fadd fast <2 x float> %i.fje, %i.fjb
  %i.fjg = getelementptr inbounds nuw i8, ptr %.1013976, i64 8
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz, %bb.py
  %.102 = phi ptr [ %i.fjg, %bb.qa ], [ %.1013976, %bb.pz ], [ null, %bb.py ] ; 2 uses
  %i.fjh = phi <2 x float> [ %i.fjf, %bb.qa ], [ %i.fjc, %bb.pz ], [ %i.fjb, %bb.py ] ; 2 uses
  %i.fji = extractelement <2 x float> %i.fjh, i64 0
  %i.fjj = fmul fast float %i.fji, %8
  %i.fjk = extractelement <2 x float> %i.fjh, i64 1
  %i.fjl = fmul fast float %i.fjk, %8             ; 2 uses
  store float %i.fjj, ptr %.73977, align 4, !tbaa !69
  br i1 %.not, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.fjm = getelementptr inbounds nuw [4 x i8], ptr %.73977, i64 %i.k
  store float %i.fjl, ptr %i.fjm, align 4, !tbaa !69
  br label %bb.qe

bb.qd:                                            ; preds = %bb.qb
  %i.fjn = getelementptr inbounds nuw i8, ptr %.73977, i64 4
  store float %i.fjl, ptr %i.fjn, align 4, !tbaa !69
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc
  %.sink4191 = phi i64 [ 8, %bb.qd ], [ %.idx4476, %bb.qc ]
  %i.fjo = getelementptr inbounds nuw i8, ptr %.73977, i64 %.sink4191 ; 2 uses
  %i.fjp = getelementptr inbounds nuw i8, ptr %.2842413975, i64 8 ; 2 uses
  %i.fjq = add nuw nsw i32 %.33978, 2             ; 3 uses
  %i.fjr = or disjoint i32 %i.fjq, 1
  %i.fjs = icmp slt i32 %i.fjr, %6
  br i1 %i.fjs, label %bb.py, label %.preheader, !llvm.loop !942

bb.qf:                                            ; preds = %.lr.ph3988, %bb.qi
  %.43987 = phi i32 [ %.3.lcssa, %.lr.ph3988 ], [ %i.fke, %bb.qi ]
  %.93986 = phi ptr [ %.7.lcssa, %.lr.ph3988 ], [ %.10, %bb.qi ] ; 3 uses
  %.1033985 = phi ptr [ %.101.lcssa, %.lr.ph3988 ], [ %.104, %bb.qi ] ; 4 uses
  %.2942423984 = phi ptr [ %.284241.lcssa, %.lr.ph3988 ], [ %i.fkd, %bb.qi ] ; 2 uses
  %i.fjt = load i32, ptr %.2942423984, align 4, !tbaa !51
  %i.fju = sitofp fast i32 %i.fjt to float
  %i.fjv = fmul fast float %i.fes, %i.fju         ; 3 uses
  %.not4468 = icmp eq ptr %.1033985, null
  br i1 %.not4468, label %bb.qi, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %spec.select = fadd fast float %i.fjv, %i.fiy
  br i1 %or.cond55, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  %i.fjw = load float, ptr %.1033985, align 4, !tbaa !69
  %i.fjx = fmul fast float %i.fjw, %9
  %i.fjy = fadd fast float %i.fjx, %i.fjv
  %i.fjz = getelementptr inbounds nuw i8, ptr %.1033985, i64 4
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qg, %bb.qf
  %.104 = phi ptr [ %i.fjz, %bb.qh ], [ %.1033985, %bb.qg ], [ null, %bb.qf ] ; 2 uses
  %.1 = phi nsz float [ %i.fjy, %bb.qh ], [ %spec.select, %bb.qg ], [ %i.fjv, %bb.qf ]
  %i.fka = fmul fast float %.1, %8
  store float %i.fka, ptr %.93986, align 4, !tbaa !69
  %i.fkb = getelementptr inbounds nuw [4 x i8], ptr %.93986, i64 %i.k
  %i.fkc = getelementptr inbounds nuw i8, ptr %.93986, i64 4
  %.10 = select i1 %.not, ptr %i.fkc, ptr %i.fkb
  %i.fkd = getelementptr inbounds nuw i8, ptr %.2942423984, i64 4 ; 2 uses
  %i.fke = add nuw nsw i32 %.43987, 1             ; 2 uses
  %exitcond4058.not = icmp eq i32 %i.fke, %6
  br i1 %exitcond4058.not, label %._crit_edge3989, label %bb.qf, !llvm.loop !943

._crit_edge3989:                                  ; preds = %bb.qi, %.preheader
  %.294242.lcssa = phi ptr [ %.284241.lcssa, %.preheader ], [ %i.fkd, %bb.qi ]
  %.103.lcssa = phi ptr [ %.101.lcssa, %.preheader ], [ %.104, %bb.qi ]
  %indvars.iv.next4060 = add nsw i64 %indvars.iv4059, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next4060 to i32
  %exitcond4062.not = icmp eq i32 %4, %lftr.wideiv
  br i1 %exitcond4062.not, label %._crit_edge3996, label %bb.oe, !llvm.loop !944

._crit_edge3996:                                  ; preds = %._crit_edge3989, %.preheader3686
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #16

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatter.dps.512(ptr, <16 x i1>, <16 x i32>, <16 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #16

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv8.sf(ptr, <8 x i1>, <8 x i32>, <8 x float>, i32 immarg) #9

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv4.sf(ptr, <4 x i1>, <4 x i32>, <4 x float>, i32 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL20compute_B_int8_scaleERKNS_3MatERf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %i.c = icmp eq i32 %i.b, 3                      ; 5 uses
  %.in.v.i = select i1 %i.c, i64 56, i64 48
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.d = load i32, ptr %.in.i, align 8, !tbaa !51 ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph106.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit

.lr.ph106.i:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !25     ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 5 uses
  %i.o = mul nsw i32 %i.m, %i.g                   ; 22 uses
  %i.p = icmp sgt i32 %i.o, 15
  br i1 %i.p, label %.lr.ph106.split.us.preheader.i, label %.lr.ph106.split.i

.lr.ph106.split.us.preheader.i:                   ; preds = %.lr.ph106.i
  %i.q = and i32 %i.o, 2147483632                 ; 3 uses
  %wide.trip.count276.i = zext nneg i32 %i.d to i64
  %..i = select i1 %i.c, i64 %i.j, i64 %i.h
  %factor.op.mul297.i = mul i64 %..i, %i.n
  %i.r = or disjoint i32 %i.q, 7
  %i.s = icmp samesign ult i32 %i.r, %i.o
  %i.t = add nsw i32 %i.o, -16                    ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = add nuw nsw i32 %i.u, 1                  ; 2 uses
  %xtraiter248 = and i32 %i.v, 3                  ; 3 uses
  %i.w = icmp ult i32 %i.t, 48
  %unroll_iter254 = and i32 %i.v, 536870908
  %lcmp.mod250.not = icmp eq i32 %xtraiter248, 0
  %lcmp.mod253 = icmp ne i32 %xtraiter248, 0
  br label %.lr.ph106.split.us.i

.lr.ph106.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph106.split.us.preheader.i
  %indvars.iv273.i = phi i64 [ 0, %.lr.ph106.split.us.preheader.i ], [ %indvars.iv.next274.i, %._crit_edge.us.i ] ; 2 uses
  %.066103.us.i = phi float [ 0.000000e+00, %.lr.ph106.split.us.preheader.i ], [ %.167.lcssa.us.i, %._crit_edge.us.i ] ; 4 uses
  %.068102.us.i = phi <16 x float> [ zeroinitializer, %.lr.ph106.split.us.preheader.i ], [ %.lcssa209, %._crit_edge.us.i ] ; 2 uses
  %.070101.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph106.split.us.preheader.i ], [ %.171.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %.072100.us.i = phi <4 x float> [ zeroinitializer, %.lr.ph106.split.us.preheader.i ], [ %.173.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %.reass298.i = mul i64 %factor.op.mul297.i, %indvars.iv273.i
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass298.i ; 2 uses
  br i1 %i.w, label %.epil.preheader, label %.lr.ph106.split.us.i.new

.lr.ph106.split.us.i.new:                         ; preds = %.lr.ph106.split.us.i, %.lr.ph106.split.us.i.new
  %.03477.us.i = phi ptr [ %i.ar, %.lr.ph106.split.us.i.new ], [ %i.x, %.lr.ph106.split.us.i ] ; 5 uses
  %.16976.us.i = phi <16 x float> [ %i.aq, %.lr.ph106.split.us.i.new ], [ %.068102.us.i, %.lr.ph106.split.us.i ]
  %niter255 = phi i32 [ %niter255.next.3, %.lr.ph106.split.us.i.new ], [ 0, %.lr.ph106.split.us.i ]
  %i.y = load <16 x i32>, ptr %.03477.us.i, align 1, !tbaa !90
  %i.z = and <16 x i32> %i.y, splat (i32 2147483647)
  %i.aa = bitcast <16 x i32> %i.z to <16 x float>
  %i.ab = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.16976.us.i, <16 x float> nofpclass(nan inf) %i.aa, i32 4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 64
  %i.ad = load <16 x i32>, ptr %i.ac, align 1, !tbaa !90
  %i.ae = and <16 x i32> %i.ad, splat (i32 2147483647)
  %i.af = bitcast <16 x i32> %i.ae to <16 x float>
  %i.ag = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ab, <16 x float> nofpclass(nan inf) %i.af, i32 4)
  %i.ah = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 128
  %i.ai = load <16 x i32>, ptr %i.ah, align 1, !tbaa !90
  %i.aj = and <16 x i32> %i.ai, splat (i32 2147483647)
  %i.ak = bitcast <16 x i32> %i.aj to <16 x float>
  %i.al = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.ak, i32 4)
  %i.am = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 192
  %i.an = load <16 x i32>, ptr %i.am, align 1, !tbaa !90
  %i.ao = and <16 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <16 x i32> %i.ao to <16 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.ap, i32 4) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 256 ; 3 uses
  %niter255.next.3 = add i32 %niter255, 4         ; 2 uses
  %niter255.ncmp.3.not = icmp eq i32 %niter255.next.3, %unroll_iter254
  br i1 %niter255.ncmp.3.not, label %..preheader75_crit_edge.us.i.unr-lcssa, label %.lr.ph106.split.us.i.new, !llvm.loop !945

.lr.ph84.us.i:                                    ; preds = %..preheader75_crit_edge.us.i, %.lr.ph84.us.i
  %.183.us.i = phi i32 [ %i.ax, %.lr.ph84.us.i ], [ %i.q, %..preheader75_crit_edge.us.i ]
  %.13582.us.i = phi ptr [ %i.aw, %.lr.ph84.us.i ], [ %.lcssa, %..preheader75_crit_edge.us.i ] ; 2 uses
  %.17181.us.i = phi <8 x float> [ %i.av, %.lr.ph84.us.i ], [ %.070101.us.i, %..preheader75_crit_edge.us.i ]
  %i.as = load <8 x i32>, ptr %.13582.us.i, align 1, !tbaa !90
  %i.at = and <8 x i32> %i.as, splat (i32 2147483647)
  %i.au = bitcast <8 x i32> %i.at to <8 x float>
  %i.av = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.17181.us.i, <8 x float> nofpclass(nan inf) %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13582.us.i, i64 32 ; 2 uses
  %i.ax = add nuw nsw i32 %.183.us.i, 8           ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 7
  %i.az = icmp slt i32 %i.ay, %i.o
  br i1 %i.az, label %.lr.ph84.us.i, label %.preheader74.us.i, !llvm.loop !946
end_hunk_1

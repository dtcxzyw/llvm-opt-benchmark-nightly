Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_avx2?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjb:bb.a
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split, %bb.eg
  %.promoted11241140.us = phi i32 [ %.promoted11241141.us, %bb.eg ], [ %.sink1300, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.lcssa11051126.us = phi i32 [ %.lcssa11051127.us, %bb.eg ], [ %.sink1300, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.lcssa11041111.us = phi ptr [ %.lcssa11041112.us, %bb.eg ], [ %.lcssa11041111.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.1.i6.i908.us = phi i32 [ 0, %bb.eg ], [ %.1.i6.i908.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ] ; 9 uses
  %i.bvd = lshr i32 %.1.i6.i908.us, 24
  %i.bve = and i32 %.1.i6.i908.us, 2130706432
  %i.bvf = icmp eq i32 %i.bve, 2130706432
  %i.bvg = select i1 %i.bue, i1 %i.bvf, i1 false
  %i.bvh = select i1 %i.bvg, i32 7, i32 8         ; 2 uses
  %i.bvi = icmp ugt i32 %.1.i6.i908.us, -1879048193
  %i.bvj = lshr i32 %.1.i6.i908.us, 16
  %i.bvk = and i32 %i.bvj, 255                    ; 2 uses
  %i.bvl = shl nuw nsw i32 %i.bvk, %i.bvh
  %i.bvm = or i32 %i.bvl, %i.bvd
  %i.bvn = and i32 %.1.i6.i908.us, 8323072
  %i.bvo = icmp eq i32 %i.bvn, 8323072
  %i.bvp = and i1 %i.bvi, %i.bvo
  %i.bvq = select i1 %i.bvp, i32 7, i32 8
  %i.bvr = add nuw nsw i32 %i.bvh, %i.bvq         ; 2 uses
  %i.bvs = icmp samesign ugt i32 %i.bvk, 143
  %i.bvt = lshr i32 %.1.i6.i908.us, 8
  %i.bvu = and i32 %i.bvt, 255                    ; 2 uses
  %i.bvv = shl nuw nsw i32 %i.bvu, %i.bvr
  %i.bvw = or i32 %i.bvm, %i.bvv
  %i.bvx = and i32 %.1.i6.i908.us, 32512
  %i.bvy = icmp eq i32 %i.bvx, 32512
  %i.bvz = select i1 %i.bvs, i1 %i.bvy, i1 false
  %i.bwa = select i1 %i.bvz, i32 7, i32 8
  %i.bwb = add nuw nsw i32 %i.bvr, %i.bwa         ; 2 uses
  %i.bwc = icmp samesign ugt i32 %i.bvu, 143
  %i.bwd = and i32 %.1.i6.i908.us, 255            ; 2 uses
  %i.bwe = shl nuw i32 %i.bwd, %i.bwb
  %i.bwf = or i32 %i.bvw, %i.bwe
  %i.bwg = and i32 %.1.i6.i908.us, 127
  %i.bwh = icmp eq i32 %i.bwg, 127
  %i.bwi = select i1 %i.bwc, i1 %i.bwh, i1 false
  %i.bwj = select i1 %i.bwi, i32 7, i32 8
  %i.bwk = icmp samesign ugt i32 %i.bwd, 143
  %i.bwl = zext i1 %i.bwk to i8                   ; 3 uses
  %i.bwm = zext i32 %i.bwf to i64
  %i.bwn = zext nneg i32 %i.bul to i64
  %i.bwo = shl nuw nsw i64 %i.bwm, %i.bwn
  %i.bwp = or i64 %i.bwo, %i.buj
  %i.bwq = add nuw nsw i32 %i.bwj, %i.bul
  %i.bwr = add nuw nsw i32 %i.bwq, %i.bwb
  store i8 %i.bwl, ptr %i.bro, align 8, !tbaa !29
  br label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us: ; preds = %bb.eb, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us
  %.promoted11291150.us = phi i8 [ %i.bwl, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.buf, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.promoted11291151.us, %bb.eb ] ; 2 uses
  %.promoted11241139.us = phi i32 [ %.promoted11241140.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.promoted11241141.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.promoted11241142.us, %bb.eb ] ; 2 uses
  %i.bws = phi i8 [ %i.bwl, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.buf, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %i.bsd, %bb.eb ]
  %.lcssa11051125.us = phi i32 [ %.lcssa11051126.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.lcssa11051127.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.lcssa11051128.us, %bb.eb ]
  %i.bwt = phi i32 [ %i.bwr, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bul, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %i.bse, %bb.eb ]
  %.lcssa11041110.us = phi ptr [ %.lcssa11041111.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.lcssa11041112.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.lcssa110411131114.us, %bb.eb ] ; 3 uses
  %i.bwu = phi i64 [ %i.bwp, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.buj, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.pre.i9061123.us, %bb.eb ] ; 2 uses
  %i.bwv = getelementptr inbounds nuw i8, ptr %.07181115.us, i64 2
  %i.bww = load i16, ptr %.07181115.us, align 2, !tbaa !21 ; 2 uses
  %.not844.us = icmp eq i16 %i.bww, 0
  br i1 %.not844.us, label %.loopexit.us, label %.loopexit.us.loopexit

.loopexit.us.loopexit:                            ; preds = %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us
  %i.bwx = insertelement <8 x i16> poison, i16 %i.bww, i64 0
  %i.bwy = bitcast <8 x i16> %i.bwx to <16 x i8>
  %i.bwz = shufflevector <16 x i8> %i.bwy, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bxa = and <16 x i8> %i.bwz, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %i.bxb = icmp ne <16 x i8> %i.bxa, zeroinitializer
  %.neg.us = zext <16 x i1> %i.bxb to <16 x i8>   ; 6 uses
  %i.bxc = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %.neg.us, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.bxd = add nuw nsw <16 x i8> %i.bxc, %.neg.us ; 2 uses
  %i.bxe = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.bxd, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bxf = add nuw nsw <16 x i8> %i.bxe, %i.bxd   ; 2 uses
  %i.bxg = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bxf, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bxh = add nuw nsw <16 x i8> %i.bxg, %i.bxf   ; 2 uses
  %i.bxi = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bxh, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bxj = add <16 x i8> %i.bxi, %i.bxh           ; 5 uses
  %i.bxk = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.bxj, <16 x i32> <i32 15, i32 poison, i32 poison, i32 poison, i32 19, i32 poison, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 poison, i32 27, i32 poison, i32 poison, i32 poison>
  %i.bxl = trunc i64 %i.bwu to i16
  %i.bxm = insertelement <8 x i16> poison, i16 %i.bxl, i64 0
  %i.bxn = bitcast <8 x i16> %i.bxm to <16 x i8>
  %i.bxo = shufflevector <16 x i8> %i.bxn, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bxp = and <16 x i8> %i.bxo, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %.not943.us = icmp eq <16 x i8> %i.bxp, zeroinitializer
  %i.bxq = select <16 x i1> %.not943.us, <16 x i8> splat (i8 3), <16 x i8> splat (i8 1) ; 4 uses
  %i.bxr = load <2 x i64>, ptr %.07171116.us, align 16, !tbaa !10
  %i.bxs = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %.not944.us = icmp eq <16 x i8> %i.bxs, zeroinitializer
  %i.bxt = shufflevector <16 x i8> %i.bxk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bxu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bxq, <16 x i8> %i.bxt)
  %i.bxv = select <16 x i1> %.not944.us, <16 x i8> zeroinitializer, <16 x i8> %i.bxu
  %i.bxw = bitcast <16 x i8> %i.bxv to <4 x i32>
  %i.bxx = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bxw, i32 range(i32 -17, 32) %i.brq)
  %i.bxy = bitcast <4 x i32> %i.bxx to <2 x i64>
  %i.bxz = xor <2 x i64> %i.bxr, %i.bxy
  store <2 x i64> %i.bxz, ptr %.07171116.us, align 16, !tbaa !10
  %i.bya = getelementptr inbounds nuw [4 x i8], ptr %.07171116.us, i64 %i.brr ; 3 uses
  %i.byb = load <2 x i64>, ptr %i.bya, align 16, !tbaa !10
  %i.byc = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %.not944.us.1 = icmp eq <16 x i8> %i.byc, zeroinitializer
  %i.byd = shufflevector <16 x i8> %i.bxj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bye = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bxq, <16 x i8> %i.byd)
  %i.byf = select <16 x i1> %.not944.us.1, <16 x i8> zeroinitializer, <16 x i8> %i.bye
  %i.byg = bitcast <16 x i8> %i.byf to <4 x i32>
  %i.byh = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.byg, i32 range(i32 -17, 32) %i.brq)
  %i.byi = bitcast <4 x i32> %i.byh to <2 x i64>
  %i.byj = xor <2 x i64> %i.byb, %i.byi
  store <2 x i64> %i.byj, ptr %i.bya, align 16, !tbaa !10
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.bya, i64 %i.brr ; 3 uses
  %i.byl = load <2 x i64>, ptr %i.byk, align 16, !tbaa !10
  %i.bym = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %.not944.us.2 = icmp eq <16 x i8> %i.bym, zeroinitializer
  %i.byn = shufflevector <16 x i8> %i.bxj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.byo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bxq, <16 x i8> %i.byn)
  %i.byp = select <16 x i1> %.not944.us.2, <16 x i8> zeroinitializer, <16 x i8> %i.byo
  %i.byq = bitcast <16 x i8> %i.byp to <4 x i32>
  %i.byr = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.byq, i32 range(i32 -17, 32) %i.brq)
  %i.bys = bitcast <4 x i32> %i.byr to <2 x i64>
  %i.byt = xor <2 x i64> %i.byl, %i.bys
  store <2 x i64> %i.byt, ptr %i.byk, align 16, !tbaa !10
  %i.byu = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %i.brr ; 2 uses
  %i.byv = load <2 x i64>, ptr %i.byu, align 16, !tbaa !10
  %i.byw = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %.not944.us.3 = icmp eq <16 x i8> %i.byw, zeroinitializer
  %i.byx = shufflevector <16 x i8> %i.bxj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.byy = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bxq, <16 x i8> %i.byx)
  %i.byz = select <16 x i1> %.not944.us.3, <16 x i8> zeroinitializer, <16 x i8> %i.byy
  %i.bza = bitcast <16 x i8> %i.byz to <4 x i32>
  %i.bzb = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bza, i32 range(i32 -17, 32) %i.brq)
  %i.bzc = bitcast <4 x i32> %i.bzb to <2 x i64>
  %i.bzd = xor <2 x i64> %i.byv, %i.bzc
  store <2 x i64> %i.bzd, ptr %i.byu, align 16, !tbaa !10
  %i.bze = bitcast <16 x i8> %i.bxj to <8 x i16>
  %i.bzf = extractelement <8 x i16> %i.bze, i64 7
  %i.bzg = lshr i16 %i.bzf, 8
  %i.bzh = zext nneg i16 %i.bzg to i32
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us
  %.0715.us = phi i32 [ 0, %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us ], [ %i.bzh, %.loopexit.us.loopexit ] ; 2 uses
  %i.bzi = zext nneg i32 %.0715.us to i64
  %i.bzj = lshr i64 %i.bwu, %i.bzi                ; 3 uses
  store i64 %i.bzj, ptr %i.brp, align 8, !tbaa !30
  %i.bzk = sub i32 %i.bwt, %.0715.us              ; 3 uses
  store i32 %i.bzk, ptr %i.brm, align 8, !tbaa !19
  %i.bzl = add nuw i32 %.07161117.us, 4           ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %.07171116.us, i64 16
  %i.bzn = icmp ult i32 %i.bzl, %6
  br i1 %i.bzn, label %bb.eb, label %._crit_edge1120.us, !llvm.loop !58

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us: ; preds = %.preheader.i7.i.us
  %scevgep1217 = getelementptr i8, ptr %.lcssa11041112.us, i64 -1
  %i.bzo = add nsw i32 %.lcssa11051127.us, -1
  %i.bzp = zext nneg i32 %i.bzo to i64
  %i.bzq = sub nsw i64 0, %i.bzp
  %scevgep1218 = getelementptr i8, ptr %scevgep1217, i64 %i.bzq
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us: ; preds = %.preheader.i.i909.us
  %scevgep1215 = getelementptr i8, ptr %.lcssa110411131114.us, i64 -1
  %i.bzr = add nsw i32 %.lcssa11051128.us, -1
  %i.bzs = zext nneg i32 %i.bzr to i64
  %i.bzt = sub nsw i64 0, %i.bzs
  %scevgep1216 = getelementptr i8, ptr %scevgep1215, i64 %i.bzt
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split

._crit_edge1120.us:                               ; preds = %.loopexit.us
  store ptr %.lcssa11041110.us, ptr %15, align 8
  %indvars.iv.next1220 = add nuw nsw i64 %indvars.iv1219, 4 ; 2 uses
  %i.bzu = icmp samesign ult i64 %indvars.iv.next1220, %i.brs
  br i1 %i.bzu, label %.lr.ph1119.us, label %._crit_edge1136, !llvm.loop !59

._crit_edge1136:                                  ; preds = %._crit_edge1120.us, %.lr.ph1135, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %bb.ei

bb.ei:                                            ; preds = %.thread933, %.critedge860.thread928, %bb.cd, %._crit_edge1136, %._crit_edge1101
  %.18 = phi i1 [ false, %.thread933 ], [ false, %.critedge860.thread928 ], [ true, %._crit_edge1101 ], [ true, %._crit_edge1136 ], [ true, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ej

bb.ej:                                            ; preds = %bb.n, %bb.o, %bb.p, %bb.ei, %bb.h, %bb.i, %bb.e, %bb.f, %bb.c
  %.21 = phi i1 [ false, %bb.c ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.n ], [ %.18, %bb.ei ], [ false, %bb.p ], [ false, %bb.o ]
  ret i1 %.21
}

declare noundef ptr @_ZN4ojph11get_warningEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 25), (28, 36), (40, 48)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 2, 4080) %3) unnamed_addr #4 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = zext nneg i32 %3 to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i8 0, ptr %i.h, align 8, !tbaa !63
  %i.i = add nsw i32 %3, -1                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.k, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !18
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3                          ; 3 uses
  %i.q = load i8, ptr %i.e, align 1, !tbaa !10
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp eq i32 %i.i, 1
  %i.t = or i64 %i.r, 15
  %spec.select = select i1 %i.s, i64 %i.t, i64 %i.r ; 4 uses
  %i.u = add nsw i32 %3, -2                       ; 2 uses
  store i32 %i.u, ptr %i.j, align 4, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !60
  store i64 %spec.select, ptr %i.g, align 8, !tbaa !62
  store i32 8, ptr %i.f, align 8, !tbaa !61
  %i.w = icmp eq i64 %spec.select, 255            ; 2 uses
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %i.h, align 8, !tbaa !63
  %exitcond.not = icmp eq i32 %i.p, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.a
  %.lcssa40 = phi i64 [ %spec.select, %bb.a ], [ %i.am, %bb.e ], [ %i.bb, %bb.h ], [ %i.bq, %bb.k ]
  %.lcssa = phi i32 [ 8, %bb.a ], [ %i.an, %bb.e ], [ %i.bc, %bb.h ], [ %i.br, %bb.k ]
  %i.y = sub nsw i32 64, %.lcssa
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl i64 %.lcssa40, %i.z
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !62
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ab = icmp samesign ugt i32 %3, 2             ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !10
  %i.ad = zext i8 %i.ac to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i64 [ %i.ad, %bb.d ], [ 255, %bb.c ] ; 2 uses
  %i.af = icmp eq i32 %i.u, 1
  %i.ag = or i64 %i.ae, 15
  %spec.select.1 = select i1 %i.af, i64 %i.ag, i64 %i.ae ; 2 uses
  %i.ah = add nsw i32 %3, -3                      ; 2 uses
  store i32 %i.ah, ptr %i.j, align 4, !tbaa !64
  %i.ai = zext i1 %i.ab to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ai ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !60
  %narrow.1 = select i1 %i.w, i8 7, i8 8          ; 2 uses
  %i.ak = zext nneg i8 %narrow.1 to i64
  %i.al = shl i64 %spec.select, %i.ak
  %i.am = or i64 %i.al, %spec.select.1            ; 3 uses
  store i64 %i.am, ptr %i.g, align 8, !tbaa !62
  %narrow = add nuw nsw i8 %narrow.1, 8           ; 2 uses
  %i.an = zext nneg i8 %narrow to i32             ; 2 uses
  store i32 %i.an, ptr %i.f, align 8, !tbaa !61
  %i.ao = icmp eq i64 %spec.select.1, 255         ; 2 uses
  %i.ap = zext i1 %i.ao to i8
  store i8 %i.ap, ptr %i.h, align 8, !tbaa !63
  %exitcond.not.1 = icmp eq i32 %i.p, 2
  br i1 %exitcond.not.1, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp samesign ugt i32 %3, 3             ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.as = zext i8 %i.ar to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = phi i64 [ %i.as, %bb.g ], [ 255, %bb.f ] ; 2 uses
  %i.au = icmp eq i32 %i.ah, 1
  %i.av = or i64 %i.at, 15
  %spec.select.2 = select i1 %i.au, i64 %i.av, i64 %i.at ; 2 uses
  %i.aw = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.aw, ptr %i.j, align 4, !tbaa !64
  %i.ax = zext i1 %i.aq to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ax ; 3 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !60
  %narrow.2 = select i1 %i.ao, i8 7, i8 8         ; 2 uses
  %i.az = zext nneg i8 %narrow.2 to i64
  %i.ba = shl i64 %i.am, %i.az
  %i.bb = or i64 %i.ba, %spec.select.2            ; 3 uses
  store i64 %i.bb, ptr %i.g, align 8, !tbaa !62
  %narrow41 = add nuw nsw i8 %narrow, %narrow.2   ; 2 uses
  %i.bc = zext nneg i8 %narrow41 to i32           ; 2 uses
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !61
  %i.bd = icmp eq i64 %spec.select.2, 255         ; 2 uses
  %i.be = zext i1 %i.bd to i8
  store i8 %i.be, ptr %i.h, align 8, !tbaa !63
  %exitcond.not.2 = icmp eq i32 %i.p, 1
  br i1 %exitcond.not.2, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ugt i32 %3, 4             ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.bh = zext i8 %i.bg to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = phi i64 [ %i.bh, %bb.j ], [ 255, %bb.i ] ; 2 uses
  %i.bj = icmp eq i32 %i.aw, 1
  %i.bk = or i64 %i.bi, 15
  %spec.select.3 = select i1 %i.bj, i64 %i.bk, i64 %i.bi ; 2 uses
  %i.bl = add nsw i32 %3, -5
  store i32 %i.bl, ptr %i.j, align 4, !tbaa !64
  %i.bm = zext i1 %i.bf to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bm
  store ptr %i.bn, ptr %0, align 8, !tbaa !60
  %narrow.3 = select i1 %i.bd, i8 7, i8 8         ; 2 uses
  %i.bo = zext nneg i8 %narrow.3 to i64
  %i.bp = shl i64 %i.bb, %i.bo
  %i.bq = or i64 %i.bp, %spec.select.3            ; 2 uses
  store i64 %i.bq, ptr %i.g, align 8, !tbaa !62
  %narrow42 = add nuw nsw i8 %narrow41, %narrow.3
  %i.br = zext nneg i8 %narrow42 to i32           ; 2 uses
  store i32 %i.br, ptr %i.f, align 8, !tbaa !61
  %i.bs = icmp eq i64 %spec.select.3, 255
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %i.h, align 8, !tbaa !63
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL8rev_initEPNS0_10rev_structEPhii(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 25)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 2, 4080) %3) unnamed_addr #5 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -2
  %i.d = add nsw i32 %3, -2                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !28
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !65
  %i.g = load i8, ptr %i.c, align 1, !tbaa !10    ; 2 uses
  %i.h = lshr i8 %i.g, 4
  %i.i = zext nneg i8 %i.h to i64                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !30
  %i.k = and i64 %i.i, 7
  %i.l = icmp eq i64 %i.k, 7
  %i.m = select i1 %i.l, i32 3, i32 4             ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = icmp ugt i8 %i.g, -113                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = zext i1 %i.o to i8                       ; 2 uses
  store i8 %i.q, ptr %i.p, align 8, !tbaa !29
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.t, 1
  %. = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.d) ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread41, label %.lr.ph

.thread41:                                        ; preds = %bb.a
  %i.v = sub nuw nsw i32 %i.d, %.
  br label %.loopexit.i.sink.split

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa99 = phi ptr [ %i.f, %.lr.ph ], [ %i.cj, %.lr.ph.1 ], [ %i.cw, %.lr.ph.2 ], [ %i.dj, %.lr.ph.3 ] ; 2 uses
  %.lcssa98 = phi ptr [ %i.cj, %.lr.ph ], [ %i.cw, %.lr.ph.1 ], [ %i.dj, %.lr.ph.2 ], [ %i.dw, %.lr.ph.3 ] ; 2 uses
  %.lcssa97 = phi i64 [ %i.cs, %.lr.ph ], [ %i.df, %.lr.ph.1 ], [ %i.ds, %.lr.ph.2 ], [ %i.ef, %.lr.ph.3 ] ; 4 uses
  %.lcssa96 = phi i32 [ %i.ct, %.lr.ph ], [ %i.dg, %.lr.ph.1 ], [ %i.dt, %.lr.ph.2 ], [ %i.eg, %.lr.ph.3 ] ; 5 uses
  %.lcssa95 = phi i8 [ %i.cv, %.lr.ph ], [ %i.di, %.lr.ph.1 ], [ %i.dv, %.lr.ph.2 ], [ %i.ei, %.lr.ph.3 ] ; 4 uses
  %i.w = sub nsw i32 %i.d, %.                     ; 9 uses
  store i32 %i.w, ptr %i.e, align 4, !tbaa !28
  %i.x = icmp ugt i32 %.lcssa96, 32
  br i1 %i.x, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = icmp sgt i32 %i.w, 3
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %.lcssa99, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23
  %i.ab = getelementptr inbounds i8, ptr %.lcssa99, i64 -5
  store ptr %i.ab, ptr %0, align 8, !tbaa !65
  %i.ac = add nsw i32 %i.w, -4
  br label %.loopexit.i.sink.split

bb.d:                                             ; preds = %bb.b
  %i.ad = icmp sgt i32 %i.w, 0
  br i1 %i.ad, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %bb.d
  %i.ae = add nsw i32 %3, -3
  %xtraiter = and i32 %i.w, 1
  %i.af = icmp eq i32 %i.ae, %.
  br i1 %i.af, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i32 %i.w, 2147483646
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %i.ag = phi ptr [ %.lcssa98, %.preheader.i.preheader.new ], [ %i.ap, %.preheader.i ] ; 3 uses
  %.050.i = phi i32 [ 0, %.preheader.i.preheader.new ], [ %i.at, %.preheader.i ]
  %.04649.i = phi i32 [ 24, %.preheader.i.preheader.new ], [ %i.av, %.preheader.i ] ; 3 uses
  %i.ah = phi i32 [ %i.w, %.preheader.i.preheader.new ], [ %i.au, %.preheader.i ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -1 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !65
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl i32 %i.ak, %.04649.i
  %i.am = or i32 %i.al, %.050.i
  %i.an = add nsw i32 %i.ah, -1
  store i32 %i.an, ptr %i.e, align 4, !tbaa !28
  %i.ao = add nsw i32 %.04649.i, -8
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 -2 ; 3 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !65
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl i32 %i.ar, %i.ao
  %i.at = or i32 %i.as, %i.am                     ; 3 uses
  %i.au = add nsw i32 %i.ah, -2                   ; 3 uses
  store i32 %i.au, ptr %i.e, align 4, !tbaa !28
  %i.av = add nsw i32 %.04649.i, -16              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !66

.loopexit.i.sink.split:                           ; preds = %bb.c, %.thread41
  %.sink = phi i32 [ %i.v, %.thread41 ], [ %i.ac, %bb.c ]
  %.ph = phi i64 [ %i.i, %.thread41 ], [ %.lcssa97, %bb.c ]
  %.ph46 = phi i8 [ %i.q, %.thread41 ], [ %.lcssa95, %bb.c ]
  %.ph47 = phi i32 [ %i.m, %.thread41 ], [ %.lcssa96, %bb.c ]
  %.1.i.ph = phi i32 [ 0, %.thread41 ], [ %i.aa, %bb.c ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !28
  br label %.loopexit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi ptr [ %.lcssa98, %.preheader.i.preheader ], [ %i.ap, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.050.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %i.at, %.loopexit.i.loopexit.unr-lcssa ]
  %.04649.i.epil.init = phi i32 [ 24, %.preheader.i.preheader ], [ %i.av, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init101 = phi i32 [ %i.w, %.preheader.i.preheader ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod103 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.aw = getelementptr inbounds i8, ptr %.epil.init, i64 -1
  store ptr %i.aw, ptr %0, align 8, !tbaa !65
  %i.ax = load i8, ptr %.epil.init, align 1, !tbaa !10
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl i32 %i.ay, %.04649.i.epil.init
  %i.ba = or i32 %i.az, %.050.i.epil.init
  %i.bb = add nsw i32 %.epil.init101, -1
  store i32 %i.bb, ptr %i.e, align 4, !tbaa !28
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.loopexit.i.sink.split, %bb.d
  %i.bc = phi i64 [ %.ph, %.loopexit.i.sink.split ], [ %.lcssa97, %bb.d ], [ %.lcssa97, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa97, %.preheader.i.epil.preheader ]
  %i.bd = phi i8 [ %.ph46, %.loopexit.i.sink.split ], [ %.lcssa95, %bb.d ], [ %.lcssa95, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa95, %.preheader.i.epil.preheader ]
  %i.be = phi i32 [ %.ph47, %.loopexit.i.sink.split ], [ %.lcssa96, %bb.d ], [ %.lcssa96, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa96, %.preheader.i.epil.preheader ] ; 2 uses
  %.1.i = phi i32 [ %.1.i.ph, %.loopexit.i.sink.split ], [ 0, %bb.d ], [ %i.at, %.loopexit.i.loopexit.unr-lcssa ], [ %i.ba, %.preheader.i.epil.preheader ]
  %i.bf = insertelement <4 x i32> poison, i32 %.1.i, i64 0
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bh = lshr <4 x i32> %i.bg, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.bi = and <4 x i32> %i.bh, splat (i32 255)    ; 2 uses
  %i.bj = icmp samesign ugt <4 x i32> %i.bi, splat (i32 143)
  %i.bk = sext <4 x i1> %i.bj to <4 x i32>        ; 2 uses
  %i.bl = extractelement <4 x i32> %i.bk, i64 3
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i8
  %i.bo = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.bp = zext nneg i8 %i.bd to i32
  %i.bq = sub nsw i32 0, %i.bp
  %i.br = insertelement <4 x i32> %i.bo, i32 %i.bq, i64 0
  %i.bs = and <4 x i32> %i.bh, splat (i32 127)
  %i.bt = icmp eq <4 x i32> %i.bs, splat (i32 127)
  %.neg.i = ashr <4 x i32> %i.br, splat (i32 31)
  %i.bu = add nsw <4 x i32> %.neg.i, splat (i32 8)
  %i.bv = select <4 x i1> %i.bt, <4 x i32> %i.bu, <4 x i32> splat (i32 8) ; 2 uses
  %i.bw = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.bv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bx = add nsw <4 x i32> %i.bv, %i.bw          ; 2 uses
  %i.by = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.bx, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bz = add nsw <4 x i32> %i.bx, %i.by          ; 2 uses
  %i.ca = extractelement <4 x i32> %i.bz, i64 3
  %i.cb = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.bz, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cc = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.bi, <4 x i32> %i.cb)
  %i.cd = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cc)
  %i.ce = zext i32 %i.cd to i64
  store i8 %i.bn, ptr %i.p, align 8, !tbaa !29
  %i.cf = zext nneg i32 %i.be to i64
  %i.cg = shl nuw i64 %i.ce, %i.cf
  %i.ch = or i64 %i.cg, %i.bc
  store i64 %i.ch, ptr %i.j, align 8, !tbaa !30
  %i.ci = add i32 %i.ca, %i.be
  store i32 %i.ci, ptr %i.n, align 8, !tbaa !19
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit: ; preds = %._crit_edge, %.loopexit.i
  ret void

.lr.ph:                                           ; preds = %bb.a
  %i.cj = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 4 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !65
  %i.ck = load i8, ptr %i.f, align 1, !tbaa !10   ; 2 uses
  %i.cl = zext i8 %i.ck to i64                    ; 2 uses
  %i.cm = and i64 %i.cl, 127
  %i.cn = icmp eq i64 %i.cm, 127
  %i.co = select i1 %i.o, i1 %i.cn, i1 false
  %i.cp = select i1 %i.co, i32 7, i32 8
  %i.cq = zext nneg i32 %i.m to i64
  %i.cr = shl nuw nsw i64 %i.cl, %i.cq
  %i.cs = or i64 %i.cr, %i.i                      ; 3 uses
  store i64 %i.cs, ptr %i.j, align 8, !tbaa !30
  %i.ct = add nuw nsw i32 %i.cp, %i.m             ; 4 uses
  store i32 %i.ct, ptr %i.n, align 8, !tbaa !19
  %i.cu = icmp ugt i8 %i.ck, -113                 ; 2 uses
  %i.cv = zext i1 %i.cu to i8                     ; 2 uses
  store i8 %i.cv, ptr %i.p, align 8, !tbaa !29
  %exitcond.not = icmp eq i32 %., 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.cw = getelementptr inbounds i8, ptr %i.b, i64 -5 ; 4 uses
  store ptr %i.cw, ptr %0, align 8, !tbaa !65
  %i.cx = load i8, ptr %i.cj, align 1, !tbaa !10  ; 2 uses
  %i.cy = zext i8 %i.cx to i64                    ; 2 uses
  %i.cz = and i64 %i.cy, 127
  %i.da = icmp eq i64 %i.cz, 127
  %i.db = select i1 %i.cu, i1 %i.da, i1 false
  %i.dc = select i1 %i.db, i32 7, i32 8
  %i.dd = zext nneg i32 %i.ct to i64
  %i.de = shl nuw nsw i64 %i.cy, %i.dd
  %i.df = or i64 %i.de, %i.cs                     ; 3 uses
  store i64 %i.df, ptr %i.j, align 8, !tbaa !30
  %i.dg = add nuw nsw i32 %i.dc, %i.ct            ; 4 uses
  store i32 %i.dg, ptr %i.n, align 8, !tbaa !19
  %i.dh = icmp ugt i8 %i.cx, -113                 ; 2 uses
  %i.di = zext i1 %i.dh to i8                     ; 2 uses
  store i8 %i.di, ptr %i.p, align 8, !tbaa !29
  %exitcond.not.1 = icmp eq i32 %., 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.dj = getelementptr inbounds i8, ptr %i.b, i64 -6 ; 4 uses
  store ptr %i.dj, ptr %0, align 8, !tbaa !65
  %i.dk = load i8, ptr %i.cw, align 1, !tbaa !10  ; 2 uses
  %i.dl = zext i8 %i.dk to i64                    ; 2 uses
  %i.dm = and i64 %i.dl, 127
  %i.dn = icmp eq i64 %i.dm, 127
  %i.do = select i1 %i.dh, i1 %i.dn, i1 false
  %i.dp = select i1 %i.do, i32 7, i32 8
  %i.dq = zext nneg i32 %i.dg to i64
  %i.dr = shl i64 %i.dl, %i.dq
  %i.ds = or i64 %i.dr, %i.df                     ; 3 uses
  store i64 %i.ds, ptr %i.j, align 8, !tbaa !30
  %i.dt = add nuw nsw i32 %i.dp, %i.dg            ; 4 uses
  store i32 %i.dt, ptr %i.n, align 8, !tbaa !19
  %i.du = icmp ugt i8 %i.dk, -113                 ; 2 uses
  %i.dv = zext i1 %i.du to i8                     ; 2 uses
  store i8 %i.dv, ptr %i.p, align 8, !tbaa !29
  %exitcond.not.2 = icmp eq i32 %., 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.dw = getelementptr inbounds i8, ptr %i.b, i64 -7 ; 2 uses
  store ptr %i.dw, ptr %0, align 8, !tbaa !65
  %i.dx = load i8, ptr %i.dj, align 1, !tbaa !10  ; 2 uses
  %i.dy = zext i8 %i.dx to i64                    ; 2 uses
  %i.dz = and i64 %i.dy, 127
  %i.ea = icmp eq i64 %i.dz, 127
  %i.eb = select i1 %i.du, i1 %i.ea, i1 false
  %i.ec = select i1 %i.eb, i32 7, i32 8
  %i.ed = zext nneg i32 %i.dt to i64
  %i.ee = shl i64 %i.dy, %i.ed
  %i.ef = or i64 %i.ee, %i.ds                     ; 2 uses
  store i64 %i.ef, ptr %i.j, align 8, !tbaa !30
  %i.eg = add nuw nsw i32 %i.ec, %i.dt            ; 2 uses
  store i32 %i.eg, ptr %i.n, align 8, !tbaa !19
  %i.eh = icmp ugt i8 %i.dx, -113
  %i.ei = zext i1 %i.eh to i8                     ; 2 uses
  store i8 %i.ei, ptr %i.p, align 8, !tbaa !29
  br label %._crit_edge
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 128) i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 3 uses
  %i.f = icmp slt i32 %i.e, 6
  br i1 %i.f, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !62
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64   ; 9 uses
  %i.i = icmp sgt i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.l, ptr %0, align 8, !tbaa !60
  %i.m = add nsw i32 %i.h, -4
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %i.h, 0
  br i1 %i.n, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.h, 1
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !60 ; 3 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.o = add nsw i32 %i.h, -1                     ; 3 uses
  %xtraiter = and i32 %i.o, 1
  %i.p = icmp eq i32 %i.h, 2
  br i1 %i.p, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.o, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.q = phi ptr [ %.pre.i.i, %.lr.ph.i.i.preheader.new ], [ %i.ac, %.lr.ph.i.i ] ; 3 uses
  %.058.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.aj, %.lr.ph.i.i ]
  %.05357.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.al, %.lr.ph.i.i ] ; 5 uses
  %i.r = phi i32 [ %i.h, %.lr.ph.i.i.preheader.new ], [ %i.ak, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !60
  %i.t = load i8, ptr %i.q, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i32
  %i.v = shl i32 255, %.05357.i.i
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %.058.i.i, %i.w
  %i.y = shl i32 %i.u, %.05357.i.i
  %i.z = or i32 %i.y, %i.x
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.g, align 4, !tbaa !64
  %i.ab = or disjoint i32 %.05357.i.i, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 4 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !60
  %i.ad = load i8, ptr %i.s, align 1, !tbaa !10
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl i32 65280, %.05357.i.i
  %i.ag = xor i32 %i.af, -1
  %i.ah = and i32 %i.z, %i.ag
  %i.ai = shl i32 %i.ae, %i.ab
  %i.aj = or i32 %i.ai, %i.ah                     ; 3 uses
  %i.ak = add nsw i32 %i.r, -2                    ; 3 uses
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !64
  %i.al = add nuw nsw i32 %.05357.i.i, 16         ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !67

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi ptr [ %.pre.i.i, %.lr.ph.i.i.preheader ], [ %i.ac, %._crit_edge.i.loopexit.i.unr-lcssa ] ; 2 uses
  %.058.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.aj, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %.05357.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.al, %._crit_edge.i.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init18 = phi i32 [ %i.h, %.lr.ph.i.i.preheader ], [ %i.ak, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.am = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !60
  %i.an = load i8, ptr %.epil.init, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl i32 255, %.05357.i.i.epil.init
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %.058.i.i.epil.init, %i.aq
  %i.as = shl i32 %i.ao, %.05357.i.i.epil.init
  %i.at = or i32 %i.as, %i.ar
  %i.au = add nsw i32 %.epil.init18, -1
  store i32 %i.au, ptr %i.g, align 4, !tbaa !64
  br label %._crit_edge.i.loopexit.i

._crit_edge.i.loopexit.i:                         ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa16 = phi ptr [ %i.ac, %._crit_edge.i.loopexit.i.unr-lcssa ], [ %i.am, %.lr.ph.i.i.epil.preheader ]
  %.lcssa = phi i32 [ %i.aj, %._crit_edge.i.loopexit.i.unr-lcssa ], [ %i.at, %.lr.ph.i.i.epil.preheader ]
  %i.av = shl nuw nsw i32 %i.h, 3
  %i.aw = add nsw i32 %i.av, -8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %.preheader.i.i
  %i.ax = phi ptr [ %.pre.i.i, %.preheader.i.i ], [ %.lcssa16, %._crit_edge.i.loopexit.i ] ; 2 uses
  %.053.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.aw, %._crit_edge.i.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ -1, %.preheader.i.i ], [ %.lcssa, %._crit_edge.i.loopexit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.ay, ptr %0, align 8, !tbaa !60
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !10
  %i.ba = or i8 %i.az, 15
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw i32 255, %.053.lcssa.i.i
  %i.bd = xor i32 %i.bc, -1
  %i.be = and i32 %.0.lcssa.i.i, %i.bd
  %i.bf = shl nuw i32 %i.bb, %.053.lcssa.i.i
  %i.bg = or i32 %i.bf, %i.be
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i, %bb.d
  %.sink.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %i.m, %bb.d ]
  %.1.ph.i.i = phi i32 [ %i.bg, %._crit_edge.i.i ], [ %i.k, %bb.d ]
  store i32 %.sink.i.i, ptr %i.g, align 4, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i, %bb.e
  %.1.i.i = phi i32 [ -1, %bb.e ], [ %.1.ph.i.i, %.sink.split.i.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !63, !range !68, !noundef !69
  %narrow.i.i = sub nuw nsw i8 32, %i.bi
  %i.bj = zext nneg i8 %narrow.i.i to i32
  %i.bk = and i32 %.1.i.i, 255                    ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 255                  ; 2 uses
  %.neg.i.i = sext i1 %i.bl to i32
  %i.bm = select i1 %i.bl, i32 7, i32 8
  %i.bn = shl nuw nsw i32 %i.bk, %i.bm
  %i.bo = lshr i32 %.1.i.i, 8
  %i.bp = and i32 %i.bo, 255                      ; 2 uses
  %i.bq = or i32 %i.bn, %i.bp
  %i.br = icmp eq i32 %i.bp, 255                  ; 2 uses
  %.neg55.i.i = sext i1 %i.br to i32
  %i.bs = select i1 %i.br, i32 7, i32 8
  %i.bt = shl nuw nsw i32 %i.bq, %i.bs
  %i.bu = lshr i32 %.1.i.i, 16
  %i.bv = and i32 %i.bu, 255                      ; 2 uses
  %i.bw = or i32 %i.bt, %i.bv
  %i.bx = icmp eq i32 %i.bv, 255                  ; 2 uses
  %.neg56.i.i = sext i1 %i.bx to i32
  %i.by = select i1 %i.bx, i32 7, i32 8
  %i.bz = shl nuw i32 %i.bw, %i.by
  %i.ca = lshr i32 %.1.i.i, 24                    ; 2 uses
  %i.cb = or i32 %i.bz, %i.ca
  %i.cc = icmp eq i32 %i.ca, 255
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %i.bh, align 8, !tbaa !63
  %i.ce = zext i32 %i.cb to i64
  %i.cf = add nsw i32 %i.e, %i.bj
  %i.cg = add nsw i32 %i.cf, %.neg.i.i
  %i.ch = add nsw i32 %i.cg, %.neg55.i.i
  %i.ci = add nsw i32 %i.ch, %.neg56.i.i          ; 4 uses
  %i.cj = sub i32 64, %i.ci
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl i64 %i.ce, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !62
  %i.co = or i64 %i.cl, %i.cn                     ; 2 uses
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !62
end_hunk_0
begin_hunk_1_@_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE:bb.a
  %i.kp = and i32 %i.ko, 127
  %i.kq = lshr i64 %i.kn, 7
  store i64 %i.kq, ptr %i.km, align 8, !tbaa !18
  %i.kr = add nsw i32 %i.kl, -1
  store i32 %i.kr, ptr %i.a, align 8, !tbaa !17
  ret i32 %i.kp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_16frwd_struct_avx2EPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 68)) %0, ptr noundef %1, i32 noundef range(i32 -4077, 2147483646) %2) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store i32 %2, ptr %i.b, align 8, !tbaa !52
  %i.c = load <2 x i64>, ptr %1, align 1, !tbaa !10
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %2, i32 16) ; 3 uses
  %i.d = trunc i32 %spec.select.i to i8
  %i.e = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.g = sext i32 %spec.select.i to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  store ptr %i.h, ptr %0, align 8, !tbaa !70
  %i.i = sub nsw i32 %2, %spec.select.i
  store i32 %i.i, ptr %i.b, align 8, !tbaa !52
  %i.j = icmp sgt <16 x i8> %i.f, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.k = xor <16 x i1> %i.j, splat (i1 true)
  %i.l = sext <16 x i1> %i.k to <16 x i8>
  %i.m = bitcast <16 x i8> %i.l to <2 x i64>
  %i.n = or <2 x i64> %i.c, %i.m                  ; 3 uses
  %i.o = bitcast <2 x i64> %i.n to <16 x i8>      ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, splat (i8 -1)
  %i.q = and <16 x i1> %i.j, %i.p
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = shl nuw nsw i32 %i.s, 1
  %i.u = and i32 %i.t, 65534                      ; 2 uses
  %.not76.i = icmp eq i32 %i.u, 0
  br i1 %.not76.i, label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.079.i = phi <2 x i64> [ %i.am, %.lr.ph.i ], [ %i.n, %bb.a ] ; 2 uses
  %.07378.i = phi i32 [ %i.v, %.lr.ph.i ], [ 128, %bb.a ]
  %.07477.i = phi i32 [ %i.y, %.lr.ph.i ], [ %i.u, %bb.a ] ; 3 uses
  %i.v = add nsw i32 %.07378.i, -1                ; 2 uses
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07477.i, i1 true) ; 2 uses
  %i.x = lshr exact i32 -2147483648, %i.w         ; 2 uses
  %i.y = xor i32 %i.x, %.07477.i
  %i.z = trunc nuw nsw i32 %i.w to i8
  %i.aa = xor i8 %i.z, 31
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = icmp samesign ult <16 x i8> %i.ac, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.ae = sext <16 x i1> %i.ad to <16 x i8>       ; 2 uses
  %i.af = bitcast <16 x i8> %i.ae to <2 x i64>
  %i.ag = and <2 x i64> %.079.i, %i.af            ; 2 uses
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ai = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ah, <2 x i64> %i.ag, <2 x i64> splat (i64 63))
  %i.aj = bitcast <16 x i8> %i.ae to <2 x i64>
  %i.ak = xor <2 x i64> %i.aj, splat (i64 -1)
  %i.al = and <2 x i64> %.079.i, %i.ak
  %i.am = or <2 x i64> %i.ai, %i.al               ; 3 uses
  %.not.i = icmp eq i32 %i.x, %.07477.i
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !71

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = bitcast <2 x i64> %i.am to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit

_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.pre-phi.i = phi <16 x i8> [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.o, %bb.a ]
  %.073.lcssa.i = phi i32 [ %i.v, %._crit_edge.loopexit.i ], [ 128, %bb.a ] ; 2 uses
  %.0.lcssa.i = phi <2 x i64> [ %i.am, %._crit_edge.loopexit.i ], [ %i.n, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = lshr i32 %i.s, 15
  %i.aq = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ar = bitcast <16 x i8> %i.aq to <2 x i64>
  %i.as = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.ar, <2 x i64> <i64 64, i64 poison>)
  %i.at = or <2 x i64> %i.as, %.0.lcssa.i
  store <2 x i64> %i.at, ptr %i.a, align 8, !tbaa !10
  %i.au = tail call i32 @llvm.smin.i32(i32 %.073.lcssa.i, i32 128) ; 2 uses
  %i.av = add nsw i32 %i.au, 7
  %i.aw = lshr i32 %i.av, 3
  %i.ax = bitcast <2 x i64> %.0.lcssa.i to <8 x i16>
  %i.ay = extractelement <8 x i16> %i.ax, i64 7
  %i.az = zext i16 %i.ay to i32
  %i.ba = add nsw i32 %i.au, -112
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = zext nneg i32 %i.aw to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !10
  %i.bf = load i32, ptr %i.ao, align 8, !tbaa !37
  %i.bg = add i32 %i.bf, %.073.lcssa.i
  store i32 %i.bg, ptr %i.ao, align 8, !tbaa !37
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !53
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL9frwd_initILi0EEEvPNS0_16frwd_struct_avx2EPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 68)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store i32 %2, ptr %i.b, align 8, !tbaa !52
  %i.c = load <2 x i64>, ptr %1, align 1, !tbaa !10
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %2, i32 16) ; 3 uses
  %i.d = trunc i32 %spec.select.i to i8
  %i.e = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.g = sext i32 %spec.select.i to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  store ptr %i.h, ptr %0, align 8, !tbaa !70
  %i.i = sub nsw i32 %2, %spec.select.i
  store i32 %i.i, ptr %i.b, align 8, !tbaa !52
  %i.j = icmp sgt <16 x i8> %i.f, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.k = sext <16 x i1> %i.j to <16 x i8>
  %i.l = bitcast <16 x i8> %i.k to <2 x i64>
  %i.m = and <2 x i64> %i.c, %i.l                 ; 3 uses
  %i.n = bitcast <2 x i64> %i.m to <16 x i8>      ; 2 uses
  %i.o = icmp eq <16 x i8> %i.n, splat (i8 -1)
  %i.p = and <16 x i1> %i.j, %i.o
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = and i32 %i.s, 65534                      ; 2 uses
  %.not74.i = icmp eq i32 %i.t, 0
  br i1 %.not74.i, label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.077.i = phi <2 x i64> [ %i.al, %.lr.ph.i ], [ %i.m, %bb.a ] ; 2 uses
  %.07176.i = phi i32 [ %i.u, %.lr.ph.i ], [ 128, %bb.a ]
  %.07275.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.t, %bb.a ] ; 3 uses
  %i.u = add nsw i32 %.07176.i, -1                ; 2 uses
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07275.i, i1 true) ; 2 uses
  %i.w = lshr exact i32 -2147483648, %i.v         ; 2 uses
  %i.x = xor i32 %i.w, %.07275.i
  %i.y = trunc nuw nsw i32 %i.v to i8
  %i.z = xor i8 %i.y, 31
  %i.aa = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = icmp samesign ult <16 x i8> %i.ab, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.ad = sext <16 x i1> %i.ac to <16 x i8>       ; 2 uses
  %i.ae = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.af = and <2 x i64> %.077.i, %i.ae            ; 2 uses
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ah = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ag, <2 x i64> %i.af, <2 x i64> splat (i64 63))
  %i.ai = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.aj = xor <2 x i64> %i.ai, splat (i64 -1)
  %i.ak = and <2 x i64> %.077.i, %i.aj
  %i.al = or <2 x i64> %i.ah, %i.ak               ; 3 uses
  %.not.i = icmp eq i32 %i.w, %.07275.i
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !54

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = bitcast <2 x i64> %i.al to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit

_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.pre-phi.i = phi <16 x i8> [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.n, %bb.a ]
  %.071.lcssa.i = phi i32 [ %i.u, %._crit_edge.loopexit.i ], [ 128, %bb.a ] ; 2 uses
  %.0.lcssa.i = phi <2 x i64> [ %i.al, %._crit_edge.loopexit.i ], [ %i.m, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ao = lshr i32 %i.r, 15
  %i.ap = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aq = bitcast <16 x i8> %i.ap to <2 x i64>
  %i.ar = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.aq, <2 x i64> <i64 64, i64 poison>)
  %i.as = or <2 x i64> %i.ar, %.0.lcssa.i
  store <2 x i64> %i.as, ptr %i.a, align 8, !tbaa !10
  %i.at = tail call i32 @llvm.smin.i32(i32 %.071.lcssa.i, i32 128) ; 2 uses
  %i.au = add nsw i32 %i.at, 7
  %i.av = lshr i32 %i.au, 3
  %i.aw = bitcast <2 x i64> %.0.lcssa.i to <8 x i16>
  %i.ax = extractelement <8 x i16> %i.aw, i64 7
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nsw i32 %i.at, -112
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = zext nneg i32 %i.av to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !10
  %i.be = load i32, ptr %i.an, align 8, !tbaa !37
  %i.bf = add i32 %i.be, %.071.lcssa.i
  store i32 %i.bf, ptr %i.an, align 8, !tbaa !37
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !53
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL12rev_init_mrpEPNS0_10rev_structEPhii(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 25)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i8 1, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 0, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.i, align 8, !tbaa !30
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 3                          ; 7 uses
  %i.m = add nsw i32 %3, -1                       ; 3 uses
  store i32 %i.m, ptr %i.f, align 4, !tbaa !28
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.b:                                             ; preds = %bb.p, %bb.m, %bb.j, %bb.g
  %.lcssa97 = phi ptr [ %i.ej, %bb.g ], [ %i.ev, %bb.j ], [ %i.fm, %bb.m ], [ %i.gd, %bb.p ] ; 12 uses
  %.lcssa96 = phi i64 [ %i.ek, %bb.g ], [ %i.fd, %bb.j ], [ %i.fu, %bb.m ], [ %i.gl, %bb.p ]
  %.lcssa95 = phi i32 [ %i.en, %bb.g ], [ %i.fe, %bb.j ], [ %i.fv, %bb.m ], [ %i.gm, %bb.p ] ; 3 uses
  %.lcssa94 = phi i1 [ %i.eo, %bb.g ], [ %i.ff, %bb.j ], [ %i.fw, %bb.m ], [ %i.gn, %bb.p ]
  %.lcssa93 = phi i32 [ %3, %bb.g ], [ %i.m, %bb.j ], [ %i.eq, %bb.m ], [ %i.fh, %bb.p ] ; 4 uses
  %.lcssa92 = phi i32 [ %i.m, %bb.g ], [ %i.eq, %bb.j ], [ %i.fh, %bb.m ], [ %i.fy, %bb.p ] ; 5 uses
  %i.o = icmp ugt i32 %.lcssa95, 32
  br i1 %i.o, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp sgt i32 %.lcssa93, 4
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %.lcssa97, i64 -3
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23
  %i.s = getelementptr inbounds i8, ptr %.lcssa97, i64 -4
  store ptr %i.s, ptr %0, align 8, !tbaa !65
  %i.t = add nsw i32 %.lcssa93, -5
  store i32 %i.t, ptr %i.f, align 4, !tbaa !28
  br label %.loopexit.i

bb.e:                                             ; preds = %bb.c
  %i.u = icmp sgt i32 %.lcssa93, 1
  br i1 %i.u, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %bb.e
  %i.v = add i32 %3, -1                           ; 2 uses
  %i.w = icmp ne i32 %i.v, %i.l
  %umin44.neg = sext i1 %i.w to i32
  %i.x = add i32 %i.v, %umin44.neg
  %i.y = sub i32 %i.x, %i.l                       ; 3 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 3
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 24
  %i.ab = add i32 %3, -1                          ; 2 uses
  %i.ac = icmp ne i32 %i.ab, %i.l
  %umin.neg = sext i1 %i.ac to i32
  %i.ad = add i32 %i.ab, %umin.neg
  %i.ae = sub i32 %i.ad, %i.l
  %i.af = zext i32 %i.ae to i64
  %i.ag = sub nsw i64 0, %i.af
  %scevgep42 = getelementptr i8, ptr %.lcssa97, i64 %i.ag
  %scevgep43 = getelementptr i8, ptr %.lcssa97, i64 1
  %bound0 = icmp ult ptr %0, %scevgep43
  %bound1 = icmp ult ptr %scevgep42, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i32 %i.y, 15
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 8589934576              ; 5 uses
  %i.ai = sub nsw i64 0, %n.vec
  %i.aj = getelementptr i8, ptr %.lcssa97, i64 %i.ai
  %i.ak = trunc i64 %n.vec to i32                 ; 2 uses
  %i.al = mul i32 %i.ak, -8
  %i.am = or disjoint i32 %i.al, 24               ; 2 uses
  %i.an = sub i32 %.lcssa92, %i.ak                ; 2 uses
  %i.ao = add nsw i32 %.lcssa93, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi46 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi47 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi48 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 24, i32 16, i32 8, i32 0>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.ap = phi i32 [ %i.ao, %vector.ph ], [ %i.bk, %vector.body ] ; 2 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 -32)
  %step.add.2 = add nsw <4 x i32> %vec.ind, splat (i32 -64)
  %step.add.3 = add nsw <4 x i32> %vec.ind, splat (i32 -96)
  %i.aq = sub i64 0, %index
  %i.ar = sub nuw nsw i64 -15, %index
  %next.gep = getelementptr i8, ptr %.lcssa97, i64 %i.aq ; 4 uses
  %next.gep53 = getelementptr i8, ptr %.lcssa97, i64 %i.ar
  %i.as = getelementptr inbounds i8, ptr %next.gep53, i64 -1
  %i.at = getelementptr i8, ptr %next.gep, i64 -3
  %i.au = getelementptr i8, ptr %next.gep, i64 -7
  %i.av = getelementptr i8, ptr %next.gep, i64 -11
  %i.aw = getelementptr i8, ptr %next.gep, i64 -15
  %wide.load = load <4 x i8>, ptr %i.at, align 1, !tbaa !10, !alias.scope !72
  %wide.load54 = load <4 x i8>, ptr %i.au, align 1, !tbaa !10, !alias.scope !72
  %wide.load55 = load <4 x i8>, ptr %i.av, align 1, !tbaa !10, !alias.scope !72
  %wide.load56 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !10, !alias.scope !72
  %reverse = shufflevector <4 x i8> %wide.load, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse57 = shufflevector <4 x i8> %wide.load54, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse58 = shufflevector <4 x i8> %wide.load55, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse59 = shufflevector <4 x i8> %wide.load56, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ax = zext <4 x i8> %reverse to <4 x i32>
  %i.ay = zext <4 x i8> %reverse57 to <4 x i32>
  %i.az = zext <4 x i8> %reverse58 to <4 x i32>
  %i.ba = zext <4 x i8> %reverse59 to <4 x i32>
  %i.bb = shl <4 x i32> %i.ax, %vec.ind
  %i.bc = shl <4 x i32> %i.ay, %step.add
  %i.bd = shl <4 x i32> %i.az, %step.add.2
  %i.be = shl <4 x i32> %i.ba, %step.add.3
  %i.bf = or <4 x i32> %i.bb, %vec.phi            ; 2 uses
  %i.bg = or <4 x i32> %i.bc, %vec.phi46          ; 2 uses
  %i.bh = or <4 x i32> %i.bd, %vec.phi47          ; 2 uses
  %i.bi = or <4 x i32> %i.be, %vec.phi48          ; 2 uses
  %i.bj = add nsw i32 %i.ap, -13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 -128)
  %i.bk = add nsw i32 %i.ap, -16
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  store ptr %i.as, ptr %0, align 8, !tbaa !65, !alias.scope !76, !noalias !72
  store i32 %i.bj, ptr %i.f, align 4, !tbaa !28, !alias.scope !76, !noalias !72
  %bin.rdx = or <4 x i32> %i.bg, %i.bf
  %bin.rdx61 = or <4 x i32> %i.bh, %bin.rdx
  %bin.rdx62 = or <4 x i32> %i.bi, %bin.rdx61
  %i.bm = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx62) ; 3 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bm, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val63 = phi i32 [ %i.am, %vec.epilog.iter.check ], [ 24, %vector.main.loop.iter.check ]
  %bc.resume.val64 = phi i32 [ %i.an, %vec.epilog.iter.check ], [ %.lcssa92, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.aa, 8589934588            ; 4 uses
  %i.bn = sub nsw i64 0, %n.vec65
  %i.bo = getelementptr i8, ptr %.lcssa97, i64 %i.bn
  %i.bp = trunc i64 %n.vec65 to i32               ; 2 uses
  %i.bq = mul i32 %i.bp, -8
  %i.br = or disjoint i32 %i.bq, 24
  %i.bs = sub i32 %.lcssa92, %i.bp
  %i.bt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert66 = insertelement <4 x i32> poison, i32 %bc.resume.val63, i64 0
  %broadcast.splat67 = shufflevector <4 x i32> %broadcast.splatinsert66, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat67, <i32 0, i32 -8, i32 -16, i32 -24>
  %i.bu = add nsw i32 %bc.resume.val64, -3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi71 = phi <4 x i32> [ %i.bt, %vec.epilog.ph ], [ %i.cc, %vec.epilog.vector.body ]
  %vec.ind72 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next79, %vec.epilog.vector.body ] ; 2 uses
  %i.bv = phi i32 [ %i.bu, %vec.epilog.ph ], [ %i.ce, %vec.epilog.vector.body ] ; 2 uses
  %i.bw = sub i64 0, %index70
  %i.bx = sub nuw nsw i64 -3, %index70
  %next.gep74 = getelementptr i8, ptr %.lcssa97, i64 %i.bw
  %next.gep75 = getelementptr i8, ptr %.lcssa97, i64 %i.bx
  %i.by = getelementptr inbounds i8, ptr %next.gep75, i64 -1
  %i.bz = getelementptr i8, ptr %next.gep74, i64 -3
  %wide.load76 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !10, !alias.scope !72
  %reverse77 = shufflevector <4 x i8> %wide.load76, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ca = zext <4 x i8> %reverse77 to <4 x i32>
  %i.cb = shl <4 x i32> %i.ca, %vec.ind72
  %i.cc = or <4 x i32> %i.cb, %vec.phi71          ; 2 uses
  %i.cd = add nsw i32 %i.bv, -1
  %index.next78 = add nuw i64 %index70, 4         ; 2 uses
  %vec.ind.next79 = add nsw <4 x i32> %vec.ind72, splat (i32 -32)
  %i.ce = add nsw i32 %i.bv, -4
  %i.cf = icmp eq i64 %index.next78, %n.vec65
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  store ptr %i.by, ptr %0, align 8, !tbaa !65, !alias.scope !76, !noalias !72
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !28, !alias.scope !76, !noalias !72
  %i.cg = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cc) ; 2 uses
  %cmp.n81 = icmp eq i64 %i.aa, %n.vec65
  br i1 %cmp.n81, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %.lcssa97, %iter.check ], [ %.lcssa97, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  %.047.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bm, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  %.04446.i.ph = phi i32 [ 24, %iter.check ], [ 24, %vector.memcheck ], [ %i.am, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.ph86 = phi i32 [ %.lcssa92, %iter.check ], [ %.lcssa92, %vector.memcheck ], [ %i.an, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %i.ch = phi ptr [ %i.cj, %.preheader.i ], [ %.ph, %.preheader.i.preheader ] ; 2 uses
  %.047.i = phi i32 [ %i.cn, %.preheader.i ], [ %.047.i.ph, %.preheader.i.preheader ]
  %.04446.i = phi i32 [ %i.cp, %.preheader.i ], [ %.04446.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.ci = phi i32 [ %i.co, %.preheader.i ], [ %.ph86, %.preheader.i.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -1 ; 2 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !65
  %i.ck = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl i32 %i.cl, %.04446.i
  %i.cn = or i32 %i.cm, %.047.i                   ; 2 uses
  %i.co = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.co, ptr %i.f, align 4, !tbaa !28
  %i.cp = add nsw i32 %.04446.i, -8
  %i.cq = icmp samesign ugt i32 %i.ci, 1
  br i1 %i.cq, label %.preheader.i, label %.loopexit.i, !llvm.loop !80

.loopexit.i:                                      ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d
  %.1.i = phi i32 [ %i.r, %bb.d ], [ 0, %bb.e ], [ %i.cg, %vec.epilog.middle.block ], [ %i.bm, %middle.block ], [ %i.cn, %.preheader.i ] ; 9 uses
  %i.cr = lshr i32 %.1.i, 24
  %i.cs = and i32 %.1.i, 2130706432
  %i.ct = icmp eq i32 %i.cs, 2130706432
  %i.cu = select i1 %.lcssa94, i1 %i.ct, i1 false
  %i.cv = select i1 %i.cu, i32 7, i32 8           ; 2 uses
  %i.cw = icmp ugt i32 %.1.i, -1879048193
  %i.cx = lshr i32 %.1.i, 16
  %i.cy = and i32 %i.cx, 255                      ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cy, %i.cv
  %i.da = or i32 %i.cz, %i.cr
  %i.db = and i32 %.1.i, 8323072
  %i.dc = icmp eq i32 %i.db, 8323072
  %i.dd = and i1 %i.cw, %i.dc
  %i.de = select i1 %i.dd, i32 7, i32 8
  %i.df = add nuw nsw i32 %i.cv, %i.de            ; 2 uses
  %i.dg = icmp samesign ugt i32 %i.cy, 143
  %i.dh = lshr i32 %.1.i, 8
  %i.di = and i32 %i.dh, 255                      ; 2 uses
  %i.dj = shl nuw nsw i32 %i.di, %i.df
  %i.dk = or i32 %i.da, %i.dj
  %i.dl = and i32 %.1.i, 32512
  %i.dm = icmp eq i32 %i.dl, 32512
  %i.dn = select i1 %i.dg, i1 %i.dm, i1 false
  %i.do = select i1 %i.dn, i32 7, i32 8
  %i.dp = add nuw nsw i32 %i.df, %i.do            ; 2 uses
  %i.dq = icmp samesign ugt i32 %i.di, 143
  %i.dr = and i32 %.1.i, 255                      ; 2 uses
  %i.ds = shl nuw i32 %i.dr, %i.dp
  %i.dt = or i32 %i.dk, %i.ds
  %i.du = and i32 %.1.i, 127
  %i.dv = icmp eq i32 %i.du, 127
  %i.dw = select i1 %i.dq, i1 %i.dv, i1 false
  %i.dx = select i1 %i.dw, i32 7, i32 8
  %i.dy = icmp samesign ugt i32 %i.dr, 143
  %i.dz = zext i1 %i.dy to i8
  %i.ea = zext i32 %i.dt to i64
  %i.eb = zext nneg i32 %.lcssa95 to i64
  %i.ec = shl nuw i64 %i.ea, %i.eb
  %i.ed = or i64 %i.ec, %.lcssa96
  store i64 %i.ed, ptr %i.i, align 8, !tbaa !30
  %i.ee = add nuw nsw i32 %i.dx, %.lcssa95
  %i.ef = add nuw nsw i32 %i.ee, %i.dp
  store i32 %i.ef, ptr %i.h, align 8, !tbaa !19
  store i8 %i.dz, ptr %i.g, align 8, !tbaa !29
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit: ; preds = %bb.b, %.loopexit.i
  ret void

bb.f:                                             ; preds = %bb.a
  %i.eg = getelementptr inbounds i8, ptr %i.d, i64 -2 ; 2 uses
  store ptr %i.eg, ptr %0, align 8, !tbaa !65
  %i.eh = load i8, ptr %i.e, align 1, !tbaa !10
  %i.ei = zext i8 %i.eh to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.ej = phi ptr [ %i.eg, %bb.f ], [ %i.e, %bb.a ] ; 4 uses
  %i.ek = phi i64 [ %i.ei, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  %i.el = and i64 %i.ek, 127
  %i.em = icmp eq i64 %i.el, 127
  %i.en = select i1 %i.em, i32 7, i32 8           ; 4 uses
  store i64 %i.ek, ptr %i.i, align 8, !tbaa !30
  store i32 %i.en, ptr %i.h, align 8, !tbaa !19
  %i.eo = icmp samesign ugt i64 %i.ek, 143        ; 3 uses
  %i.ep = zext i1 %i.eo to i8
  store i8 %i.ep, ptr %i.g, align 8, !tbaa !29
  %exitcond.not = icmp eq i32 %i.l, 0
  br i1 %exitcond.not, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eq = add nsw i32 %3, -2                      ; 3 uses
  store i32 %i.eq, ptr %i.f, align 4, !tbaa !28
  %i.er = icmp sgt i32 %3, 1
  br i1 %i.er, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.es = getelementptr inbounds i8, ptr %i.ej, i64 -1 ; 2 uses
  store ptr %i.es, ptr %0, align 8, !tbaa !65
  %i.et = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.eu = zext i8 %i.et to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ev = phi ptr [ %i.es, %bb.i ], [ %i.ej, %bb.h ] ; 4 uses
  %i.ew = phi i64 [ %i.eu, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %i.ex = and i64 %i.ew, 127
  %i.ey = icmp eq i64 %i.ex, 127
  %i.ez = select i1 %i.eo, i1 %i.ey, i1 false
  %i.fa = select i1 %i.ez, i32 7, i32 8
  %i.fb = zext nneg i32 %i.en to i64
  %i.fc = shl nuw nsw i64 %i.ew, %i.fb
  %i.fd = or i64 %i.fc, %i.ek                     ; 3 uses
  store i64 %i.fd, ptr %i.i, align 8, !tbaa !30
  %i.fe = add nuw nsw i32 %i.fa, %i.en            ; 4 uses
  store i32 %i.fe, ptr %i.h, align 8, !tbaa !19
  %i.ff = icmp samesign ugt i64 %i.ew, 143        ; 3 uses
  %i.fg = zext i1 %i.ff to i8
  store i8 %i.fg, ptr %i.g, align 8, !tbaa !29
  %exitcond.not.1 = icmp eq i32 %i.l, 1
  br i1 %exitcond.not.1, label %bb.b, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fh = add nsw i32 %3, -3                      ; 3 uses
  store i32 %i.fh, ptr %i.f, align 4, !tbaa !28
  %i.fi = icmp sgt i32 %3, 2
  br i1 %i.fi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fj = getelementptr inbounds i8, ptr %i.ev, i64 -1 ; 2 uses
  store ptr %i.fj, ptr %0, align 8, !tbaa !65
  %i.fk = load i8, ptr %i.ev, align 1, !tbaa !10
  %i.fl = zext i8 %i.fk to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fm = phi ptr [ %i.fj, %bb.l ], [ %i.ev, %bb.k ] ; 4 uses
  %i.fn = phi i64 [ %i.fl, %bb.l ], [ 0, %bb.k ]  ; 3 uses
  %i.fo = and i64 %i.fn, 127
  %i.fp = icmp eq i64 %i.fo, 127
  %i.fq = select i1 %i.ff, i1 %i.fp, i1 false
  %i.fr = select i1 %i.fq, i32 7, i32 8
  %i.fs = zext nneg i32 %i.fe to i64
  %i.ft = shl nuw nsw i64 %i.fn, %i.fs
  %i.fu = or i64 %i.ft, %i.fd                     ; 3 uses
  store i64 %i.fu, ptr %i.i, align 8, !tbaa !30
  %i.fv = add nuw nsw i32 %i.fr, %i.fe            ; 4 uses
  store i32 %i.fv, ptr %i.h, align 8, !tbaa !19
  %i.fw = icmp samesign ugt i64 %i.fn, 143        ; 3 uses
  %i.fx = zext i1 %i.fw to i8
  store i8 %i.fx, ptr %i.g, align 8, !tbaa !29
  %exitcond.not.2 = icmp eq i32 %i.l, 2
  br i1 %exitcond.not.2, label %bb.b, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fy = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.fy, ptr %i.f, align 4, !tbaa !28
  %i.fz = icmp sgt i32 %3, 3
  br i1 %i.fz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ga = getelementptr inbounds i8, ptr %i.fm, i64 -1 ; 2 uses
  store ptr %i.ga, ptr %0, align 8, !tbaa !65
  %i.gb = load i8, ptr %i.fm, align 1, !tbaa !10
  %i.gc = zext i8 %i.gb to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gd = phi ptr [ %i.ga, %bb.o ], [ %i.fm, %bb.n ]
  %i.ge = phi i64 [ %i.gc, %bb.o ], [ 0, %bb.n ]  ; 3 uses
  %i.gf = and i64 %i.ge, 127
  %i.gg = icmp eq i64 %i.gf, 127
  %i.gh = select i1 %i.fw, i1 %i.gg, i1 false
  %i.gi = select i1 %i.gh, i32 7, i32 8
  %i.gj = zext nneg i32 %i.fv to i64
  %i.gk = shl i64 %i.ge, %i.gj
  %i.gl = or i64 %i.gk, %i.fu                     ; 2 uses
  store i64 %i.gl, ptr %i.i, align 8, !tbaa !30
  %i.gm = add nuw nsw i32 %i.gi, %i.fv            ; 2 uses
  store i32 %i.gm, ptr %i.h, align 8, !tbaa !19
  %i.gn = icmp samesign ugt i64 %i.ge, 143        ; 2 uses
  %i.go = zext i1 %i.gn to i8
  store i8 %i.go, ptr %i.g, align 8, !tbaa !29
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx.ptestz.256(<4 x i64>, <4 x i64>) #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = icmp ult i32 %i.b, 129
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 16) ; 3 uses
  %i.h = trunc i32 %spec.select.i to i8
  %i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = sext i32 %spec.select.i to i64
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %i.k ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !70
  %i.m = sub nsw i32 %i.g, %spec.select.i
  store i32 %i.m, ptr %i.f, align 8, !tbaa !52
  %i.n = icmp sgt <16 x i8> %i.j, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.o = xor <16 x i1> %i.n, splat (i1 true)
  %i.p = sext <16 x i1> %i.o to <16 x i8>
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>
  %i.r = or <2 x i64> %i.e, %i.q                  ; 3 uses
  %i.s = bitcast <2 x i64> %i.r to <16 x i8>      ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, splat (i8 -1)
  %i.u = and <16 x i1> %i.n, %i.t
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %i.aa = or i32 %i.x, %i.z
  %i.ab = and i32 %i.aa, 65535                    ; 2 uses
  %.not76.i = icmp eq i32 %i.ab, 0
  br i1 %.not76.i, label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.079.i = phi <2 x i64> [ %i.at, %.lr.ph.i ], [ %i.r, %bb.b ] ; 2 uses
  %.07378.i = phi i32 [ %i.ac, %.lr.ph.i ], [ 128, %bb.b ]
  %.07477.i = phi i32 [ %i.af, %.lr.ph.i ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = add nsw i32 %.07378.i, -1               ; 2 uses
  %i.ad = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07477.i, i1 true) ; 2 uses
  %i.ae = lshr exact i32 -2147483648, %i.ad       ; 2 uses
  %i.af = xor i32 %i.ae, %.07477.i
  %i.ag = trunc nuw nsw i32 %i.ad to i8
  %i.ah = xor i8 %i.ag, 31
  %i.ai = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ak = icmp samesign ult <16 x i8> %i.aj, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.al = sext <16 x i1> %i.ak to <16 x i8>       ; 2 uses
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>
  %i.an = and <2 x i64> %.079.i, %i.am            ; 2 uses
  %i.ao = shufflevector <2 x i64> %i.an, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ap = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ao, <2 x i64> %i.an, <2 x i64> splat (i64 63))
  %i.aq = bitcast <16 x i8> %i.al to <2 x i64>
  %i.ar = xor <2 x i64> %i.aq, splat (i64 -1)
  %i.as = and <2 x i64> %.079.i, %i.ar
  %i.at = or <2 x i64> %i.ap, %i.as               ; 3 uses
  %.not.i = icmp eq i32 %i.ae, %.07477.i
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !71

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = bitcast <2 x i64> %i.at to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit

_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit: ; preds = %bb.b, %._crit_edge.loopexit.i
  %.pre-phi.i = phi <16 x i8> [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.s, %bb.b ]
  %.073.lcssa.i = phi i32 [ %i.ac, %._crit_edge.loopexit.i ], [ 128, %bb.b ] ; 2 uses
  %.0.lcssa.i = phi <2 x i64> [ %i.at, %._crit_edge.loopexit.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.au = lshr i32 %i.w, 15                       ; 2 uses
  %i.av = lshr i32 %i.b, 3
  %i.aw = and i32 %i.b, 7                         ; 3 uses
end_hunk_1

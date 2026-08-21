Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@encode_frame:bb.a
  %i.ajd = or i32 %i.ajc, %i.aiv
  %i.aje = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 4
  %i.ajf = load i8, ptr %i.aje, align 2, !tbaa !223
  %i.ajg = zext i8 %i.ajf to i32
  %i.ajh = getelementptr inbounds nuw i8, ptr %.1223.i.i, i64 4
  %i.aji = load i8, ptr %i.ajh, align 2, !tbaa !223
  %i.ajj = zext i8 %i.aji to i32
  %i.ajk = sub nsw i32 %i.ajg, %i.ajj
  %i.ajl = or i32 %i.ajd, %i.ajk
  %i.ajm = xor i8 %.pre1296, %i.ahy
  %i.ajn = and i8 %i.ajm, 1
  %i.ajo = zext nneg i8 %i.ajn to i32
  %i.ajp = or i32 %i.ajl, %i.ajo
  %.not17.i.i.i = icmp eq i32 %i.ajp, 0
  br i1 %.not17.i.i.i, label %.lr.ph1013.preheader, label %bb.bi

bb.bi:                                            ; preds = %.split1384, %same_block.exit.i.i
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %.1.i.i, ptr noundef %i.ys, i64 noundef %i.vh, i32 noundef %.0235.i.i, i32 noundef %.0236.i.i, i32 noundef %spec.select264.i.i, i32 noundef %spec.select265.i.i, ptr noundef nonnull %.1223.i.i, i32 noundef %i.th, i32 noundef %i.ue, i32 noundef %i.uf) #12
  br label %.lr.ph1013.preheader

.lr.ph1013.preheader:                             ; preds = %bb.bi, %same_block.exit279.i.i, %same_block.exit272.i.i, %same_block.exit.i.i, %.split1382, %.split1383, %.split1384
  %.sroa.17.0 = phi ptr [ %.1.i.i, %bb.bi ], [ %.sroa.7.0, %same_block.exit272.i.i ], [ %i.ze, %same_block.exit279.i.i ], [ %.sroa.12.0, %same_block.exit.i.i ], [ %i.ze, %.split1382 ], [ %.sroa.7.0, %.split1383 ], [ %.sroa.12.0, %.split1384 ] ; 4 uses
  %i.ajq = zext nneg i32 %spec.select264.i.i to i64 ; 3 uses
  %i.ajr = getelementptr i8, ptr %i.ys, i64 %i.wi
  %scevgep1887 = getelementptr i8, ptr %i.ajr, i64 %i.vf
  %scevgep1888 = getelementptr i8, ptr %scevgep1887, i64 %umax1870
  %scevgep1889 = getelementptr i8, ptr %.sroa.7.0, i64 %i.wi
  %scevgep1890 = getelementptr i8, ptr %scevgep1889, i64 %umax1870
  %scevgep1891 = getelementptr i8, ptr %.sroa.12.0, i64 %i.wi
  %scevgep1892 = getelementptr i8, ptr %scevgep1891, i64 %umax1870
  %scevgep1893 = getelementptr i8, ptr %.sroa.17.0, i64 %i.wi
  %scevgep1894 = getelementptr i8, ptr %scevgep1893, i64 %umax1870
  %i.ajs = insertelement <4 x ptr> poison, ptr %scevgep1864, i64 0 ; 2 uses
  %i.ajt = shufflevector <4 x ptr> %i.ajs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aju = insertelement <4 x ptr> poison, ptr %scevgep1876, i64 0
  %i.ajv = insertelement <4 x ptr> %i.aju, ptr %scevgep1884, i64 1
  %i.ajw = insertelement <4 x ptr> %i.ajv, ptr %scevgep1886, i64 2
  %i.ajx = insertelement <4 x ptr> %i.ajw, ptr %scevgep1888, i64 3
  %i.ajy = shufflevector <4 x ptr> %i.ajs, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ajz = insertelement <2 x ptr> poison, ptr %scevgep1890, i64 0
  %i.aka = insertelement <2 x ptr> %i.ajz, ptr %scevgep1892, i64 1
  %i.akb = insertelement <4 x ptr> poison, ptr %scevgep1874, i64 0
  %i.akc = insertelement <4 x ptr> %i.akb, ptr %scevgep1882, i64 1
  %i.akd = insertelement <4 x ptr> %i.akc, ptr %gep1430, i64 2
  %i.ake = insertelement <4 x ptr> %i.akd, ptr %i.ze, i64 3
  %i.akf = insertelement <4 x ptr> poison, ptr %scevgep1871, i64 0
  %i.akg = shufflevector <4 x ptr> %i.akf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.akh = insertelement <2 x ptr> poison, ptr %.sroa.7.0, i64 0
  %i.aki = insertelement <2 x ptr> %i.akh, ptr %.sroa.12.0, i64 1
  %i.akj = insertelement <2 x ptr> poison, ptr %scevgep1871, i64 0
  %i.akk = shufflevector <2 x ptr> %i.akj, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check1939 = icmp ult i32 %spec.select264.i.i, 16
  %i.akl = icmp ult <4 x ptr> %i.ajt, %i.ajx
  %i.akm = icmp ult <4 x ptr> %i.ake, %i.akg
  %bound01899 = icmp ult ptr %scevgep1864, %scevgep1880
  %bound11900 = icmp ult ptr %scevgep1878, %scevgep1871
  %found.conflict1901 = and i1 %bound01899, %bound11900
  %i.akn = icmp ult <2 x ptr> %i.ajy, %i.aka
  %i.ako = icmp ult <2 x ptr> %i.aki, %i.akk
  %bound01932 = icmp ult ptr %scevgep1864, %scevgep1894
  %bound11933 = icmp ult ptr %.sroa.17.0, %scevgep1871
  %i.akp = insertelement <8 x i1> %i.wl, i1 %bound01932, i64 6
  %i.akq = shufflevector <4 x i1> %i.akl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akr = shufflevector <8 x i1> %i.akq, <8 x i1> %i.akp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.aks = shufflevector <2 x i1> %i.akn, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akt = shufflevector <8 x i1> %i.akr, <8 x i1> %i.aks, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.aku = shufflevector <2 x i1> %i.ako, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akv = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.aku, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.akw = insertelement <8 x i1> %i.akv, i1 %bound11933, i64 6
  %i.akx = shufflevector <4 x i1> %i.akm, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aky = shufflevector <8 x i1> %i.akx, <8 x i1> %i.akw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.akz = and <8 x i1> %i.akt, %i.aky            ; 2 uses
  %i.ala = or <8 x i1> %i.akz, %i.wp
  %i.alb = shufflevector <8 x i1> %i.ala, <8 x i1> %i.akz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.alc = bitcast <8 x i1> %i.alb to i8
  %i.ald = icmp ne i8 %i.alc, 0
  %op.rdx2147 = or i1 %i.ald, %found.conflict1901
  %n.vec1941 = and i64 %i.ajq, 2147483640         ; 3 uses
  %cmp.n1955 = icmp eq i64 %n.vec1941, %i.ajq
  br label %.lr.ph1013

.lr.ph1013:                                       ; preds = %.lr.ph1013.preheader, %._crit_edge1014
  %indvars.iv1186 = phi i64 [ 0, %.lr.ph1013.preheader ], [ %indvars.iv.next1187, %._crit_edge1014 ] ; 4 uses
  %i.ale = mul nuw nsw i64 %indvars.iv1186, %i.vo
  %i.alf = getelementptr inbounds nuw i8, ptr %gep1430, i64 %i.ale ; 4 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 %i.vj ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 %i.vl ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.vj ; 2 uses
  %i.alj = mul nsw i64 %indvars.iv1186, %i.vh     ; 2 uses
  %i.alk = mul nsw i64 %indvars.iv1186, %i.vm
  %invariant.gep1427 = getelementptr [2 x i8], ptr %i.zd, i64 %i.alk ; 2 uses
  %brmerge2212 = select i1 %min.iters.check1939, i1 true, i1 %op.rdx2147
  br i1 %brmerge2212, label %scalar.ph1938.preheader, label %vector.body1942

vector.body1942:                                  ; preds = %.lr.ph1013, %vector.body1942
  %index1943 = phi i64 [ %index.next1953, %vector.body1942 ], [ 0, %.lr.ph1013 ] ; 7 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alf, i64 %index1943
  %wide.load1944 = load <8 x i8>, ptr %i.all, align 1, !tbaa !84, !alias.scope !224
  %i.alm = zext <8 x i8> %wide.load1944 to <8 x i32>
  %i.aln = add nsw i64 %index1943, %i.alj         ; 4 uses
  %i.alo = getelementptr inbounds i8, ptr %.sroa.17.0, i64 %i.aln
  %wide.load1945 = load <8 x i8>, ptr %i.alo, align 1, !tbaa !84, !alias.scope !227
  %i.alp = zext <8 x i8> %wide.load1945 to <8 x i32>
  %i.alq = mul nuw nsw <8 x i32> %i.alp, %i.alm
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alg, i64 %index1943
  %wide.load1946 = load <8 x i8>, ptr %i.alr, align 1, !tbaa !84, !alias.scope !229
  %i.als = zext <8 x i8> %wide.load1946 to <8 x i32>
  %i.alt = getelementptr inbounds i8, ptr %.sroa.12.0, i64 %i.aln
  %wide.load1947 = load <8 x i8>, ptr %i.alt, align 1, !tbaa !84, !alias.scope !231
  %i.alu = zext <8 x i8> %wide.load1947 to <8 x i32>
  %i.alv = mul nuw nsw <8 x i32> %i.alu, %i.als
  %i.alw = add nuw nsw <8 x i32> %i.alv, %i.alq
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alh, i64 %index1943
  %wide.load1948 = load <8 x i8>, ptr %i.alx, align 1, !tbaa !84, !alias.scope !233
  %i.aly = zext <8 x i8> %wide.load1948 to <8 x i32>
  %i.alz = getelementptr inbounds i8, ptr %.sroa.7.0, i64 %i.aln
  %wide.load1949 = load <8 x i8>, ptr %i.alz, align 1, !tbaa !84, !alias.scope !235
  %i.ama = zext <8 x i8> %wide.load1949 to <8 x i32>
  %i.amb = mul nuw nsw <8 x i32> %i.ama, %i.aly
  %i.amc = add nuw nsw <8 x i32> %i.alw, %i.amb
  %i.amd = getelementptr inbounds nuw i8, ptr %i.ali, i64 %index1943
  %wide.load1950 = load <8 x i8>, ptr %i.amd, align 1, !tbaa !84, !alias.scope !237
  %i.ame = zext <8 x i8> %wide.load1950 to <8 x i32>
  %i.amf = getelementptr inbounds i8, ptr %i.ze, i64 %i.aln
  %wide.load1951 = load <8 x i8>, ptr %i.amf, align 1, !tbaa !84, !alias.scope !239
  %i.amg = zext <8 x i8> %wide.load1951 to <8 x i32>
  %i.amh = mul nuw nsw <8 x i32> %i.amg, %i.ame
  %i.ami = add nuw nsw <8 x i32> %i.amc, %i.amh
  %i.amj = lshr <8 x i32> %i.ami, splat (i32 2)
  %i.amk = getelementptr [2 x i8], ptr %invariant.gep1427, i64 %index1943 ; 2 uses
  %wide.load1952 = load <8 x i16>, ptr %i.amk, align 2, !tbaa !184, !alias.scope !241, !noalias !243
  %i.aml = trunc nuw <8 x i32> %i.amj to <8 x i16>
  %i.amm = sub <8 x i16> %wide.load1952, %i.aml
  store <8 x i16> %i.amm, ptr %i.amk, align 2, !tbaa !184, !alias.scope !241, !noalias !243
  %index.next1953 = add nuw i64 %index1943, 8     ; 2 uses
  %i.amn = icmp eq i64 %index.next1953, %n.vec1941
  br i1 %i.amn, label %middle.block1954, label %vector.body1942, !llvm.loop !244

middle.block1954:                                 ; preds = %vector.body1942
  br i1 %cmp.n1955, label %._crit_edge1014, label %scalar.ph1938.preheader

scalar.ph1938.preheader:                          ; preds = %.lr.ph1013, %middle.block1954
  %indvars.iv1183.ph = phi i64 [ %n.vec1941, %middle.block1954 ], [ 0, %.lr.ph1013 ]
  br label %scalar.ph1938

scalar.ph1938:                                    ; preds = %scalar.ph1938.preheader, %scalar.ph1938
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %scalar.ph1938 ], [ %indvars.iv1183.ph, %scalar.ph1938.preheader ] ; 7 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.alf, i64 %indvars.iv1183
  %i.amp = load i8, ptr %i.amo, align 1, !tbaa !84
  %i.amq = zext i8 %i.amp to i32
  %i.amr = add nsw i64 %indvars.iv1183, %i.alj    ; 4 uses
  %i.ams = getelementptr inbounds i8, ptr %.sroa.17.0, i64 %i.amr
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !84
  %i.amu = zext i8 %i.amt to i32
  %i.amv = mul nuw nsw i32 %i.amu, %i.amq
  %i.amw = getelementptr inbounds nuw i8, ptr %i.alg, i64 %indvars.iv1183
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !84
  %i.amy = zext i8 %i.amx to i32
  %i.amz = getelementptr inbounds i8, ptr %.sroa.12.0, i64 %i.amr
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !84
  %i.anb = zext i8 %i.ana to i32
  %i.anc = mul nuw nsw i32 %i.anb, %i.amy
  %i.and = add nuw nsw i32 %i.anc, %i.amv
  %i.ane = getelementptr inbounds nuw i8, ptr %i.alh, i64 %indvars.iv1183
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !84
  %i.ang = zext i8 %i.anf to i32
  %i.anh = getelementptr inbounds i8, ptr %.sroa.7.0, i64 %i.amr
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !84
  %i.anj = zext i8 %i.ani to i32
  %i.ank = mul nuw nsw i32 %i.anj, %i.ang
  %i.anl = add nuw nsw i32 %i.and, %i.ank
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ali, i64 %indvars.iv1183
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !84
  %i.ano = zext i8 %i.ann to i32
  %i.anp = getelementptr inbounds i8, ptr %i.ze, i64 %i.amr
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !84
  %i.anr = zext i8 %i.anq to i32
  %i.ans = mul nuw nsw i32 %i.anr, %i.ano
  %i.ant = add nuw nsw i32 %i.anl, %i.ans
  %i.anu = lshr i32 %i.ant, 2
  %gep1428 = getelementptr [2 x i8], ptr %invariant.gep1427, i64 %indvars.iv1183 ; 2 uses
  %i.anv = load i16, ptr %gep1428, align 2, !tbaa !184
  %i.anw = trunc nuw i32 %i.anu to i16
  %i.anx = sub i16 %i.anv, %i.anw
  store i16 %i.anx, ptr %gep1428, align 2, !tbaa !184
  %indvars.iv.next1184 = add nuw nsw i64 %indvars.iv1183, 1 ; 2 uses
  %i.any = icmp samesign ult i64 %indvars.iv.next1184, %i.ajq
  br i1 %i.any, label %scalar.ph1938, label %._crit_edge1014, !llvm.loop !245

._crit_edge1014:                                  ; preds = %scalar.ph1938, %middle.block1954
  %indvars.iv.next1187 = add nuw nsw i64 %indvars.iv1186, 1 ; 2 uses
  %i.anz = icmp slt i64 %indvars.iv.next1187, %i.vn
  br i1 %i.anz, label %.lr.ph1013, label %add_yblock.exit.i, !llvm.loop !246

add_yblock.exit.i:                                ; preds = %._crit_edge1014, %bb.az
  %indvars.iv.next1190 = add nuw nsw i64 %indvars.iv1189, 1 ; 2 uses
  %exitcond1193.not = icmp eq i64 %indvars.iv.next1190, %wide.trip.count1192
  br i1 %exitcond1193.not, label %predict_slice.exit, label %bb.av, !llvm.loop !247

predict_slice.exit:                               ; preds = %._crit_edge1009, %add_yblock.exit.i, %bb.au, %.preheader913, %bb.at
  %i.aoa = add nuw nsw i32 %.0.i5871022, 1
  %exitcond1194.not = icmp eq i32 %.0.i5871022, %i.tg
  br i1 %exitcond1194.not, label %predict_plane.exit589, label %bb.ao, !llvm.loop !248

predict_plane.exit589:                            ; preds = %predict_slice.exit, %.loopexit928
  %i.aob = icmp eq i64 %indvars.iv1267, 0         ; 3 uses
  br i1 %i.aob, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %predict_plane.exit589
  %i.aoc = load i32, ptr %i.cf, align 8, !tbaa !128
  %i.aod = icmp eq i32 %i.aoc, 2
  br i1 %i.aod, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.aoe = load i32, ptr %i.cn, align 8, !tbaa !76
  %i.aof = and i32 %i.aoe, 1024
  %.not572 = icmp eq i32 %i.aof, 0
  br i1 %.not572, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.aog = load i32, ptr %i.ll, align 16, !tbaa !249
  %i.aoh = load i32, ptr %i.lm, align 4, !tbaa !250
  %i.aoi = icmp sgt i32 %i.aog, %i.aoh
  br i1 %i.aoi, label %.critedge583, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %predict_plane.exit589
  %i.aoj = load i32, ptr %i.en, align 8, !tbaa !142
  %i.aok = icmp eq i32 %i.aoj, -128
  %i.aol = icmp sgt i32 %i.qx, 0
  %or.cond1113 = select i1 %i.rd, i1 %i.aol, i1 false ; 2 uses
  br i1 %i.aok, label %.preheader923, label %.preheader925

.preheader925:                                    ; preds = %bb.bm
  br i1 %or.cond1113, label %.preheader912.lr.ph.split, label %.loopexit924

.preheader912.lr.ph.split:                        ; preds = %.preheader925
  %i.aom = load ptr, ptr %i.ky, align 16, !tbaa !182 ; 2 uses
  %i.aon = load ptr, ptr %i.ln, align 16, !tbaa !251 ; 2 uses
  %i.aoo = zext nneg i32 %i.qx to i64             ; 4 uses
  %wide.trip.count1203 = zext nneg i32 %i.qz to i64
  %min.iters.check1851 = icmp ult i32 %i.qx, 8
  %n.vec1853 = and i64 %i.aoo, 2147483640         ; 3 uses
  %cmp.n1860 = icmp eq i64 %n.vec1853, %i.aoo
  br label %.preheader912

.preheader923:                                    ; preds = %bb.bm
  br i1 %or.cond1113, label %.preheader911.lr.ph.split, label %.loopexit924

.preheader911.lr.ph.split:                        ; preds = %.preheader923
  %i.aop = load ptr, ptr %i.ky, align 16, !tbaa !182 ; 2 uses
  %i.aoq = load ptr, ptr %i.ln, align 16, !tbaa !251 ; 2 uses
  %i.aor = zext nneg i32 %i.qx to i64             ; 4 uses
  %wide.trip.count1213 = zext nneg i32 %i.qz to i64
  %min.iters.check1839 = icmp ult i32 %i.qx, 8
  %n.vec1841 = and i64 %i.aor, 2147483640         ; 3 uses
  %cmp.n1848 = icmp eq i64 %n.vec1841, %i.aor
  br label %.preheader911

.preheader911:                                    ; preds = %.preheader911.lr.ph.split, %._crit_edge1032
  %indvars.iv1210 = phi i64 [ 0, %.preheader911.lr.ph.split ], [ %indvars.iv.next1211, %._crit_edge1032 ] ; 2 uses
  %i.aos = mul nuw nsw i64 %indvars.iv1210, %i.aor ; 2 uses
  br i1 %min.iters.check1839, label %scalar.ph1838.preheader, label %vector.body1842

vector.body1842:                                  ; preds = %.preheader911, %vector.body1842
  %index1843 = phi i64 [ %index.next1846, %vector.body1842 ], [ 0, %.preheader911 ] ; 2 uses
  %i.aot = add nuw nsw i64 %index1843, %i.aos     ; 2 uses
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %i.aot ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  %wide.load1844 = load <4 x i16>, ptr %i.aou, align 2, !tbaa !184
  %wide.load1845 = load <4 x i16>, ptr %i.aov, align 2, !tbaa !184
  %i.aow = sext <4 x i16> %wide.load1844 to <4 x i32>
  %i.aox = sext <4 x i16> %wide.load1845 to <4 x i32>
  %i.aoy = add nsw <4 x i32> %i.aow, splat (i32 7)
  %i.aoz = add nsw <4 x i32> %i.aox, splat (i32 7)
  %i.apa = ashr <4 x i32> %i.aoy, splat (i32 4)
  %i.apb = ashr <4 x i32> %i.aoz, splat (i32 4)
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %i.aot ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 16
  store <4 x i32> %i.apa, ptr %i.apc, align 4, !tbaa !93
  store <4 x i32> %i.apb, ptr %i.apd, align 4, !tbaa !93
  %index.next1846 = add nuw i64 %index1843, 8     ; 2 uses
  %i.ape = icmp eq i64 %index.next1846, %n.vec1841
  br i1 %i.ape, label %middle.block1847, label %vector.body1842, !llvm.loop !252

middle.block1847:                                 ; preds = %vector.body1842
  br i1 %cmp.n1848, label %._crit_edge1032, label %scalar.ph1838.preheader

scalar.ph1838.preheader:                          ; preds = %.preheader911, %middle.block1847
  %indvars.iv1205.ph = phi i64 [ 0, %.preheader911 ], [ %n.vec1841, %middle.block1847 ]
  br label %scalar.ph1838

scalar.ph1838:                                    ; preds = %scalar.ph1838.preheader, %scalar.ph1838
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %scalar.ph1838 ], [ %indvars.iv1205.ph, %scalar.ph1838.preheader ] ; 2 uses
  %i.apf = add nuw nsw i64 %indvars.iv1205, %i.aos ; 2 uses
  %i.apg = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %i.apf
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !184
  %i.api = sext i16 %i.aph to i32
  %i.apj = add nsw i32 %i.api, 7
  %i.apk = ashr i32 %i.apj, 4
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %i.apf
  store i32 %i.apk, ptr %i.apl, align 4, !tbaa !93
  %indvars.iv.next1206 = add nuw nsw i64 %indvars.iv1205, 1 ; 2 uses
  %exitcond1209.not = icmp eq i64 %indvars.iv.next1206, %i.aor
  br i1 %exitcond1209.not, label %._crit_edge1032, label %scalar.ph1838, !llvm.loop !253

._crit_edge1032:                                  ; preds = %scalar.ph1838, %middle.block1847
  %indvars.iv.next1211 = add nuw nsw i64 %indvars.iv1210, 1 ; 2 uses
  %exitcond1214.not = icmp eq i64 %indvars.iv.next1211, %wide.trip.count1213
  br i1 %exitcond1214.not, label %.loopexit924, label %.preheader911, !llvm.loop !254

.preheader912:                                    ; preds = %.preheader912.lr.ph.split, %._crit_edge1028
  %indvars.iv1200 = phi i64 [ 0, %.preheader912.lr.ph.split ], [ %indvars.iv.next1201, %._crit_edge1028 ] ; 2 uses
  %i.apm = mul nuw nsw i64 %indvars.iv1200, %i.aoo ; 2 uses
  br i1 %min.iters.check1851, label %scalar.ph1850.preheader, label %vector.body1854

vector.body1854:                                  ; preds = %.preheader912, %vector.body1854
  %index1855 = phi i64 [ %index.next1858, %vector.body1854 ], [ 0, %.preheader912 ] ; 2 uses
  %i.apn = add nuw nsw i64 %index1855, %i.apm     ; 2 uses
  %i.apo = getelementptr inbounds nuw [2 x i8], ptr %i.aom, i64 %i.apn ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %wide.load1856 = load <4 x i16>, ptr %i.apo, align 2, !tbaa !184
  %wide.load1857 = load <4 x i16>, ptr %i.app, align 2, !tbaa !184
  %i.apq = sext <4 x i16> %wide.load1856 to <4 x i32>
  %i.apr = sext <4 x i16> %wide.load1857 to <4 x i32>
  %i.aps = shl nsw <4 x i32> %i.apq, splat (i32 4)
  %i.apt = shl nsw <4 x i32> %i.apr, splat (i32 4)
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.aon, i64 %i.apn ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  store <4 x i32> %i.aps, ptr %i.apu, align 4, !tbaa !93
  store <4 x i32> %i.apt, ptr %i.apv, align 4, !tbaa !93
  %index.next1858 = add nuw i64 %index1855, 8     ; 2 uses
  %i.apw = icmp eq i64 %index.next1858, %n.vec1853
  br i1 %i.apw, label %middle.block1859, label %vector.body1854, !llvm.loop !255

middle.block1859:                                 ; preds = %vector.body1854
  br i1 %cmp.n1860, label %._crit_edge1028, label %scalar.ph1850.preheader

scalar.ph1850.preheader:                          ; preds = %.preheader912, %middle.block1859
  %indvars.iv1195.ph = phi i64 [ 0, %.preheader912 ], [ %n.vec1853, %middle.block1859 ]
  br label %scalar.ph1850

scalar.ph1850:                                    ; preds = %scalar.ph1850.preheader, %scalar.ph1850
  %indvars.iv1195 = phi i64 [ %indvars.iv.next1196, %scalar.ph1850 ], [ %indvars.iv1195.ph, %scalar.ph1850.preheader ] ; 2 uses
  %i.apx = add nuw nsw i64 %indvars.iv1195, %i.apm ; 2 uses
  %i.apy = getelementptr inbounds nuw [2 x i8], ptr %i.aom, i64 %i.apx
  %i.apz = load i16, ptr %i.apy, align 2, !tbaa !184
  %i.aqa = sext i16 %i.apz to i32
  %i.aqb = shl nsw i32 %i.aqa, 4
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.aon, i64 %i.apx
  store i32 %i.aqb, ptr %i.aqc, align 4, !tbaa !93
  %indvars.iv.next1196 = add nuw nsw i64 %indvars.iv1195, 1 ; 2 uses
  %exitcond1199.not = icmp eq i64 %indvars.iv.next1196, %i.aoo
  br i1 %exitcond1199.not, label %._crit_edge1028, label %scalar.ph1850, !llvm.loop !256

._crit_edge1028:                                  ; preds = %scalar.ph1850, %middle.block1859
  %indvars.iv.next1201 = add nuw nsw i64 %indvars.iv1200, 1 ; 2 uses
  %exitcond1204.not = icmp eq i64 %indvars.iv.next1201, %wide.trip.count1203
  br i1 %exitcond1204.not, label %.loopexit924, label %.preheader912, !llvm.loop !257

.loopexit924:                                     ; preds = %._crit_edge1028, %._crit_edge1032, %.preheader925, %.preheader923
  %i.aqd = load ptr, ptr %i.ln, align 16, !tbaa !251
  %i.aqe = load ptr, ptr %i.lo, align 8, !tbaa !258
  %i.aqf = load i32, ptr %i.la, align 4, !tbaa !78
  %i.aqg = load i32, ptr %i.kr, align 8, !tbaa !173
  tail call void @ff_spatial_dwt(ptr noundef %i.aqd, ptr noundef %i.aqe, i32 noundef %i.qx, i32 noundef %i.qz, i32 noundef %i.qx, i32 noundef %i.aqf, i32 noundef %i.aqg) #12
  %i.aqh = load i32, ptr %i.do, align 8, !tbaa !103
  %i.aqi = icmp ne i32 %i.aqh, 0
  %or.cond = and i1 %i.aob, %i.aqi
  br i1 %or.cond, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %.loopexit924
  %i.aqj = load i32, ptr %i.kr, align 8, !tbaa !173 ; 2 uses
  %i.aqk = icmp sgt i32 %i.aqj, 0
  br i1 %i.aqk, label %.lr.ph104.i, label %._crit_edge105.thread.i

.lr.ph104.i:                                      ; preds = %bb.bn
  %wide.trip.count135.i = zext nneg i32 %i.aqj to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %.lr.ph104.i
  %indvars.iv132.i = phi i64 [ 0, %.lr.ph104.i ], [ %indvars.iv.next133.i, %bb.bq ] ; 3 uses
  %.073101.i = phi i32 [ 0, %.lr.ph104.i ], [ %.2.lcssa.i, %bb.bq ]
  %.not.i781 = icmp ne i64 %indvars.iv132.i, 0
  %i.aql = getelementptr inbounds nuw [4640 x i8], ptr %i.lp, i64 %indvars.iv132.i
  %i.aqm = zext i1 %.not.i781 to i64
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge97.i, %bb.bo
  %indvars.iv128.i = phi i64 [ %i.aqm, %bb.bo ], [ %indvars.iv.next129.i, %._crit_edge97.i ] ; 3 uses
  %.17499.i = phi i32 [ %.073101.i, %bb.bo ], [ %.2.lcssa.i, %._crit_edge97.i ] ; 2 uses
  %i.aqn = getelementptr inbounds nuw [1160 x i8], ptr %i.aql, i64 %indvars.iv128.i ; 6 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 32
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !178 ; 24 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  %i.aqr = load i32, ptr %i.aqq, align 8, !tbaa !259 ; 9 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqn, i64 12
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !260
  %.12.val.fr.i.i = freeze i32 %i.aqt             ; 4 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqn, i64 4
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !183 ; 4 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16
end_hunk_0
begin_hunk_1_@encode_frame:bb.a
  %i.bsc = icmp ugt i32 %i.bsb, 254
  br i1 %i.bsc, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.bsd = load i32, ptr %i.lz, align 8, !tbaa !320
  %i.bse = add nsw i32 %i.bsd, 1
  store i32 %i.bse, ptr %i.lz, align 8, !tbaa !320
  br label %renorm_encoder.exit.i250.us.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.bsf = ashr i32 %i.bsb, 31                    ; 2 uses
  %i.bsg = load i32, ptr %i.ma, align 4, !tbaa !321
  %i.bsh = add nsw i32 %i.bsf, 1
  %i.bsi = add i32 %i.bsh, %i.bsg
  %i.bsj = trunc i32 %i.bsi to i8
  %i.bsk = load ptr, ptr %i.lb, align 8, !tbaa !322
  store i8 %i.bsj, ptr %i.bsk, align 1, !tbaa !84
  %i.bsl = load i32, ptr %i.ma, align 4, !tbaa !321
  %i.bsm = icmp sgt i32 %i.bsl, -1
  %i.bsn = load ptr, ptr %i.lb, align 8, !tbaa !322
  %i.bso = zext i1 %i.bsm to i64
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsn, i64 %i.bso
  store ptr %i.bsp, ptr %i.lb, align 8, !tbaa !322
  %i.bsq = load i32, ptr %i.lz, align 8, !tbaa !320
  %.not16.i.i251.us.i.i = icmp eq i32 %i.bsq, 0
  br i1 %.not16.i.i251.us.i.i, label %._crit_edge.i.i254.us.i.i, label %.lr.ph.i.i252.us.i.i

.lr.ph.i.i252.us.i.i:                             ; preds = %bb.fc
  %i.bsr = trunc nsw i32 %i.bsf to i8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fd, %.lr.ph.i.i252.us.i.i
  %i.bss = load ptr, ptr %i.lb, align 8, !tbaa !322 ; 2 uses
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bss, i64 1
  store ptr %i.bst, ptr %i.lb, align 8, !tbaa !322
  store i8 %i.bsr, ptr %i.bss, align 1, !tbaa !84
  %i.bsu = load i32, ptr %i.lz, align 8, !tbaa !320
  %i.bsv = add nsw i32 %i.bsu, -1                 ; 2 uses
  store i32 %i.bsv, ptr %i.lz, align 8, !tbaa !320
  %.not.i.i253.us.i.i = icmp eq i32 %i.bsv, 0
  br i1 %.not.i.i253.us.i.i, label %._crit_edge.i.i254.us.i.i, label %bb.fd, !llvm.loop !323

._crit_edge.i.i254.us.i.i:                        ; preds = %bb.fd, %bb.fc
  %i.bsw = load i32, ptr %i.f, align 16, !tbaa !319 ; 2 uses
  %i.bsx = ashr i32 %i.bsw, 8
  store i32 %i.bsx, ptr %i.ma, align 4, !tbaa !321
  %.pre.i255.us.i.i = load i32, ptr %i.ly, align 4, !tbaa !318
  br label %renorm_encoder.exit.i250.us.i.i

renorm_encoder.exit.i250.us.i.i:                  ; preds = %._crit_edge.i.i254.us.i.i, %bb.fb
  %i.bsy = phi i32 [ %.sink.i247.us.i.i, %bb.fb ], [ %.pre.i255.us.i.i, %._crit_edge.i.i254.us.i.i ]
  %i.bsz = phi i32 [ %i.bsa, %bb.fb ], [ %i.bsw, %._crit_edge.i.i254.us.i.i ]
  %i.bta = shl i32 %i.bsz, 8
  %i.btb = and i32 %i.bta, 65280
  store i32 %i.btb, ptr %i.f, align 16, !tbaa !319
  %i.btc = shl i32 %i.bsy, 8
  store i32 %i.btc, ptr %i.ly, align 4, !tbaa !318
  br label %put_rac.exit256.us.i.i

put_rac.exit256.us.i.i:                           ; preds = %renorm_encoder.exit.i250.us.i.i, %bb.ez, %put_rac.exit.us.i.i
  %indvars.iv.next315.i.i = add nuw nsw i64 %indvars.iv314.i.i, 1 ; 2 uses
  %exitcond318.not.i.i = icmp eq i64 %indvars.iv.next315.i.i, %i.bls
  br i1 %exitcond318.not.i.i, label %._crit_edge.us296.i.i, label %bb.ea, !llvm.loop !324

.preheader.us.i.i:                                ; preds = %.lr.ph295.split.us.i.i
  %i.btd = mul nsw i64 %indvars.iv319.i.i, %i.blt ; 2 uses
  %.not.us.i.i = icmp eq i64 %indvars.iv319.i.i, 0
  %i.bte = add nsw i64 %indvars.iv319.i.i, -1
  %i.btf = mul nsw i64 %i.bte, %i.blt             ; 2 uses
  %i.btg = add nsw i64 %i.btf, 4294967295
  %i.bth = add nsw i64 %i.btd, 4294967295
  %i.bti = trunc nuw nsw i64 %indvars.iv319.i.i to i32 ; 2 uses
  %i.btj = lshr i32 %i.bti, 1
  %i.btk = and i32 %i.bti, 2147483646
  %i.btl = mul nsw i32 %i.btk, %i.axz
  %invariant.gep345.i.i = getelementptr [2 x i8], ptr %i.axv, i64 %i.btd
  %invariant.gep347.i.i = getelementptr [2 x i8], ptr %i.axv, i64 %i.btf ; 2 uses
  br label %bb.ea

._crit_edge.us296.i.i:                            ; preds = %put_rac.exit256.us.i.i
  %indvars.iv.next320.i.i = add nuw nsw i64 %indvars.iv319.i.i, 1 ; 2 uses
  %exitcond323.not.i.i = icmp eq i64 %indvars.iv.next320.i.i, %wide.trip.count322.i.i
  br i1 %exitcond323.not.i.i, label %encode_subband.exit, label %.lr.ph295.split.us.i.i, !llvm.loop !325

.lr.ph295.split.i.i:                              ; preds = %.lr.ph295.i.i
  %i.btm = load ptr, ptr %i.lx, align 16, !tbaa !317
  %i.btn = load ptr, ptr %i.lb, align 8, !tbaa !194
  %i.bto = ptrtoint ptr %i.btm to i64
  %i.btp = ptrtoint ptr %i.btn to i64
  %i.btq = sub i64 %i.bto, %i.btp
  %i.btr = icmp slt i64 %i.btq, %i.blp
  br i1 %i.btr, label %.split.us.i.i, label %encode_subband.exit

.split.us.i.i:                                    ; preds = %.lr.ph295.split.us.i.i, %.lr.ph295.split.i.i
  %i.bts = load ptr, ptr %i.i, align 8, !tbaa !108
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bts, i32 noundef 16, ptr noundef nonnull @.str.34) #12
  br label %encode_subband.exit

encode_subband.exit:                              ; preds = %._crit_edge.us296.i.i, %.split.us.i.i, %.lr.ph295.split.i.i, %bb.dz, %decorrelate.exit
  %i.btt = getelementptr inbounds nuw i8, ptr %i.axt, i64 64
  %i.btu = load ptr, ptr %i.btt, align 8, !tbaa !312 ; 2 uses
  %i.btv = icmp eq ptr %i.btu, null
  br i1 %i.btv, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %encode_subband.exit
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btu, i64 4
  %i.btx = load i32, ptr %i.btw, align 4, !tbaa !183
  %i.bty = load i32, ptr %i.axy, align 4, !tbaa !183
  %i.btz = shl nsw i32 %i.bty, 1
  %i.bua = icmp eq i32 %i.btx, %i.btz
  br i1 %i.bua, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30, i32 noundef 1998) #12
  tail call void @abort() #13
  unreachable

bb.fg:                                            ; preds = %bb.fe, %encode_subband.exit
  br i1 %i.bdj, label %bb.fh, label %correlate.exit

bb.fh:                                            ; preds = %bb.fg
  %i.bub = load ptr, ptr %i.axu, align 8, !tbaa !178 ; 12 uses
  %.val771 = load i32, ptr %i.aya, align 8, !tbaa !259 ; 4 uses
  %.val772 = load i32, ptr %i.ayc, align 4, !tbaa !260 ; 2 uses
  %i.buc = icmp sgt i32 %.val772, 0
  %i.bud = icmp sgt i32 %.val771, 0
  %or.cond.i809 = select i1 %i.buc, i1 %i.bud, i1 false
  br i1 %or.cond.i809, label %.preheader.preheader.i810, label %correlate.exit

.preheader.preheader.i810:                        ; preds = %bb.fh
  %i.bue = load i32, ptr %i.axy, align 4, !tbaa !183
  %i.buf = sext i32 %i.bue to i64                 ; 5 uses
  %wide.trip.count23.i = zext nneg i32 %.val772 to i64
  %wide.trip.count.i811 = zext nneg i32 %.val771 to i64 ; 2 uses
  %exitcond.peel.not.i = icmp eq i32 %.val771, 1  ; 2 uses
  %i.bug = shl nsw i64 %i.buf, 1
  %i.buh = add nsw i64 %wide.trip.count.i811, -1  ; 2 uses
  %i.bui = xor i64 %i.buf, -1
  %invariant.gep2210 = getelementptr [2 x i8], ptr %i.bub, i64 %i.bui
  %xtraiter2181 = and i64 %i.buh, 3               ; 3 uses
  %i.buj = add nsw i32 %.val771, -2
  %i.buk = icmp ult i32 %i.buj, 3
  %unroll_iter2185 = and i64 %i.buh, -4
  %lcmp.mod2183.not = icmp eq i64 %xtraiter2181, 0
  %lcmp.mod2184 = icmp ne i64 %xtraiter2181, 0
  br label %.preheader.i812

.preheader.i812:                                  ; preds = %._crit_edge.i818, %.preheader.preheader.i810
  %indvars.iv20.i = phi i64 [ 0, %.preheader.preheader.i810 ], [ %indvars.iv.next21.i, %._crit_edge.i818 ] ; 4 uses
  %i.bul = mul i64 %i.bug, %indvars.iv20.i
  %scevgep2142 = getelementptr i8, ptr %i.bub, i64 %i.bul
  %i.bum = mul nsw i64 %indvars.iv20.i, %i.buf    ; 3 uses
  %.not58.i = icmp eq i64 %indvars.iv20.i, 0
  br i1 %.not58.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %.preheader.i812
  %i.bun = sub nsw i64 %i.bum, %i.buf
  %i.buo = getelementptr inbounds [2 x i8], ptr %i.bub, i64 %i.bun
  %i.bup = load i16, ptr %i.buo, align 2, !tbaa !184
  %i.buq = getelementptr inbounds [2 x i8], ptr %i.bub, i64 %i.bum ; 2 uses
  %i.bur = load i16, ptr %i.buq, align 2, !tbaa !184
  %i.bus = add i16 %i.bur, %i.bup
  store i16 %i.bus, ptr %i.buq, align 2, !tbaa !184
  br i1 %exitcond.peel.not.i, label %._crit_edge.i818, label %.lr.ph.split.peel.next.i.preheader

.lr.ph.split.peel.next.i.preheader:               ; preds = %bb.fi
  %load_initial = load i16, ptr %scevgep2142, align 2
  br label %.lr.ph.split.peel.next.i

bb.fj:                                            ; preds = %.preheader.i812
  br i1 %exitcond.peel.not.i, label %._crit_edge.i818, label %.lr.ph.split.us.split.us.peel.next.i.preheader

.lr.ph.split.us.split.us.peel.next.i.preheader:   ; preds = %bb.fj
  %load_initial2143 = load i16, ptr %i.bub, align 2 ; 2 uses
  br i1 %i.buk, label %.lr.ph.split.us.split.us.peel.next.i.epil.preheader, label %.lr.ph.split.us.split.us.peel.next.i

.lr.ph.split.us.split.us.peel.next.i:             ; preds = %.lr.ph.split.us.split.us.peel.next.i.preheader, %.lr.ph.split.us.split.us.peel.next.i
  %store_forwarded2144 = phi i16 [ %i.bvh, %.lr.ph.split.us.split.us.peel.next.i ], [ %load_initial2143, %.lr.ph.split.us.split.us.peel.next.i.preheader ]
  %indvars.iv14.i819 = phi i64 [ %indvars.iv.next15.i820.3, %.lr.ph.split.us.split.us.peel.next.i ], [ 1, %.lr.ph.split.us.split.us.peel.next.i.preheader ] ; 5 uses
  %niter2186 = phi i64 [ %niter2186.next.3, %.lr.ph.split.us.split.us.peel.next.i ], [ 0, %.lr.ph.split.us.split.us.peel.next.i.preheader ]
  %i.but = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i819 ; 2 uses
  %i.buu = load i16, ptr %i.but, align 2, !tbaa !184
  %i.buv = add i16 %i.buu, %store_forwarded2144   ; 2 uses
  store i16 %i.buv, ptr %i.but, align 2, !tbaa !184
  %i.buw = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i819
  %i.bux = getelementptr i8, ptr %i.buw, i64 2    ; 2 uses
  %i.buy = load i16, ptr %i.bux, align 2, !tbaa !184
  %i.buz = add i16 %i.buy, %i.buv                 ; 2 uses
  store i16 %i.buz, ptr %i.bux, align 2, !tbaa !184
  %i.bva = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i819
  %i.bvb = getelementptr i8, ptr %i.bva, i64 4    ; 2 uses
  %i.bvc = load i16, ptr %i.bvb, align 2, !tbaa !184
  %i.bvd = add i16 %i.bvc, %i.buz                 ; 2 uses
  store i16 %i.bvd, ptr %i.bvb, align 2, !tbaa !184
  %i.bve = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i819
  %i.bvf = getelementptr i8, ptr %i.bve, i64 6    ; 2 uses
  %i.bvg = load i16, ptr %i.bvf, align 2, !tbaa !184
  %i.bvh = add i16 %i.bvg, %i.bvd                 ; 3 uses
  store i16 %i.bvh, ptr %i.bvf, align 2, !tbaa !184
  %indvars.iv.next15.i820.3 = add nuw nsw i64 %indvars.iv14.i819, 4 ; 2 uses
  %niter2186.next.3 = add nuw nsw i64 %niter2186, 4 ; 2 uses
  %niter2186.ncmp.3 = icmp eq i64 %niter2186.next.3, %unroll_iter2185
  br i1 %niter2186.ncmp.3, label %._crit_edge.i818.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.peel.next.i, !llvm.loop !326

.lr.ph.split.peel.next.i:                         ; preds = %.lr.ph.split.peel.next.i.preheader, %.lr.ph.split.peel.next.i
  %store_forwarded = phi i16 [ %load_initial, %.lr.ph.split.peel.next.i.preheader ], [ %i.bvx, %.lr.ph.split.peel.next.i ]
  %indvars.iv.i813 = phi i64 [ 1, %.lr.ph.split.peel.next.i.preheader ], [ %indvars.iv.next.i816, %.lr.ph.split.peel.next.i ] ; 2 uses
  %i.bvi = add nsw i64 %indvars.iv.i813, %i.bum   ; 3 uses
  %i.bvj = sext i16 %store_forwarded to i32       ; 3 uses
  %i.bvk = sub nsw i64 %i.bvi, %i.buf
  %i.bvl = getelementptr inbounds [2 x i8], ptr %i.bub, i64 %i.bvk
  %i.bvm = load i16, ptr %i.bvl, align 2, !tbaa !184
  %i.bvn = sext i16 %i.bvm to i32                 ; 3 uses
  %i.bvo = add nsw i32 %i.bvn, %i.bvj
  %gep2211 = getelementptr [2 x i8], ptr %invariant.gep2210, i64 %i.bvi
  %i.bvp = load i16, ptr %gep2211, align 2, !tbaa !184
  %i.bvq = sext i16 %i.bvp to i32
  %i.bvr = sub nsw i32 %i.bvo, %i.bvq
  %..i.i814 = tail call i32 @llvm.smax.i32(i32 %i.bvj, i32 %i.bvn)
  %.20.i.i815 = tail call i32 @llvm.smin.i32(i32 %i.bvj, i32 %i.bvn)
  %i.bvs = tail call i32 @llvm.smin.i32(i32 %i.bvr, i32 %..i.i814)
  %i.bvt = tail call noundef i32 @llvm.smax.i32(i32 %i.bvs, i32 %.20.i.i815)
  %i.bvu = getelementptr inbounds [2 x i8], ptr %i.bub, i64 %i.bvi ; 2 uses
  %i.bvv = load i16, ptr %i.bvu, align 2, !tbaa !184
  %i.bvw = trunc nsw i32 %i.bvt to i16
  %i.bvx = add i16 %i.bvv, %i.bvw                 ; 2 uses
  store i16 %i.bvx, ptr %i.bvu, align 2, !tbaa !184
  %indvars.iv.next.i816 = add nuw nsw i64 %indvars.iv.i813, 1 ; 2 uses
  %exitcond.not.i817 = icmp eq i64 %indvars.iv.next.i816, %wide.trip.count.i811
  br i1 %exitcond.not.i817, label %._crit_edge.i818, label %.lr.ph.split.peel.next.i, !llvm.loop !327

._crit_edge.i818.loopexit.unr-lcssa:              ; preds = %.lr.ph.split.us.split.us.peel.next.i
  br i1 %lcmp.mod2183.not, label %._crit_edge.i818, label %.lr.ph.split.us.split.us.peel.next.i.epil.preheader

.lr.ph.split.us.split.us.peel.next.i.epil.preheader: ; preds = %._crit_edge.i818.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.peel.next.i.preheader
  %store_forwarded2144.epil.init = phi i16 [ %load_initial2143, %.lr.ph.split.us.split.us.peel.next.i.preheader ], [ %i.bvh, %._crit_edge.i818.loopexit.unr-lcssa ]
  %indvars.iv14.i819.epil.init = phi i64 [ 1, %.lr.ph.split.us.split.us.peel.next.i.preheader ], [ %indvars.iv.next15.i820.3, %._crit_edge.i818.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2184)
  br label %.lr.ph.split.us.split.us.peel.next.i.epil

.lr.ph.split.us.split.us.peel.next.i.epil:        ; preds = %.lr.ph.split.us.split.us.peel.next.i.epil, %.lr.ph.split.us.split.us.peel.next.i.epil.preheader
  %store_forwarded2144.epil = phi i16 [ %store_forwarded2144.epil.init, %.lr.ph.split.us.split.us.peel.next.i.epil.preheader ], [ %i.bwa, %.lr.ph.split.us.split.us.peel.next.i.epil ]
  %indvars.iv14.i819.epil = phi i64 [ %indvars.iv14.i819.epil.init, %.lr.ph.split.us.split.us.peel.next.i.epil.preheader ], [ %indvars.iv.next15.i820.epil, %.lr.ph.split.us.split.us.peel.next.i.epil ] ; 2 uses
  %epil.iter2182 = phi i64 [ 0, %.lr.ph.split.us.split.us.peel.next.i.epil.preheader ], [ %epil.iter2182.next, %.lr.ph.split.us.split.us.peel.next.i.epil ]
  %i.bvy = getelementptr [2 x i8], ptr %i.bub, i64 %indvars.iv14.i819.epil ; 2 uses
  %i.bvz = load i16, ptr %i.bvy, align 2, !tbaa !184
  %i.bwa = add i16 %i.bvz, %store_forwarded2144.epil ; 2 uses
  store i16 %i.bwa, ptr %i.bvy, align 2, !tbaa !184
  %indvars.iv.next15.i820.epil = add nuw nsw i64 %indvars.iv14.i819.epil, 1
  %epil.iter2182.next = add i64 %epil.iter2182, 1 ; 2 uses
  %epil.iter2182.cmp.not = icmp eq i64 %epil.iter2182.next, %xtraiter2181
  br i1 %epil.iter2182.cmp.not, label %._crit_edge.i818, label %.lr.ph.split.us.split.us.peel.next.i.epil, !llvm.loop !328

._crit_edge.i818:                                 ; preds = %.lr.ph.split.peel.next.i, %._crit_edge.i818.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.peel.next.i.epil, %bb.fj, %bb.fi
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %correlate.exit, label %.preheader.i812, !llvm.loop !329

correlate.exit:                                   ; preds = %._crit_edge.i818, %bb.fh, %bb.fg
  %indvars.iv.next1216 = add nuw nsw i64 %indvars.iv1215, 1 ; 2 uses
  %exitcond1218.not = icmp eq i64 %indvars.iv.next1216, 4
  br i1 %exitcond1218.not, label %bb.fk, label %bb.bv, !llvm.loop !330

bb.fk:                                            ; preds = %correlate.exit
  %indvars.iv.next1220 = add nuw nsw i64 %indvars.iv1219, 1 ; 2 uses
  %i.bwb = load i32, ptr %i.kr, align 8, !tbaa !173 ; 5 uses
  %i.bwc = sext i32 %i.bwb to i64
  %i.bwd = icmp slt i64 %indvars.iv.next1220, %i.bwc
  br i1 %i.bwd, label %bb.bu, label %.preheader922, !llvm.loop !331

bb.fl:                                            ; preds = %.lr.ph1053, %.split1050.us
  %indvars.iv1226 = phi i64 [ 0, %.lr.ph1053 ], [ %indvars.iv.next1227, %.split1050.us ] ; 3 uses
  %i.bwe = getelementptr inbounds nuw [4640 x i8], ptr %i.axq, i64 %indvars.iv1226 ; 8 uses
  br i1 %.not1121, label %.split1050.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.fl
  %.not575 = icmp ne i64 %indvars.iv1226, 0       ; 4 uses
  %i.bwf = zext i1 %.not575 to i64
  %i.bwg = getelementptr inbounds nuw [1160 x i8], ptr %i.bwe, i64 %i.bwf ; 5 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwg, i64 32
  %i.bwi = load ptr, ptr %i.bwh, align 8, !tbaa !178
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwg, i64 8
  %i.bwk = load i32, ptr %i.bwj, align 8, !tbaa !259 ; 2 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwg, i64 12
  %i.bwm = load i32, ptr %i.bwl, align 4, !tbaa !260 ; 2 uses
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwg, i64 16
  %i.bwo = load i32, ptr %i.bwn, align 8, !tbaa !190
  %i.bwp = add nsw i32 %i.bwo, %.val773.fr
  %i.bwq = tail call i32 @llvm.smax.i32(i32 %i.bwp, i32 0)
  %i.bwr = tail call i32 @llvm.umin.i32(i32 %i.bwq, i32 512) ; 2 uses
  %i.bws = and i32 %i.bwr, 31
  %i.bwt = zext nneg i32 %i.bws to i64
  %i.bwu = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.bwt
  %i.bwv = load i8, ptr %i.bwu, align 1, !tbaa !84
  %i.bww = zext i8 %i.bwv to i32
  %i.bwx = lshr i32 %i.bwr, 5
  %i.bwy = shl nuw nsw i32 %i.bww, %i.bwx         ; 3 uses
  %i.bwz = mul nsw i32 %i.bwy, %.val774
  %i.bxa = ashr i32 %i.bwz, 3                     ; 2 uses
  %i.bxb = icmp sgt i32 %i.bwm, 0
  %i.bxc = icmp sgt i32 %i.bwk, 0
  %or.cond4.i = select i1 %i.bxb, i1 %i.bxc, i1 false
  br i1 %or.cond4.i, label %.preheader.preheader.i822, label %.split.1

.preheader.preheader.i822:                        ; preds = %.split.preheader
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bwg, i64 4
  %i.bxe = load i32, ptr %i.bxd, align 4, !tbaa !183
  %i.bxf = sext i32 %i.bxe to i64
  %wide.trip.count9.i = zext nneg i32 %i.bwm to i64
  %wide.trip.count.i823 = zext nneg i32 %i.bwk to i64
  br label %.preheader.i824

.preheader.i824:                                  ; preds = %._crit_edge.i832, %.preheader.preheader.i822
  %indvars.iv6.i = phi i64 [ 0, %.preheader.preheader.i822 ], [ %indvars.iv.next7.i, %._crit_edge.i832 ] ; 2 uses
  %i.bxg = mul nsw i64 %indvars.iv6.i, %i.bxf
  %invariant.gep.i825 = getelementptr [2 x i8], ptr %i.bwi, i64 %i.bxg
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fq, %.preheader.i824
  %indvars.iv.i826 = phi i64 [ 0, %.preheader.i824 ], [ %indvars.iv.next.i830, %bb.fq ] ; 2 uses
  %gep.i827 = getelementptr [2 x i8], ptr %invariant.gep.i825, i64 %indvars.iv.i826 ; 2 uses
  %i.bxh = load i16, ptr %gep.i827, align 2, !tbaa !184 ; 3 uses
  %i.bxi = sext i16 %i.bxh to i32                 ; 2 uses
  %i.bxj = icmp slt i16 %i.bxh, 0
  br i1 %i.bxj, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.bxk = mul i32 %i.bwy, %i.bxi
  %i.bxl = sub i32 %i.bxa, %i.bxk
  %i.bxm = lshr i32 %i.bxl, 11
  %i.bxn = trunc i32 %i.bxm to i16
  %i.bxo = sub i16 0, %i.bxn
  br label %.sink.split.i

bb.fo:                                            ; preds = %bb.fm
  %.not.i828 = icmp eq i16 %i.bxh, 0
  br i1 %.not.i828, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.bxp = mul nuw nsw i32 %i.bwy, %i.bxi
  %i.bxq = add nsw i32 %i.bxp, %i.bxa
  %i.bxr = lshr i32 %i.bxq, 11
  %i.bxs = trunc i32 %i.bxr to i16
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.fp, %bb.fn
  %.sink.i829 = phi i16 [ %i.bxs, %bb.fp ], [ %i.bxo, %bb.fn ]
  store i16 %.sink.i829, ptr %gep.i827, align 2, !tbaa !184
  br label %bb.fq

bb.fq:                                            ; preds = %.sink.split.i, %bb.fo
  %indvars.iv.next.i830 = add nuw nsw i64 %indvars.iv.i826, 1 ; 2 uses
  %exitcond.not.i831 = icmp eq i64 %indvars.iv.next.i830, %wide.trip.count.i823
  br i1 %exitcond.not.i831, label %._crit_edge.i832, label %bb.fm, !llvm.loop !332

._crit_edge.i832:                                 ; preds = %bb.fq
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1 ; 2 uses
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next7.i, %wide.trip.count9.i
  br i1 %exitcond10.not.i, label %.split.1, label %.preheader.i824, !llvm.loop !333

.split.1:                                         ; preds = %.split.preheader, %._crit_edge.i832
  %indvars.iv.next1223 = select i1 %.not575, i64 2, i64 1
  %i.bxt = getelementptr inbounds nuw [1160 x i8], ptr %i.bwe, i64 %indvars.iv.next1223 ; 5 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 32
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !178
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxt, i64 8
  %i.bxx = load i32, ptr %i.bxw, align 8, !tbaa !259 ; 2 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxt, i64 12
  %i.bxz = load i32, ptr %i.bxy, align 4, !tbaa !260 ; 2 uses
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxt, i64 16
  %i.byb = load i32, ptr %i.bya, align 8, !tbaa !190
  %i.byc = add nsw i32 %i.byb, %.val773.fr
  %i.byd = tail call i32 @llvm.smax.i32(i32 %i.byc, i32 0)
  %i.bye = tail call i32 @llvm.umin.i32(i32 %i.byd, i32 512) ; 2 uses
  %i.byf = and i32 %i.bye, 31
  %i.byg = zext nneg i32 %i.byf to i64
  %i.byh = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.byg
  %i.byi = load i8, ptr %i.byh, align 1, !tbaa !84
  %i.byj = zext i8 %i.byi to i32
  %i.byk = lshr i32 %i.bye, 5
  %i.byl = shl nuw nsw i32 %i.byj, %i.byk         ; 3 uses
  %i.bym = mul nsw i32 %i.byl, %.val774
  %i.byn = ashr i32 %i.bym, 3                     ; 2 uses
  %i.byo = icmp sgt i32 %i.bxz, 0
  %i.byp = icmp sgt i32 %i.bxx, 0
  %or.cond4.i.1 = select i1 %i.byo, i1 %i.byp, i1 false
  br i1 %or.cond4.i.1, label %.preheader.preheader.i822.1, label %.split.2

.preheader.preheader.i822.1:                      ; preds = %.split.1
  %i.byq = getelementptr inbounds nuw i8, ptr %i.bxt, i64 4
  %i.byr = load i32, ptr %i.byq, align 4, !tbaa !183
  %i.bys = sext i32 %i.byr to i64
  %wide.trip.count9.i.1 = zext nneg i32 %i.bxz to i64
  %wide.trip.count.i823.1 = zext nneg i32 %i.bxx to i64
  br label %.preheader.i824.1

.preheader.i824.1:                                ; preds = %._crit_edge.i832.1, %.preheader.preheader.i822.1
  %indvars.iv6.i.1 = phi i64 [ 0, %.preheader.preheader.i822.1 ], [ %indvars.iv.next7.i.1, %._crit_edge.i832.1 ] ; 2 uses
  %i.byt = mul nsw i64 %indvars.iv6.i.1, %i.bys
  %invariant.gep.i825.1 = getelementptr [2 x i8], ptr %i.bxv, i64 %i.byt
  br label %bb.fr
end_hunk_1
begin_hunk_2_@encode_frame:bb.a

.lr.ph1065.preheader:                             ; preds = %bb.ha, %same_block.exit279.i.i642, %same_block.exit272.i.i652, %same_block.exit.i.i659, %.split1390, %.split1391, %.split1392
  %.sroa.17850.0 = phi ptr [ %.1.i.i638, %bb.ha ], [ %.sroa.7845.0, %same_block.exit272.i.i652 ], [ %i.ckl, %same_block.exit279.i.i642 ], [ %.sroa.12848.0, %same_block.exit.i.i659 ], [ %i.ckl, %.split1390 ], [ %.sroa.7845.0, %.split1391 ], [ %.sroa.12848.0, %.split1392 ] ; 4 uses
  %i.cux = zext nneg i32 %spec.select264.i.i617 to i64 ; 3 uses
  %i.cuy = getelementptr i8, ptr %i.cjw, i64 %i.cfs
  %scevgep1509 = getelementptr i8, ptr %i.cuy, i64 %i.cfc
  %scevgep1510 = getelementptr i8, ptr %scevgep1509, i64 %umax
  %scevgep1511 = getelementptr i8, ptr %.sroa.7845.0, i64 %i.cfs
  %scevgep1512 = getelementptr i8, ptr %scevgep1511, i64 %umax
  %scevgep1513 = getelementptr i8, ptr %.sroa.12848.0, i64 %i.cfs
  %scevgep1514 = getelementptr i8, ptr %scevgep1513, i64 %umax
  %scevgep1515 = getelementptr i8, ptr %.sroa.17850.0, i64 %i.cfs
  %scevgep1516 = getelementptr i8, ptr %scevgep1515, i64 %umax
  %i.cuz = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.cva = shufflevector <4 x ptr> %i.cuz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cvb = insertelement <4 x ptr> poison, ptr %scevgep1506, i64 0
  %i.cvc = insertelement <4 x ptr> %i.cvb, ptr %scevgep1508, i64 1
  %i.cvd = insertelement <4 x ptr> %i.cvc, ptr %scevgep1510, i64 2
  %i.cve = insertelement <4 x ptr> %i.cvd, ptr %scevgep1512, i64 3
  %i.cvf = shufflevector <4 x ptr> %i.cuz, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.cvg = insertelement <2 x ptr> poison, ptr %scevgep1514, i64 0
  %i.cvh = insertelement <2 x ptr> %i.cvg, ptr %scevgep1516, i64 1
  %i.cvi = insertelement <4 x ptr> poison, ptr %scevgep1504, i64 0
  %i.cvj = insertelement <4 x ptr> %i.cvi, ptr %gep1440, i64 1
  %i.cvk = insertelement <4 x ptr> %i.cvj, ptr %i.ckl, i64 2
  %i.cvl = insertelement <4 x ptr> %i.cvk, ptr %.sroa.7845.0, i64 3
  %i.cvm = insertelement <4 x ptr> poison, ptr %scevgep1493, i64 0
  %i.cvn = shufflevector <4 x ptr> %i.cvm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cvo = insertelement <2 x ptr> poison, ptr %.sroa.12848.0, i64 0
  %i.cvp = insertelement <2 x ptr> %i.cvo, ptr %.sroa.17850.0, i64 1
  %i.cvq = insertelement <2 x ptr> poison, ptr %scevgep1493, i64 0
  %i.cvr = shufflevector <2 x ptr> %i.cvq, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %spec.select264.i.i617, 16
  %bound0 = icmp ult ptr %scevgep, %scevgep1498
  %bound1 = icmp ult ptr %scevgep1496, %scevgep1493
  %found.conflict = and i1 %bound0, %bound1
  %bound01520 = icmp ult ptr %scevgep, %scevgep1502
  %bound11521 = icmp ult ptr %scevgep1500, %scevgep1493
  %found.conflict1522 = and i1 %bound01520, %bound11521
  %i.cvs = icmp ult <4 x ptr> %i.cva, %i.cve
  %i.cvt = icmp ult <4 x ptr> %i.cvl, %i.cvn
  %i.cvu = icmp ult <2 x ptr> %i.cvf, %i.cvh
  %i.cvv = icmp ult <2 x ptr> %i.cvp, %i.cvr
  %bound01558 = icmp ult ptr %scevgep, %scevgep1519
  %bound11559 = icmp ult ptr %scevgep1517, %scevgep1493
  %i.cvw = insertelement <8 x i1> %i.cgg, i1 %bound01558, i64 6
  %i.cvx = shufflevector <4 x i1> %i.cvs, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvy = shufflevector <8 x i1> %i.cvx, <8 x i1> %i.cvw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.cvz = shufflevector <2 x i1> %i.cvu, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwa = shufflevector <8 x i1> %i.cvy, <8 x i1> %i.cvz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.cwb = shufflevector <2 x i1> %i.cvv, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwc = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.cwb, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.cwd = insertelement <8 x i1> %i.cwc, i1 %bound11559, i64 6
  %i.cwe = shufflevector <4 x i1> %i.cvt, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwf = shufflevector <8 x i1> %i.cwe, <8 x i1> %i.cwd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cwg = and <8 x i1> %i.cwa, %i.cwf
  %i.cwh = bitcast <8 x i1> %i.cwg to i8
  %i.cwi = icmp ne i8 %i.cwh, 0
  %op.rdx = or i1 %i.cwi, %found.conflict1522
  %op.rdx2145 = or i1 %found.conflict, %i.cgi
  %op.rdx2146 = or i1 %op.rdx, %op.rdx2145
  %n.vec = and i64 %i.cux, 2147483640             ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cux
  br label %.lr.ph1065

.lr.ph1065:                                       ; preds = %.lr.ph1065.preheader, %._crit_edge1066
  %indvars.iv1252 = phi i64 [ 0, %.lr.ph1065.preheader ], [ %indvars.iv.next1253, %._crit_edge1066 ] ; 4 uses
  %i.cwj = mul nuw nsw i64 %indvars.iv1252, %i.cfl
  %i.cwk = getelementptr inbounds nuw i8, ptr %gep1440, i64 %i.cwj ; 4 uses
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwk, i64 %i.cfg ; 2 uses
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cwk, i64 %i.cfi ; 3 uses
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cwm, i64 %i.cfg ; 2 uses
  %i.cwo = mul nsw i64 %indvars.iv1252, %i.cfe    ; 2 uses
  %i.cwp = mul nsw i64 %indvars.iv1252, %i.cfj
  %invariant.gep1437 = getelementptr [2 x i8], ptr %i.ckh, i64 %i.cwp ; 2 uses
  %brmerge2216 = select i1 %min.iters.check, i1 true, i1 %op.rdx2146
  br i1 %brmerge2216, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph1065, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph1065 ] ; 7 uses
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwk, i64 %index
  %wide.load = load <8 x i8>, ptr %i.cwq, align 1, !tbaa !84, !alias.scope !347
  %i.cwr = zext <8 x i8> %wide.load to <8 x i32>
  %i.cws = add nsw i64 %index, %i.cwo             ; 5 uses
  %i.cwt = getelementptr inbounds i8, ptr %.sroa.17850.0, i64 %i.cws
  %wide.load1564 = load <8 x i8>, ptr %i.cwt, align 1, !tbaa !84, !alias.scope !350
  %i.cwu = zext <8 x i8> %wide.load1564 to <8 x i32>
  %i.cwv = mul nuw nsw <8 x i32> %i.cwu, %i.cwr
  %i.cww = getelementptr inbounds nuw i8, ptr %i.cwl, i64 %index
  %wide.load1565 = load <8 x i8>, ptr %i.cww, align 1, !tbaa !84, !alias.scope !352
  %i.cwx = zext <8 x i8> %wide.load1565 to <8 x i32>
  %i.cwy = getelementptr inbounds i8, ptr %.sroa.12848.0, i64 %i.cws
  %wide.load1566 = load <8 x i8>, ptr %i.cwy, align 1, !tbaa !84, !alias.scope !354
  %i.cwz = zext <8 x i8> %wide.load1566 to <8 x i32>
  %i.cxa = mul nuw nsw <8 x i32> %i.cwz, %i.cwx
  %i.cxb = add nuw nsw <8 x i32> %i.cxa, %i.cwv
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.cwm, i64 %index
  %wide.load1567 = load <8 x i8>, ptr %i.cxc, align 1, !tbaa !84, !alias.scope !356
  %i.cxd = zext <8 x i8> %wide.load1567 to <8 x i32>
  %i.cxe = getelementptr inbounds i8, ptr %.sroa.7845.0, i64 %i.cws
  %wide.load1568 = load <8 x i8>, ptr %i.cxe, align 1, !tbaa !84, !alias.scope !358
  %i.cxf = zext <8 x i8> %wide.load1568 to <8 x i32>
  %i.cxg = mul nuw nsw <8 x i32> %i.cxf, %i.cxd
  %i.cxh = add nuw nsw <8 x i32> %i.cxb, %i.cxg
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cwn, i64 %index
  %wide.load1569 = load <8 x i8>, ptr %i.cxi, align 1, !tbaa !84, !alias.scope !360
  %i.cxj = zext <8 x i8> %wide.load1569 to <8 x i32>
  %i.cxk = getelementptr inbounds i8, ptr %i.ckl, i64 %i.cws
  %wide.load1570 = load <8 x i8>, ptr %i.cxk, align 1, !tbaa !84, !alias.scope !362
  %i.cxl = zext <8 x i8> %wide.load1570 to <8 x i32>
  %i.cxm = mul nuw nsw <8 x i32> %i.cxl, %i.cxj
  %i.cxn = add nuw nsw <8 x i32> %i.cxh, %i.cxm
  %i.cxo = lshr <8 x i32> %i.cxn, splat (i32 2)
  %i.cxp = getelementptr [2 x i8], ptr %invariant.gep1437, i64 %index
  %wide.load1571 = load <8 x i16>, ptr %i.cxp, align 2, !tbaa !184, !alias.scope !364
  %i.cxq = sext <8 x i16> %wide.load1571 to <8 x i32>
  %i.cxr = add nsw <8 x i32> %i.cxo, %i.cxq       ; 2 uses
  %i.cxs = add nsw <8 x i32> %i.cxr, splat (i32 8)
  %i.cxt = ashr <8 x i32> %i.cxs, splat (i32 4)   ; 2 uses
  %i.cxu = icmp ugt <8 x i32> %i.cxt, splat (i32 255)
  %i.cxv = icmp sgt <8 x i32> %i.cxr, splat (i32 -9)
  %i.cxw = sext <8 x i1> %i.cxv to <8 x i32>
  %i.cxx = select <8 x i1> %i.cxu, <8 x i32> %i.cxw, <8 x i32> %i.cxt
  %i.cxy = trunc <8 x i32> %i.cxx to <8 x i8>
  %i.cxz = getelementptr inbounds i8, ptr %i.ckk, i64 %i.cws
  store <8 x i8> %i.cxy, ptr %i.cxz, align 1, !tbaa !84, !alias.scope !366, !noalias !368
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cya = icmp eq i64 %index.next, %n.vec
  br i1 %i.cya, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge1066, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph1065, %middle.block
  %indvars.iv1249.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph1065 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1249 = phi i64 [ %indvars.iv.next1250, %scalar.ph ], [ %indvars.iv1249.ph, %scalar.ph.preheader ] ; 7 uses
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cwk, i64 %indvars.iv1249
  %i.cyc = load i8, ptr %i.cyb, align 1, !tbaa !84
  %i.cyd = zext i8 %i.cyc to i32
  %i.cye = add nsw i64 %indvars.iv1249, %i.cwo    ; 5 uses
  %i.cyf = getelementptr inbounds i8, ptr %.sroa.17850.0, i64 %i.cye
  %i.cyg = load i8, ptr %i.cyf, align 1, !tbaa !84
  %i.cyh = zext i8 %i.cyg to i32
  %i.cyi = mul nuw nsw i32 %i.cyh, %i.cyd
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cwl, i64 %indvars.iv1249
  %i.cyk = load i8, ptr %i.cyj, align 1, !tbaa !84
  %i.cyl = zext i8 %i.cyk to i32
  %i.cym = getelementptr inbounds i8, ptr %.sroa.12848.0, i64 %i.cye
  %i.cyn = load i8, ptr %i.cym, align 1, !tbaa !84
  %i.cyo = zext i8 %i.cyn to i32
  %i.cyp = mul nuw nsw i32 %i.cyo, %i.cyl
  %i.cyq = add nuw nsw i32 %i.cyp, %i.cyi
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.cwm, i64 %indvars.iv1249
  %i.cys = load i8, ptr %i.cyr, align 1, !tbaa !84
  %i.cyt = zext i8 %i.cys to i32
  %i.cyu = getelementptr inbounds i8, ptr %.sroa.7845.0, i64 %i.cye
  %i.cyv = load i8, ptr %i.cyu, align 1, !tbaa !84
  %i.cyw = zext i8 %i.cyv to i32
  %i.cyx = mul nuw nsw i32 %i.cyw, %i.cyt
  %i.cyy = add nuw nsw i32 %i.cyq, %i.cyx
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cwn, i64 %indvars.iv1249
  %i.cza = load i8, ptr %i.cyz, align 1, !tbaa !84
  %i.czb = zext i8 %i.cza to i32
  %i.czc = getelementptr inbounds i8, ptr %i.ckl, i64 %i.cye
  %i.czd = load i8, ptr %i.czc, align 1, !tbaa !84
  %i.cze = zext i8 %i.czd to i32
  %i.czf = mul nuw nsw i32 %i.cze, %i.czb
  %i.czg = add nuw nsw i32 %i.cyy, %i.czf
  %i.czh = lshr i32 %i.czg, 2
  %gep1438 = getelementptr [2 x i8], ptr %invariant.gep1437, i64 %indvars.iv1249
  %i.czi = load i16, ptr %gep1438, align 2, !tbaa !184
  %i.czj = sext i16 %i.czi to i32
  %i.czk = add nsw i32 %i.czh, %i.czj             ; 2 uses
  %i.czl = add nsw i32 %i.czk, 8
  %i.czm = ashr i32 %i.czl, 4                     ; 2 uses
  %i.czn = icmp ugt i32 %i.czm, 255
  %isnotneg.i.i = icmp sgt i32 %i.czk, -9
  %i.czo = sext i1 %isnotneg.i.i to i32
  %.0.i.i = select i1 %i.czn, i32 %i.czo, i32 %i.czm
  %i.czp = trunc i32 %.0.i.i to i8
  %i.czq = getelementptr inbounds i8, ptr %i.ckk, i64 %i.cye
  store i8 %i.czp, ptr %i.czq, align 1, !tbaa !84
  %indvars.iv.next1250 = add nuw nsw i64 %indvars.iv1249, 1 ; 2 uses
  %i.czr = icmp samesign ult i64 %indvars.iv.next1250, %i.cux
  br i1 %i.czr, label %scalar.ph, label %._crit_edge1066, !llvm.loop !370

._crit_edge1066:                                  ; preds = %scalar.ph, %middle.block
  %indvars.iv.next1253 = add nuw nsw i64 %indvars.iv1252, 1 ; 2 uses
  %i.czs = icmp slt i64 %indvars.iv.next1253, %i.cfk
  br i1 %i.czs, label %.lr.ph1065, label %add_yblock.exit.i647, !llvm.loop !246

add_yblock.exit.i647:                             ; preds = %._crit_edge1066, %bb.gr
  %indvars.iv.next1256 = add nuw nsw i64 %indvars.iv1255, 1 ; 2 uses
  %exitcond1259.not = icmp eq i64 %indvars.iv.next1256, %wide.trip.count1258
  br i1 %exitcond1259.not, label %predict_slice.exit676, label %bb.gn, !llvm.loop !247

predict_slice.exit676:                            ; preds = %._crit_edge1061, %add_yblock.exit.i647, %bb.gm, %.preheader908, %bb.gl
  %i.czt = add nuw nsw i32 %.0.i5841074, 1
  %exitcond1260.not = icmp eq i32 %.0.i5841074, %i.cda
  br i1 %exitcond1260.not, label %predict_plane.exit586, label %bb.gg, !llvm.loop !248

bb.hb:                                            ; preds = %.lr.ph1089
  %i.czu = load i32, ptr %i.cf, align 8, !tbaa !128
  %i.czv = icmp eq i32 %i.czu, 1
  br i1 %i.czv, label %.preheader929, label %bb.hd

.preheader929:                                    ; preds = %bb.hb
  %i.czw = icmp sgt i32 %i.qz, 0
  br i1 %i.czw, label %.preheader916.lr.ph, label %predict_plane.exit586

.preheader916.lr.ph:                              ; preds = %.preheader929
  %i.czx = icmp sgt i32 %i.qx, 0
  %i.czy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1267
  %i.czz = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv1267
  br i1 %i.czx, label %.preheader916, label %predict_plane.exit586

.preheader916:                                    ; preds = %.preheader916.lr.ph, %._crit_edge1001
  %.45181002 = phi i32 [ %i.das, %._crit_edge1001 ], [ 0, %.preheader916.lr.ph ] ; 3 uses
  br label %bb.hc

bb.hc:                                            ; preds = %.preheader916, %bb.hc
  %.4524999 = phi i32 [ 0, %.preheader916 ], [ %i.dar, %bb.hc ] ; 3 uses
  %i.daa = load ptr, ptr %i.czy, align 8, !tbaa !109
  %i.dab = load i32, ptr %i.czz, align 4, !tbaa !93
  %i.dac = mul nsw i32 %i.dab, %.45181002
  %i.dad = add nsw i32 %i.dac, %.4524999
  %i.dae = sext i32 %i.dad to i64
  %i.daf = getelementptr inbounds i8, ptr %i.daa, i64 %i.dae
  %i.dag = load i8, ptr %i.daf, align 1, !tbaa !84
  %i.dah = load ptr, ptr %i.eo, align 16, !tbaa !144 ; 2 uses
  %i.dai = getelementptr inbounds nuw [8 x i8], ptr %i.dah, i64 %indvars.iv1267
  %i.daj = load ptr, ptr %i.dai, align 8, !tbaa !109
  %i.dak = getelementptr inbounds nuw i8, ptr %i.dah, i64 64
  %i.dal = getelementptr inbounds nuw [4 x i8], ptr %i.dak, i64 %indvars.iv1267
  %i.dam = load i32, ptr %i.dal, align 4, !tbaa !93
  %i.dan = mul nsw i32 %i.dam, %.45181002
  %i.dao = add nsw i32 %i.dan, %.4524999
  %i.dap = sext i32 %i.dao to i64
  %i.daq = getelementptr inbounds i8, ptr %i.daj, i64 %i.dap
  store i8 %i.dag, ptr %i.daq, align 1, !tbaa !84
  %i.dar = add nuw nsw i32 %.4524999, 1           ; 2 uses
  %exitcond1163.not = icmp eq i32 %i.dar, %i.qx
  br i1 %exitcond1163.not, label %._crit_edge1001, label %bb.hc, !llvm.loop !371

._crit_edge1001:                                  ; preds = %bb.hc
  %i.das = add nuw nsw i32 %.45181002, 1          ; 2 uses
  %exitcond1164.not = icmp eq i32 %i.das, %i.qz
  br i1 %exitcond1164.not, label %predict_plane.exit586, label %.preheader916, !llvm.loop !372

bb.hd:                                            ; preds = %bb.hb
  %i.dat = load ptr, ptr %i.ky, align 16, !tbaa !182
  %i.dau = sext i32 %i.qx to i64
  %i.dav = shl nsw i64 %i.dau, 1
  %i.daw = sext i32 %i.qz to i64
  %i.dax = mul i64 %i.dav, %i.daw
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.dat, i8 0, i64 %i.dax, i1 false)
  %i.day = load ptr, ptr %i.ky, align 16, !tbaa !182 ; 6 uses
  %i.daz = load i32, ptr %i.q, align 4, !tbaa !116
  %i.dba = load i32, ptr %i.lg, align 8, !tbaa !80
  %i.dbb = shl i32 %i.daz, %i.dba                 ; 2 uses
  %.not.i994 = icmp slt i32 %i.dbb, 0
  br i1 %.not.i994, label %predict_plane.exit586, label %.lr.ph998

.lr.ph998:                                        ; preds = %bb.hd
  %.not.i677 = icmp eq i64 %indvars.iv1267, 0
  %i.dbc = trunc nuw nsw i64 %indvars.iv1267 to i32 ; 4 uses
  br label %bb.he

bb.he:                                            ; preds = %.lr.ph998, %predict_slice.exit768
  %.0.i995 = phi i32 [ 0, %.lr.ph998 ], [ %i.dxu, %predict_slice.exit768 ] ; 9 uses
  %i.dbd = load i32, ptr %i.o, align 16, !tbaa !117
  %i.dbe = load i32, ptr %i.lg, align 8, !tbaa !80 ; 5 uses
  %i.dbf = shl i32 %i.dbd, %i.dbe                 ; 2 uses
  %i.dbg = load i32, ptr %i.q, align 4, !tbaa !116
  %i.dbh = shl i32 %i.dbg, %i.dbe
  %i.dbi = lshr i32 16, %i.dbe                    ; 6 uses
  br i1 %.not.i677, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.dbj = load i32, ptr %i.kt, align 4, !tbaa !110 ; 3 uses
  %i.dbk = lshr i32 %i.dbi, %i.dbj
  %i.dbl = load i32, ptr %i.ks, align 16, !tbaa !111
  %i.dbm = lshr i32 %i.dbi, %i.dbl
  %i.dbn = add nsw i32 %i.dbj, %i.dbe
  %i.dbo = shl nuw nsw i32 %i.dbi, 1
  %i.dbp = lshr i32 %i.dbo, %i.dbj
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.dbq = shl nuw nsw i32 %i.dbi, 1
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.pn.i679.pn.in = phi i32 [ %i.dbn, %bb.hf ], [ %i.dbe, %bb.hg ]
  %i.dbr = phi i32 [ %i.dbk, %bb.hf ], [ %i.dbi, %bb.hg ] ; 4 uses
  %i.dbs = phi i32 [ %i.dbm, %bb.hf ], [ %i.dbi, %bb.hg ] ; 5 uses
  %i.dbt = phi i32 [ %i.dbp, %bb.hf ], [ %i.dbq, %bb.hg ] ; 4 uses
  %.pn.i679.pn = sext i32 %.pn.i679.pn.in to i64
  %.in = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.i679.pn
  %i.dbu = load ptr, ptr %.in, align 8, !tbaa !109 ; 8 uses
  %i.dbv = load ptr, ptr %i.eo, align 16, !tbaa !144 ; 2 uses
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.dbv, i64 64
  %i.dbx = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %indvars.iv1267
  %i.dby = load i32, ptr %i.dbx, align 4, !tbaa !93 ; 8 uses
  %i.dbz = getelementptr inbounds nuw [8 x i8], ptr %i.dbv, i64 %indvars.iv1267
  %i.dca = load ptr, ptr %i.dbz, align 8, !tbaa !109 ; 6 uses
  %i.dcb = load i32, ptr %i.qw, align 8, !tbaa !176 ; 14 uses
  %i.dcc = load i32, ptr %i.qy, align 4, !tbaa !177 ; 8 uses
  %i.dcd = load i32, ptr %i.lh, align 16, !tbaa !140
  %.not110.i681 = icmp eq i32 %i.dcd, 0
  br i1 %.not110.i681, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.dce = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.dce, i64 524
  %i.dcg = load i32, ptr %i.dcf, align 4, !tbaa !212
  %i.dch = and i32 %i.dcg, 512
  %.not111.i687 = icmp eq i32 %i.dch, 0
  br i1 %.not111.i687, label %.preheader917, label %bb.hj

.preheader917:                                    ; preds = %bb.hi
  %.not112.i689991 = icmp slt i32 %i.dbf, 0
  br i1 %.not112.i689991, label %predict_slice.exit768, label %.lr.ph993

.lr.ph993:                                        ; preds = %.preheader917
  %i.dci = lshr i32 %i.dbr, 1                     ; 2 uses
  %i.dcj = mul i32 %i.dbs, %.0.i995
  %i.dck = lshr i32 %i.dbs, 1
  %i.dcl = sub i32 %i.dcj, %i.dck                 ; 4 uses
  %i.dcm = add nsw i32 %.0.i995, -1
  %i.dcn = icmp sgt i32 %i.dby, 111
  %i.dco = shl nsw i32 %i.dby, 4
  %i.dcp = select i1 %i.dcn, i32 16, i32 %i.dco   ; 2 uses
  %i.dcq = icmp eq i32 %.0.i995, 0
  %i.dcr = icmp slt i32 %i.dcl, 0
  %i.dcs = mul nsw i32 %i.dcl, %i.dbt
  %i.dct = sext i32 %i.dcs to i64
  %i.dcu = sub nsw i64 0, %i.dct
  %i.dcv = tail call i32 @llvm.smin.i32(i32 %i.dcl, i32 0)
  %.0239.i.i708 = add i32 %i.dbs, %i.dcv          ; 2 uses
  %.0236.i.i709 = tail call i32 @llvm.smax.i32(i32 %i.dcl, i32 0) ; 9 uses
  %i.dcw = add i32 %.0236.i.i709, %.0239.i.i708   ; 2 uses
  %i.dcx = icmp sgt i32 %i.dcw, %i.dcc
  %i.dcy = sub nsw i32 %i.dcc, %.0236.i.i709
  %spec.select265.i.i711 = select i1 %i.dcx, i32 %i.dcy, i32 %.0239.i.i708 ; 6 uses
  %i.dcz = icmp slt i32 %spec.select265.i.i711, 1
  %i.dda = mul i32 %i.dcb, %.0236.i.i709          ; 2 uses
  %i.ddb = mul i32 %.0236.i.i709, %i.dby          ; 2 uses
  %i.ddc = mul i32 %i.dcp, 3
  %i.ddd = sext i32 %i.ddc to i64                 ; 2 uses
  %i.dde = sext i32 %i.dcp to i64                 ; 3 uses
  %i.ddf = sext i32 %i.dby to i64                 ; 6 uses
  %i.ddg = lshr i32 %i.dbt, 1                     ; 2 uses
  %i.ddh = zext nneg i32 %i.ddg to i64            ; 4 uses
  %i.ddi = mul i32 %i.ddg, %i.dbt
  %i.ddj = zext i32 %i.ddi to i64                 ; 5 uses
  %i.ddk = sext i32 %i.dcb to i64                 ; 2 uses
  %i.ddl = sext i32 %spec.select265.i.i711 to i64
  %i.ddm = zext i32 %i.dbt to i64                 ; 2 uses
  %i.ddn = zext i32 %i.dbr to i64                 ; 2 uses
  %i.ddo = zext nneg i32 %i.dci to i64            ; 2 uses
  %i.ddp = add nuw i32 %i.dbf, 1
  %wide.trip.count1160 = zext i32 %i.ddp to i64
  %.1234.i.i710.idx = select i1 %i.dcr, i64 %i.dcu, i64 0 ; 6 uses
  %invariant.gep1421 = getelementptr i8, ptr %i.dbu, i64 %.1234.i.i710.idx
  %smin2021 = tail call i32 @llvm.smin.i32(i32 %i.dcc, i32 %i.dcw)
  %i.ddq = sub i32 %smin2021, %.0236.i.i709
  %i.ddr = tail call i32 @llvm.smax.i32(i32 %i.ddq, i32 1)
  %smax2022 = zext nneg i32 %i.ddr to i64
  %i.dds = add nsw i64 %smax2022, -1              ; 3 uses
  %i.ddt = mul nsw i64 %i.dds, %i.ddf             ; 5 uses
  %scevgep2023 = getelementptr i8, ptr %i.dca, i64 %i.ddt
  %i.ddu = add nsw i64 %.1234.i.i710.idx, %i.ddh  ; 2 uses
  %i.ddv = getelementptr i8, ptr %i.dbu, i64 %i.ddu
  %scevgep2028 = getelementptr i8, ptr %i.ddv, i64 %i.ddj
  %i.ddw = mul nsw i64 %i.dds, %i.ddm             ; 4 uses
  %i.ddx = getelementptr i8, ptr %i.dbu, i64 %i.ddu
  %i.ddy = getelementptr i8, ptr %i.ddx, i64 %i.ddw
  %scevgep2031 = getelementptr i8, ptr %i.ddy, i64 %i.ddj
  %i.ddz = getelementptr i8, ptr %i.dbu, i64 %.1234.i.i710.idx
  %scevgep2033 = getelementptr i8, ptr %i.ddz, i64 %i.ddj
  %i.dea = getelementptr i8, ptr %i.dbu, i64 %.1234.i.i710.idx
  %i.deb = getelementptr i8, ptr %i.dea, i64 %i.ddw
  %scevgep2035 = getelementptr i8, ptr %i.deb, i64 %i.ddj
  %i.dec = add nsw i64 %.1234.i.i710.idx, %i.ddh  ; 2 uses
  %scevgep2037 = getelementptr i8, ptr %i.dbu, i64 %i.dec
  %i.ded = getelementptr i8, ptr %i.dbu, i64 %i.dec
  %scevgep2039 = getelementptr i8, ptr %i.ded, i64 %i.ddw
  %i.dee = getelementptr i8, ptr %i.dbu, i64 %.1234.i.i710.idx
  %scevgep2041 = getelementptr i8, ptr %i.dee, i64 %i.ddw
  %i.def = shl nsw i64 %i.dds, 1
  %i.deg = mul i64 %i.def, %i.ddk
  %scevgep2052 = getelementptr i8, ptr %i.day, i64 %i.deg
  %stride.check2061 = icmp slt i32 %i.dby, 0
  %i.deh = insertelement <8 x i1> poison, i1 %stride.check2061, i64 7
  %i.dei = or i32 %i.dcb, %i.dby
  %i.dej = icmp slt i32 %i.dei, 0
  br label %bb.hl
end_hunk_2
begin_hunk_3_@encode_frame:bb.a

.lr.ph986.preheader:                              ; preds = %bb.hy, %same_block.exit279.i.i732, %same_block.exit272.i.i744, %same_block.exit.i.i751, %.split1396, %.split1397, %.split1398
  %.sroa.17860.0 = phi ptr [ %.1.i.i728, %bb.hy ], [ %.sroa.7855.0, %same_block.exit272.i.i744 ], [ %i.dim, %same_block.exit279.i.i732 ], [ %.sroa.12858.0, %same_block.exit.i.i751 ], [ %i.dim, %.split1396 ], [ %.sroa.7855.0, %.split1397 ], [ %.sroa.12858.0, %.split1398 ] ; 4 uses
  %i.dsy = zext nneg i32 %spec.select264.i.i707 to i64 ; 3 uses
  %i.dsz = getelementptr i8, ptr %i.dhx, i64 %i.ddt
  %scevgep2043 = getelementptr i8, ptr %i.dsz, i64 %i.ddd
  %scevgep2044 = getelementptr i8, ptr %scevgep2043, i64 %umax2026
  %scevgep2045 = getelementptr i8, ptr %.sroa.7855.0, i64 %i.ddt
  %scevgep2046 = getelementptr i8, ptr %scevgep2045, i64 %umax2026
  %scevgep2047 = getelementptr i8, ptr %.sroa.12858.0, i64 %i.ddt
  %scevgep2048 = getelementptr i8, ptr %scevgep2047, i64 %umax2026
  %scevgep2049 = getelementptr i8, ptr %.sroa.17860.0, i64 %i.ddt
  %scevgep2050 = getelementptr i8, ptr %scevgep2049, i64 %umax2026
  %i.dta = insertelement <4 x ptr> poison, ptr %scevgep2020, i64 0 ; 2 uses
  %i.dtb = shufflevector <4 x ptr> %i.dta, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dtc = insertelement <4 x ptr> poison, ptr %scevgep2040, i64 0
  %i.dtd = insertelement <4 x ptr> %i.dtc, ptr %scevgep2042, i64 1
  %i.dte = insertelement <4 x ptr> %i.dtd, ptr %scevgep2044, i64 2
  %i.dtf = insertelement <4 x ptr> %i.dte, ptr %scevgep2046, i64 3
  %i.dtg = shufflevector <4 x ptr> %i.dta, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.dth = insertelement <2 x ptr> poison, ptr %scevgep2048, i64 0
  %i.dti = insertelement <2 x ptr> %i.dth, ptr %scevgep2050, i64 1
  %i.dtj = insertelement <4 x ptr> poison, ptr %scevgep2038, i64 0
  %i.dtk = insertelement <4 x ptr> %i.dtj, ptr %gep1422, i64 1
  %i.dtl = insertelement <4 x ptr> %i.dtk, ptr %i.dim, i64 2
  %i.dtm = insertelement <4 x ptr> %i.dtl, ptr %.sroa.7855.0, i64 3
  %i.dtn = insertelement <4 x ptr> poison, ptr %scevgep2027, i64 0
  %i.dto = shufflevector <4 x ptr> %i.dtn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dtp = insertelement <2 x ptr> poison, ptr %.sroa.12858.0, i64 0
  %i.dtq = insertelement <2 x ptr> %i.dtp, ptr %.sroa.17860.0, i64 1
  %i.dtr = insertelement <2 x ptr> poison, ptr %scevgep2027, i64 0
  %i.dts = shufflevector <2 x ptr> %i.dtr, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check2104 = icmp ult i32 %spec.select264.i.i707, 16
  %bound02054 = icmp ult ptr %scevgep2020, %scevgep2032
  %bound12055 = icmp ult ptr %scevgep2030, %scevgep2027
  %found.conflict2056 = and i1 %bound02054, %bound12055
  %bound02058 = icmp ult ptr %scevgep2020, %scevgep2036
  %bound12059 = icmp ult ptr %scevgep2034, %scevgep2027
  %found.conflict2060 = and i1 %bound02058, %bound12059
  %i.dtt = icmp ult <4 x ptr> %i.dtb, %i.dtf
  %i.dtu = icmp ult <4 x ptr> %i.dtm, %i.dto
  %i.dtv = icmp ult <2 x ptr> %i.dtg, %i.dti
  %i.dtw = icmp ult <2 x ptr> %i.dtq, %i.dts
  %bound02097 = icmp ult ptr %scevgep2020, %scevgep2053
  %bound12098 = icmp ult ptr %scevgep2051, %scevgep2027
  %i.dtx = insertelement <8 x i1> %i.deh, i1 %bound02097, i64 6
  %i.dty = shufflevector <4 x i1> %i.dtt, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dtz = shufflevector <8 x i1> %i.dty, <8 x i1> %i.dtx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.dua = shufflevector <2 x i1> %i.dtv, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dub = shufflevector <8 x i1> %i.dtz, <8 x i1> %i.dua, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.duc = shufflevector <2 x i1> %i.dtw, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dud = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.duc, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.due = insertelement <8 x i1> %i.dud, i1 %bound12098, i64 6
  %i.duf = shufflevector <4 x i1> %i.dtu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dug = shufflevector <8 x i1> %i.duf, <8 x i1> %i.due, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.duh = and <8 x i1> %i.dub, %i.dug
  %i.dui = bitcast <8 x i1> %i.duh to i8
  %i.duj = icmp ne i8 %i.dui, 0
  %op.rdx2148 = or i1 %i.duj, %found.conflict2060
  %op.rdx2149 = or i1 %found.conflict2056, %i.dej
  %op.rdx2150 = or i1 %op.rdx2148, %op.rdx2149
  %n.vec2106 = and i64 %i.dsy, 2147483640         ; 3 uses
  %cmp.n2120 = icmp eq i64 %n.vec2106, %i.dsy
  br label %.lr.ph986

.lr.ph986:                                        ; preds = %.lr.ph986.preheader, %._crit_edge987
  %indvars.iv1154 = phi i64 [ 0, %.lr.ph986.preheader ], [ %indvars.iv.next1155, %._crit_edge987 ] ; 4 uses
  %i.duk = mul nuw nsw i64 %indvars.iv1154, %i.ddm
  %i.dul = getelementptr inbounds nuw i8, ptr %gep1422, i64 %i.duk ; 4 uses
  %i.dum = getelementptr inbounds nuw i8, ptr %i.dul, i64 %i.ddh ; 2 uses
  %i.dun = getelementptr inbounds nuw i8, ptr %i.dul, i64 %i.ddj ; 3 uses
  %i.duo = getelementptr inbounds nuw i8, ptr %i.dun, i64 %i.ddh ; 2 uses
  %i.dup = mul nsw i64 %indvars.iv1154, %i.ddf    ; 2 uses
  %i.duq = mul nsw i64 %indvars.iv1154, %i.ddk
  %invariant.gep1419 = getelementptr [2 x i8], ptr %i.dii, i64 %i.duq ; 2 uses
  %brmerge2218 = select i1 %min.iters.check2104, i1 true, i1 %op.rdx2150
  br i1 %brmerge2218, label %scalar.ph2103.preheader, label %vector.body2107

vector.body2107:                                  ; preds = %.lr.ph986, %vector.body2107
  %index2108 = phi i64 [ %index.next2118, %vector.body2107 ], [ 0, %.lr.ph986 ] ; 7 uses
  %i.dur = getelementptr inbounds nuw i8, ptr %i.dul, i64 %index2108
  %wide.load2109 = load <8 x i8>, ptr %i.dur, align 1, !tbaa !84, !alias.scope !380
  %i.dus = zext <8 x i8> %wide.load2109 to <8 x i32>
  %i.dut = add nsw i64 %index2108, %i.dup         ; 5 uses
  %i.duu = getelementptr inbounds i8, ptr %.sroa.17860.0, i64 %i.dut
  %wide.load2110 = load <8 x i8>, ptr %i.duu, align 1, !tbaa !84, !alias.scope !383
  %i.duv = zext <8 x i8> %wide.load2110 to <8 x i32>
  %i.duw = mul nuw nsw <8 x i32> %i.duv, %i.dus
  %i.dux = getelementptr inbounds nuw i8, ptr %i.dum, i64 %index2108
  %wide.load2111 = load <8 x i8>, ptr %i.dux, align 1, !tbaa !84, !alias.scope !385
  %i.duy = zext <8 x i8> %wide.load2111 to <8 x i32>
  %i.duz = getelementptr inbounds i8, ptr %.sroa.12858.0, i64 %i.dut
  %wide.load2112 = load <8 x i8>, ptr %i.duz, align 1, !tbaa !84, !alias.scope !387
  %i.dva = zext <8 x i8> %wide.load2112 to <8 x i32>
  %i.dvb = mul nuw nsw <8 x i32> %i.dva, %i.duy
  %i.dvc = add nuw nsw <8 x i32> %i.dvb, %i.duw
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.dun, i64 %index2108
  %wide.load2113 = load <8 x i8>, ptr %i.dvd, align 1, !tbaa !84, !alias.scope !389
  %i.dve = zext <8 x i8> %wide.load2113 to <8 x i32>
  %i.dvf = getelementptr inbounds i8, ptr %.sroa.7855.0, i64 %i.dut
  %wide.load2114 = load <8 x i8>, ptr %i.dvf, align 1, !tbaa !84, !alias.scope !391
  %i.dvg = zext <8 x i8> %wide.load2114 to <8 x i32>
  %i.dvh = mul nuw nsw <8 x i32> %i.dvg, %i.dve
  %i.dvi = add nuw nsw <8 x i32> %i.dvc, %i.dvh
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.duo, i64 %index2108
  %wide.load2115 = load <8 x i8>, ptr %i.dvj, align 1, !tbaa !84, !alias.scope !393
  %i.dvk = zext <8 x i8> %wide.load2115 to <8 x i32>
  %i.dvl = getelementptr inbounds i8, ptr %i.dim, i64 %i.dut
  %wide.load2116 = load <8 x i8>, ptr %i.dvl, align 1, !tbaa !84, !alias.scope !395
  %i.dvm = zext <8 x i8> %wide.load2116 to <8 x i32>
  %i.dvn = mul nuw nsw <8 x i32> %i.dvm, %i.dvk
  %i.dvo = add nuw nsw <8 x i32> %i.dvi, %i.dvn
  %i.dvp = lshr <8 x i32> %i.dvo, splat (i32 2)
  %i.dvq = getelementptr [2 x i8], ptr %invariant.gep1419, i64 %index2108
  %wide.load2117 = load <8 x i16>, ptr %i.dvq, align 2, !tbaa !184, !alias.scope !397
  %i.dvr = sext <8 x i16> %wide.load2117 to <8 x i32>
  %i.dvs = add nsw <8 x i32> %i.dvp, %i.dvr       ; 2 uses
  %i.dvt = add nsw <8 x i32> %i.dvs, splat (i32 8)
  %i.dvu = ashr <8 x i32> %i.dvt, splat (i32 4)   ; 2 uses
  %i.dvv = icmp ugt <8 x i32> %i.dvu, splat (i32 255)
  %i.dvw = icmp sgt <8 x i32> %i.dvs, splat (i32 -9)
  %i.dvx = sext <8 x i1> %i.dvw to <8 x i32>
  %i.dvy = select <8 x i1> %i.dvv, <8 x i32> %i.dvx, <8 x i32> %i.dvu
  %i.dvz = trunc <8 x i32> %i.dvy to <8 x i8>
  %i.dwa = getelementptr inbounds i8, ptr %i.dil, i64 %i.dut
  store <8 x i8> %i.dvz, ptr %i.dwa, align 1, !tbaa !84, !alias.scope !399, !noalias !401
  %index.next2118 = add nuw i64 %index2108, 8     ; 2 uses
  %i.dwb = icmp eq i64 %index.next2118, %n.vec2106
  br i1 %i.dwb, label %middle.block2119, label %vector.body2107, !llvm.loop !402

middle.block2119:                                 ; preds = %vector.body2107
  br i1 %cmp.n2120, label %._crit_edge987, label %scalar.ph2103.preheader

scalar.ph2103.preheader:                          ; preds = %.lr.ph986, %middle.block2119
  %indvars.iv1151.ph = phi i64 [ %n.vec2106, %middle.block2119 ], [ 0, %.lr.ph986 ]
  br label %scalar.ph2103

scalar.ph2103:                                    ; preds = %scalar.ph2103.preheader, %scalar.ph2103
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %scalar.ph2103 ], [ %indvars.iv1151.ph, %scalar.ph2103.preheader ] ; 7 uses
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.dul, i64 %indvars.iv1151
  %i.dwd = load i8, ptr %i.dwc, align 1, !tbaa !84
  %i.dwe = zext i8 %i.dwd to i32
  %i.dwf = add nsw i64 %indvars.iv1151, %i.dup    ; 5 uses
  %i.dwg = getelementptr inbounds i8, ptr %.sroa.17860.0, i64 %i.dwf
  %i.dwh = load i8, ptr %i.dwg, align 1, !tbaa !84
  %i.dwi = zext i8 %i.dwh to i32
  %i.dwj = mul nuw nsw i32 %i.dwi, %i.dwe
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dum, i64 %indvars.iv1151
  %i.dwl = load i8, ptr %i.dwk, align 1, !tbaa !84
  %i.dwm = zext i8 %i.dwl to i32
  %i.dwn = getelementptr inbounds i8, ptr %.sroa.12858.0, i64 %i.dwf
  %i.dwo = load i8, ptr %i.dwn, align 1, !tbaa !84
  %i.dwp = zext i8 %i.dwo to i32
  %i.dwq = mul nuw nsw i32 %i.dwp, %i.dwm
  %i.dwr = add nuw nsw i32 %i.dwq, %i.dwj
  %i.dws = getelementptr inbounds nuw i8, ptr %i.dun, i64 %indvars.iv1151
  %i.dwt = load i8, ptr %i.dws, align 1, !tbaa !84
  %i.dwu = zext i8 %i.dwt to i32
  %i.dwv = getelementptr inbounds i8, ptr %.sroa.7855.0, i64 %i.dwf
  %i.dww = load i8, ptr %i.dwv, align 1, !tbaa !84
  %i.dwx = zext i8 %i.dww to i32
  %i.dwy = mul nuw nsw i32 %i.dwx, %i.dwu
  %i.dwz = add nuw nsw i32 %i.dwr, %i.dwy
  %i.dxa = getelementptr inbounds nuw i8, ptr %i.duo, i64 %indvars.iv1151
  %i.dxb = load i8, ptr %i.dxa, align 1, !tbaa !84
  %i.dxc = zext i8 %i.dxb to i32
  %i.dxd = getelementptr inbounds i8, ptr %i.dim, i64 %i.dwf
  %i.dxe = load i8, ptr %i.dxd, align 1, !tbaa !84
  %i.dxf = zext i8 %i.dxe to i32
  %i.dxg = mul nuw nsw i32 %i.dxf, %i.dxc
  %i.dxh = add nuw nsw i32 %i.dwz, %i.dxg
  %i.dxi = lshr i32 %i.dxh, 2
  %gep1420 = getelementptr [2 x i8], ptr %invariant.gep1419, i64 %indvars.iv1151
  %i.dxj = load i16, ptr %gep1420, align 2, !tbaa !184
  %i.dxk = sext i16 %i.dxj to i32
  %i.dxl = add nsw i32 %i.dxi, %i.dxk             ; 2 uses
  %i.dxm = add nsw i32 %i.dxl, 8
  %i.dxn = ashr i32 %i.dxm, 4                     ; 2 uses
  %i.dxo = icmp ugt i32 %i.dxn, 255
  %isnotneg.i.i739 = icmp sgt i32 %i.dxl, -9
  %i.dxp = sext i1 %isnotneg.i.i739 to i32
  %.0.i.i740 = select i1 %i.dxo, i32 %i.dxp, i32 %i.dxn
  %i.dxq = trunc i32 %.0.i.i740 to i8
  %i.dxr = getelementptr inbounds i8, ptr %i.dil, i64 %i.dwf
  store i8 %i.dxq, ptr %i.dxr, align 1, !tbaa !84
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 1 ; 2 uses
  %i.dxs = icmp samesign ult i64 %indvars.iv.next1152, %i.dsy
  br i1 %i.dxs, label %scalar.ph2103, label %._crit_edge987, !llvm.loop !403

._crit_edge987:                                   ; preds = %scalar.ph2103, %middle.block2119
  %indvars.iv.next1155 = add nuw nsw i64 %indvars.iv1154, 1 ; 2 uses
  %i.dxt = icmp slt i64 %indvars.iv.next1155, %i.ddl
  br i1 %i.dxt, label %.lr.ph986, label %add_yblock.exit.i737, !llvm.loop !246

add_yblock.exit.i737:                             ; preds = %._crit_edge987, %bb.hp
  %indvars.iv.next1158 = add nuw nsw i64 %indvars.iv1157, 1 ; 2 uses
  %exitcond1161.not = icmp eq i64 %indvars.iv.next1158, %wide.trip.count1160
  br i1 %exitcond1161.not, label %predict_slice.exit768, label %bb.hl, !llvm.loop !247

predict_slice.exit768:                            ; preds = %._crit_edge982, %add_yblock.exit.i737, %bb.hk, %.preheader917, %bb.hj
  %i.dxu = add nuw nsw i32 %.0.i995, 1
  %exitcond1162.not = icmp eq i32 %.0.i995, %i.dbb
  br i1 %exitcond1162.not, label %predict_plane.exit586, label %bb.he, !llvm.loop !248

predict_plane.exit586:                            ; preds = %predict_slice.exit768, %._crit_edge1001, %predict_slice.exit676, %bb.hd, %.preheader929, %.preheader916.lr.ph, %.loopexit921
  %i.dxv = load ptr, ptr %i.i, align 8, !tbaa !108 ; 2 uses
  %i.dxw = getelementptr inbounds nuw i8, ptr %i.dxv, i64 64
  %i.dxx = load i32, ptr %i.dxw, align 8, !tbaa !76
  %i.dxy = and i32 %i.dxx, 32768
  %.not579 = icmp eq i32 %i.dxy, 0
  br i1 %.not579, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %predict_plane.exit586
  %i.dxz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1267
  %i.dya = load ptr, ptr %i.dxz, align 8, !tbaa !109 ; 2 uses
  %.not580 = icmp ne ptr %i.dya, null
  %i.dyb = icmp sgt i32 %i.qz, 0
  %or.cond1120 = select i1 %.not580, i1 %i.dyb, i1 false
  br i1 %or.cond1120, label %.preheader907.lr.ph, label %.loopexit

.preheader907.lr.ph:                              ; preds = %bb.hz
  %i.dyc = icmp sgt i32 %i.qx, 0
  %i.dyd = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv1267
  %wide.trip.count1264 = zext i32 %i.qx to i64    ; 2 uses
  %xtraiter2191 = and i64 %wide.trip.count1264, 3 ; 3 uses
  %i.dye = icmp ult i32 %i.qx, 4
  %unroll_iter2196 = and i64 %wide.trip.count1264, 2147483644
  %lcmp.mod2193.not = icmp eq i64 %xtraiter2191, 0
  %lcmp.mod2195 = icmp ne i64 %xtraiter2191, 0
  br label %.preheader907

.preheader907:                                    ; preds = %.preheader907.lr.ph, %._crit_edge1081
  %.05111084 = phi i64 [ 0, %.preheader907.lr.ph ], [ %.1512.lcssa, %._crit_edge1081 ] ; 3 uses
  %.55191083 = phi i32 [ 0, %.preheader907.lr.ph ], [ %i.eae, %._crit_edge1081 ] ; 3 uses
  br i1 %i.dyc, label %.lr.ph1080, label %._crit_edge1081

.lr.ph1080:                                       ; preds = %.preheader907
  %i.dyf = load ptr, ptr %i.eo, align 16, !tbaa !144 ; 2 uses
  %i.dyg = getelementptr inbounds nuw [8 x i8], ptr %i.dyf, i64 %indvars.iv1267
  %i.dyh = load ptr, ptr %i.dyg, align 8, !tbaa !109
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.dyf, i64 64
  %i.dyj = getelementptr inbounds nuw [4 x i8], ptr %i.dyi, i64 %indvars.iv1267
  %i.dyk = load i32, ptr %i.dyj, align 4, !tbaa !93
  %i.dyl = mul nsw i32 %i.dyk, %.55191083
  %i.dym = load i32, ptr %i.dyd, align 4, !tbaa !93
  %i.dyn = mul nsw i32 %i.dym, %.55191083
  %i.dyo = sext i32 %i.dyl to i64
  %i.dyp = sext i32 %i.dyn to i64
  %invariant.gep1441 = getelementptr i8, ptr %i.dyh, i64 %i.dyo ; 5 uses
  %invariant.gep1443 = getelementptr i8, ptr %i.dya, i64 %i.dyp ; 5 uses
  br i1 %i.dye, label %.epil.preheader2190, label %.lr.ph1080.new

.lr.ph1080.new:                                   ; preds = %.lr.ph1080, %.lr.ph1080.new
  %indvars.iv1261 = phi i64 [ %indvars.iv.next1262.3, %.lr.ph1080.new ], [ 0, %.lr.ph1080 ] ; 6 uses
  %.15121079 = phi i64 [ %i.dzv, %.lr.ph1080.new ], [ %.05111084, %.lr.ph1080 ]
  %niter2197 = phi i64 [ %niter2197.next.3, %.lr.ph1080.new ], [ 0, %.lr.ph1080 ]
  %gep1442 = getelementptr i8, ptr %invariant.gep1441, i64 %indvars.iv1261
  %i.dyq = load i8, ptr %gep1442, align 1, !tbaa !84
  %i.dyr = zext i8 %i.dyq to i32
  %gep1444 = getelementptr i8, ptr %invariant.gep1443, i64 %indvars.iv1261
  %i.dys = load i8, ptr %gep1444, align 1, !tbaa !84
  %i.dyt = zext i8 %i.dys to i32
  %i.dyu = sub nsw i32 %i.dyr, %i.dyt             ; 2 uses
  %i.dyv = mul nsw i32 %i.dyu, %i.dyu
  %i.dyw = zext nneg i32 %i.dyv to i64
  %i.dyx = add nsw i64 %.15121079, %i.dyw
  %indvars.iv.next1262 = or disjoint i64 %indvars.iv1261, 1 ; 2 uses
  %gep1442.1 = getelementptr i8, ptr %invariant.gep1441, i64 %indvars.iv.next1262
  %i.dyy = load i8, ptr %gep1442.1, align 1, !tbaa !84
  %i.dyz = zext i8 %i.dyy to i32
  %gep1444.1 = getelementptr i8, ptr %invariant.gep1443, i64 %indvars.iv.next1262
  %i.dza = load i8, ptr %gep1444.1, align 1, !tbaa !84
  %i.dzb = zext i8 %i.dza to i32
  %i.dzc = sub nsw i32 %i.dyz, %i.dzb             ; 2 uses
  %i.dzd = mul nsw i32 %i.dzc, %i.dzc
  %i.dze = zext nneg i32 %i.dzd to i64
  %i.dzf = add nsw i64 %i.dyx, %i.dze
  %indvars.iv.next1262.1 = or disjoint i64 %indvars.iv1261, 2 ; 2 uses
  %gep1442.2 = getelementptr i8, ptr %invariant.gep1441, i64 %indvars.iv.next1262.1
  %i.dzg = load i8, ptr %gep1442.2, align 1, !tbaa !84
  %i.dzh = zext i8 %i.dzg to i32
  %gep1444.2 = getelementptr i8, ptr %invariant.gep1443, i64 %indvars.iv.next1262.1
  %i.dzi = load i8, ptr %gep1444.2, align 1, !tbaa !84
  %i.dzj = zext i8 %i.dzi to i32
  %i.dzk = sub nsw i32 %i.dzh, %i.dzj             ; 2 uses
  %i.dzl = mul nsw i32 %i.dzk, %i.dzk
  %i.dzm = zext nneg i32 %i.dzl to i64
  %i.dzn = add nsw i64 %i.dzf, %i.dzm
  %indvars.iv.next1262.2 = or disjoint i64 %indvars.iv1261, 3 ; 2 uses
  %gep1442.3 = getelementptr i8, ptr %invariant.gep1441, i64 %indvars.iv.next1262.2
  %i.dzo = load i8, ptr %gep1442.3, align 1, !tbaa !84
  %i.dzp = zext i8 %i.dzo to i32
  %gep1444.3 = getelementptr i8, ptr %invariant.gep1443, i64 %indvars.iv.next1262.2
  %i.dzq = load i8, ptr %gep1444.3, align 1, !tbaa !84
  %i.dzr = zext i8 %i.dzq to i32
  %i.dzs = sub nsw i32 %i.dzp, %i.dzr             ; 2 uses
  %i.dzt = mul nsw i32 %i.dzs, %i.dzs
  %i.dzu = zext nneg i32 %i.dzt to i64
  %i.dzv = add nsw i64 %i.dzn, %i.dzu             ; 3 uses
  %indvars.iv.next1262.3 = add nuw nsw i64 %indvars.iv1261, 4 ; 2 uses
  %niter2197.next.3 = add i64 %niter2197, 4       ; 2 uses
  %niter2197.ncmp.3 = icmp eq i64 %niter2197.next.3, %unroll_iter2196
  br i1 %niter2197.ncmp.3, label %._crit_edge1081.loopexit.unr-lcssa, label %.lr.ph1080.new, !llvm.loop !404

._crit_edge1081.loopexit.unr-lcssa:               ; preds = %.lr.ph1080.new
  br i1 %lcmp.mod2193.not, label %._crit_edge1081, label %.epil.preheader2190

.epil.preheader2190:                              ; preds = %._crit_edge1081.loopexit.unr-lcssa, %.lr.ph1080
  %indvars.iv1261.epil.init = phi i64 [ 0, %.lr.ph1080 ], [ %indvars.iv.next1262.3, %._crit_edge1081.loopexit.unr-lcssa ]
  %.15121079.epil.init = phi i64 [ %.05111084, %.lr.ph1080 ], [ %i.dzv, %._crit_edge1081.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2195)
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ia, %.epil.preheader2190
  %indvars.iv1261.epil = phi i64 [ %indvars.iv1261.epil.init, %.epil.preheader2190 ], [ %indvars.iv.next1262.epil, %bb.ia ] ; 3 uses
  %.15121079.epil = phi i64 [ %.15121079.epil.init, %.epil.preheader2190 ], [ %i.ead, %bb.ia ]
  %epil.iter2192 = phi i64 [ 0, %.epil.preheader2190 ], [ %epil.iter2192.next, %bb.ia ]
  %gep1442.epil = getelementptr i8, ptr %invariant.gep1441, i64 %indvars.iv1261.epil
  %i.dzw = load i8, ptr %gep1442.epil, align 1, !tbaa !84
  %i.dzx = zext i8 %i.dzw to i32
  %gep1444.epil = getelementptr i8, ptr %invariant.gep1443, i64 %indvars.iv1261.epil
  %i.dzy = load i8, ptr %gep1444.epil, align 1, !tbaa !84
  %i.dzz = zext i8 %i.dzy to i32
  %i.eaa = sub nsw i32 %i.dzx, %i.dzz             ; 2 uses
  %i.eab = mul nsw i32 %i.eaa, %i.eaa
  %i.eac = zext nneg i32 %i.eab to i64
  %i.ead = add nsw i64 %.15121079.epil, %i.eac    ; 2 uses
  %indvars.iv.next1262.epil = add nuw nsw i64 %indvars.iv1261.epil, 1
  %epil.iter2192.next = add i64 %epil.iter2192, 1 ; 2 uses
  %epil.iter2192.cmp.not = icmp eq i64 %epil.iter2192.next, %xtraiter2191
  br i1 %epil.iter2192.cmp.not, label %._crit_edge1081, label %bb.ia, !llvm.loop !405

._crit_edge1081:                                  ; preds = %._crit_edge1081.loopexit.unr-lcssa, %bb.ia, %.preheader907
  %.1512.lcssa = phi i64 [ %.05111084, %.preheader907 ], [ %i.dzv, %._crit_edge1081.loopexit.unr-lcssa ], [ %i.ead, %bb.ia ] ; 2 uses
  %i.eae = add nuw nsw i32 %.55191083, 1          ; 2 uses
  %exitcond1266.not = icmp eq i32 %i.eae, %i.qz
  br i1 %exitcond1266.not, label %.loopexit, label %.preheader907, !llvm.loop !406

.loopexit:                                        ; preds = %._crit_edge1081, %bb.hz
  %.2513 = phi i64 [ 0, %bb.hz ], [ %.1512.lcssa, %._crit_edge1081 ] ; 2 uses
  %i.eaf = getelementptr inbounds nuw i8, ptr %i.dxv, i64 576
  %i.eag = getelementptr inbounds nuw [8 x i8], ptr %i.eaf, i64 %indvars.iv1267 ; 2 uses
  %i.eah = load i64, ptr %i.eag, align 8, !tbaa !407
  %i.eai = add i64 %i.eah, %.2513
  store i64 %i.eai, ptr %i.eag, align 8, !tbaa !407
  %i.eaj = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv1267
  store i64 %.2513, ptr %i.eaj, align 8, !tbaa !407
  br label %bb.ib

.critedge583:                                     ; preds = %bb.bl
  %i.eak = load ptr, ptr %i.y, align 8, !tbaa !122
  %i.eal = load i32, ptr %i.aa, align 8, !tbaa !124
  tail call void @ff_init_range_encoder(ptr noundef nonnull %i.f, ptr noundef %i.eak, i32 noundef %i.eal) #12
  tail call void @ff_build_rac_states(ptr noundef nonnull %i.f, i32 noundef 214748364, i32 noundef 248) #12
  store i32 1, ptr %i.cf, align 8, !tbaa !128
  store i32 1, ptr %i.lh, align 16, !tbaa !140
  %i.eam = load ptr, ptr %i.eo, align 16, !tbaa !144
  %i.ean = getelementptr inbounds nuw i8, ptr %i.eam, i64 276 ; 2 uses
  %i.eao = load i32, ptr %i.ean, align 4, !tbaa !408
  %i.eap = or i32 %i.eao, 2
  store i32 %i.eap, ptr %i.ean, align 4, !tbaa !408
  br label %bb.ad

bb.ib:                                            ; preds = %predict_plane.exit586, %.loopexit
  %indvars.iv.next1268 = add nuw nsw i64 %indvars.iv1267, 1 ; 2 uses
  %i.eaq = load i32, ptr %i.ac, align 16, !tbaa !105
  %i.ear = sext i32 %i.eaq to i64
  %i.eas = icmp slt i64 %indvars.iv.next1268, %i.ear
  br i1 %i.eas, label %.lr.ph1089, label %._crit_edge1090, !llvm.loop !409

._crit_edge1090:                                  ; preds = %.loopexit933, %bb.ib
  %i.eat = load i32, ptr %i.lh, align 16, !tbaa !140
  %.not.i833 = icmp eq i32 %i.eat, 0
  br i1 %.not.i833, label %.preheader.i834, label %update_last_header_values.exit

.preheader.i834:                                  ; preds = %._crit_edge1090
  %i.eau = getelementptr inbounds nuw i8, ptr %i.d, i64 43528
  %i.eav = load i32, ptr %i.eau, align 8, !tbaa !81
  %i.eaw = getelementptr inbounds nuw i8, ptr %i.d, i64 43544
  store i32 %i.eav, ptr %i.eaw, align 8, !tbaa !410
  %i.eax = getelementptr inbounds nuw i8, ptr %i.d, i64 43520
  %i.eay = getelementptr inbounds nuw i8, ptr %i.d, i64 43536
  %i.eaz = load <2 x i32>, ptr %i.eax, align 16
  store <2 x i32> %i.eaz, ptr %i.eay, align 16
  %i.eba = getelementptr inbounds nuw i8, ptr %i.d, i64 80688
  %i.ebb = load i32, ptr %i.eba, align 16, !tbaa !81
  %i.ebc = getelementptr inbounds nuw i8, ptr %i.d, i64 80704
  store i32 %i.ebb, ptr %i.ebc, align 16, !tbaa !410
  %i.ebd = getelementptr inbounds nuw i8, ptr %i.d, i64 80680
  %i.ebe = getelementptr inbounds nuw i8, ptr %i.d, i64 80696
  %i.ebf = load <2 x i32>, ptr %i.ebd, align 8
  store <2 x i32> %i.ebf, ptr %i.ebe, align 8
  br label %update_last_header_values.exit

update_last_header_values.exit:                   ; preds = %._crit_edge1090, %.preheader.i834
  %i.ebg = load i32, ptr %i.la, align 4, !tbaa !78
  %i.ebh = getelementptr inbounds nuw i8, ptr %i.d, i64 6128
  store i32 %i.ebg, ptr %i.ebh, align 16, !tbaa !411
  %i.ebi = load i32, ptr %i.en, align 8, !tbaa !142
  %i.ebj = getelementptr inbounds nuw i8, ptr %i.d, i64 6348
  store i32 %i.ebi, ptr %i.ebj, align 4, !tbaa !412
end_hunk_3
begin_hunk_4_@encode_header:bb.a
  %.not.i199 = icmp ne i64 %indvars.iv26.i198, 0
  %i.ok = getelementptr inbounds nuw [4640 x i8], ptr %i.oj, i64 %indvars.iv26.i198
  %i.ol = zext i1 %.not.i199 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %indvars.iv.i200 = phi i64 [ %i.ol, %bb.av ], [ %indvars.iv.next.i201, %bb.ay ] ; 3 uses
  %i.om = icmp eq i64 %indvars.iv.i200, 2
  br i1 %i.om, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.on = getelementptr inbounds nuw [1160 x i8], ptr %i.ok, i64 %indvars.iv.i200
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 6416
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !190
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ig, i32 noundef %i.op, i32 noundef 1)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i200, 1 ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %indvars.iv.next.i201, 4
  br i1 %exitcond.not.i202, label %bb.az, label %bb.aw, !llvm.loop !436

bb.az:                                            ; preds = %bb.ay
  %indvars.iv.next27.i203 = add nuw nsw i64 %indvars.iv26.i198, 1 ; 2 uses
  %i.oq = load i32, ptr %i.mh, align 8, !tbaa !173 ; 2 uses
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv.next27.i203, %i.or
  br i1 %i.os, label %bb.av, label %._crit_edge.loopexit.i204, !llvm.loop !437

._crit_edge.loopexit.i204:                        ; preds = %bb.az
  %.pre.i205 = load i32, ptr %i.gp, align 8, !tbaa !105
  br label %._crit_edge.i194

._crit_edge.i194:                                 ; preds = %._crit_edge.loopexit.i204, %.preheader.i192
  %i.ot = phi i32 [ %.pre.i205, %._crit_edge.loopexit.i204 ], [ %i.og, %.preheader.i192 ] ; 2 uses
  %i.ou = phi i32 [ %i.oq, %._crit_edge.loopexit.i204 ], [ %i.oh, %.preheader.i192 ]
  %indvars.iv.next30.i195 = add nuw nsw i64 %indvars.iv29.i193, 1
  %spec.select.i196 = tail call i32 @llvm.smin.i32(i32 %i.ot, i32 2)
  %i.ov = sext i32 %spec.select.i196 to i64
  %i.ow = icmp slt i64 %indvars.iv.next30.i195, %i.ov
  br i1 %i.ow, label %.preheader.i192, label %encode_qlogs.exit206, !llvm.loop !438

bb.ba:                                            ; preds = %.loopexit
  store i32 %i.mo, ptr %i.d, align 4, !tbaa !318
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oy = zext i8 %i.mk to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oy
  %storemerge.i209 = load i8, ptr %i.oz, align 1, !tbaa !84
  store i8 %storemerge.i209, ptr %i.ig, align 1, !tbaa !84
  %i.pa = icmp slt i32 %i.mo, 256
  br i1 %i.pa, label %bb.bb, label %encode_qlogs.exit206

bb.bb:                                            ; preds = %bb.ba
  %i.pb = load i32, ptr %i.a, align 8, !tbaa !319 ; 2 uses
  %i.pc = add nsw i32 %i.pb, -65281               ; 2 uses
  %i.pd = icmp ugt i32 %i.pc, 254
  br i1 %i.pd, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.pe = ashr i32 %i.pc, 31                      ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !321
  %i.ph = add nsw i32 %i.pe, 1
  %i.pi = add i32 %i.ph, %i.pg
  %i.pj = trunc i32 %i.pi to i8
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 5 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !322
  store i8 %i.pj, ptr %i.pl, align 1, !tbaa !84
  %i.pm = load i32, ptr %i.pf, align 4, !tbaa !321
  %i.pn = icmp sgt i32 %i.pm, -1
  %i.po = load ptr, ptr %i.pk, align 8, !tbaa !322
  %i.pp = zext i1 %i.pn to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pp
  store ptr %i.pq, ptr %i.pk, align 8, !tbaa !322
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !320
  %.not16.i.i211 = icmp eq i32 %i.ps, 0
  br i1 %.not16.i.i211, label %._crit_edge.i.i214, label %.lr.ph.i.i212

.lr.ph.i.i212:                                    ; preds = %bb.bc
  %i.pt = trunc nsw i32 %i.pe to i8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i.i212
  %i.pu = load ptr, ptr %i.pk, align 8, !tbaa !322 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  store ptr %i.pv, ptr %i.pk, align 8, !tbaa !322
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !84
  %i.pw = load i32, ptr %i.pr, align 8, !tbaa !320
  %i.px = add nsw i32 %i.pw, -1                   ; 2 uses
  store i32 %i.px, ptr %i.pr, align 8, !tbaa !320
  %.not.i.i213 = icmp eq i32 %i.px, 0
  br i1 %.not.i.i213, label %._crit_edge.i.i214, label %bb.bd, !llvm.loop !323

._crit_edge.i.i214:                               ; preds = %bb.bd, %bb.bc
  %i.py = load i32, ptr %i.a, align 8, !tbaa !319 ; 2 uses
  %i.pz = ashr i32 %i.py, 8
  store i32 %i.pz, ptr %i.pf, align 4, !tbaa !321
  %.pre.i215 = load i32, ptr %i.d, align 4, !tbaa !318
  br label %renorm_encoder.exit.i210

bb.be:                                            ; preds = %bb.bb
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !320
  %i.qc = add nsw i32 %i.qb, 1
  store i32 %i.qc, ptr %i.qa, align 8, !tbaa !320
  br label %renorm_encoder.exit.i210

renorm_encoder.exit.i210:                         ; preds = %bb.be, %._crit_edge.i.i214
  %i.qd = phi i32 [ %i.mo, %bb.be ], [ %.pre.i215, %._crit_edge.i.i214 ]
  %i.qe = phi i32 [ %i.pb, %bb.be ], [ %i.py, %._crit_edge.i.i214 ]
  %i.qf = shl i32 %i.qe, 8
  %i.qg = and i32 %i.qf, 65280
  store i32 %i.qg, ptr %i.a, align 8, !tbaa !319
  %i.qh = shl i32 %i.qd, 8
  store i32 %i.qh, ptr %i.d, align 4, !tbaa !318
  br label %encode_qlogs.exit206

encode_qlogs.exit206:                             ; preds = %._crit_edge.i194, %renorm_encoder.exit.i210, %bb.ba, %.preheader.lr.ph.i191, %put_rac.exit190, %encode_qlogs.exitthread-pre-split
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 6124
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !78
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 6128
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !411
  %i.qn = sub nsw i32 %i.qk, %i.qm
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.qn, i32 noundef 1)
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 6344
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !142
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 6348
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !412
  %i.qs = sub nsw i32 %i.qp, %i.qr
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.qs, i32 noundef 1)
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 6352
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !79
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 6356
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !414
  %i.qx = sub nsw i32 %i.qu, %i.qw
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.qx, i32 noundef 1)
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 6360
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !174
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 6364
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !413
  %i.rc = sub nsw i32 %i.qz, %i.rb
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.rc, i32 noundef 1)
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 6376
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !80
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 6380
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !415
  %i.rh = sub nsw i32 %i.re, %i.rg
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.rh, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_blocks(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.BlockNode, align 2          ; 4 uses
  %3 = alloca [4 x %struct.BlockNode], align 16   ; 7 uses
  %4 = alloca [4 x %struct.BlockNode], align 16   ; 7 uses
  %5 = alloca %struct.BlockNode, align 2          ; 4 uses
  %6 = alloca %struct.BlockNode, align 2          ; 4 uses
  %7 = alloca %struct.BlockNode, align 2          ; 4 uses
  %8 = alloca %struct.BlockNode, align 2          ; 4 uses
  %9 = alloca %struct.BlockNode, align 2          ; 4 uses
  %10 = alloca %struct.BlockNode, align 2         ; 4 uses
  %11 = alloca %struct.BlockNode, align 2         ; 4 uses
  %12 = alloca %struct.BlockNode, align 2         ; 4 uses
  %13 = alloca %struct.BlockNode, align 2         ; 4 uses
  %14 = alloca %struct.BlockNode, align 2         ; 4 uses
  %15 = alloca %struct.BlockNode, align 2         ; 4 uses
  %16 = alloca %struct.BlockNode, align 2         ; 4 uses
  %17 = alloca %struct.BlockNode, align 2         ; 4 uses
  %18 = alloca %struct.BlockNode, align 2         ; 4 uses
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %19 = alloca %struct.RangeCoder, align 8        ; 4 uses
  %i.b = alloca [4224 x i8], align 16             ; 4 uses
  %.sroa.6.i = alloca { [3 x i8], i8, i8 }, align 8 ; 5 uses
  %i.c = alloca [32 x [32 x i8]], align 16        ; 60 uses
  %i.d = alloca [4 x ptr], align 16               ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6368 ; 20 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !117
  %.fr64 = freeze i32 %i.f                        ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6372 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 155980 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !115
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.b, label %bb.ed

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !140
  %i.n = icmp eq i32 %i.m, 0
  %i.o = icmp ne i32 %1, 0
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.c, label %bb.ed

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6376 ; 23 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !80   ; 2 uses
  %i.r = shl i32 %.fr64, %i.q                     ; 6 uses
  %i.s = shl i32 %i.h, %i.q                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %19, ptr noundef nonnull align 8 dereferenceable(560) %i.t, i64 560, i1 false), !tbaa.struct !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %i.b, ptr noundef nonnull align 8 dereferenceable(4224) %i.u, i64 4224, i1 false)
  %i.v = icmp sgt i32 %i.h, 0
  %i.w = icmp sgt i32 %.fr64, 0
  %or.cond1086.i = and i1 %i.v, %i.w
  br i1 %or.cond1086.i, label %.preheader639.i, label %._crit_edge651.i

.preheader639.i:                                  ; preds = %bb.c, %._crit_edge.i
  %i.x = phi i32 [ %i.ae, %._crit_edge.i ], [ %i.h, %bb.c ]
  %i.y = phi i32 [ %i.af, %._crit_edge.i ], [ %.fr64, %bb.c ] ; 2 uses
  %.0449650.i = phi i32 [ %i.ag, %._crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader639.i, %.lr.ph.i
  %.0452649.i = phi i32 [ %i.ab, %.lr.ph.i ], [ 0, %.preheader639.i ] ; 2 uses
  %i.aa = tail call fastcc i32 @encode_q_branch(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0452649.i, i32 noundef %.0449650.i) ; 0 uses
  %i.ab = add nuw nsw i32 %.0452649.i, 1          ; 2 uses
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !444

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.g, align 4, !tbaa !116
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader639.i
  %i.ae = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.x, %.preheader639.i ] ; 2 uses
  %i.af = phi i32 [ %i.ac, %._crit_edge.loopexit.i ], [ %i.y, %.preheader639.i ]
  %i.ag = add nuw nsw i32 %.0449650.i, 1          ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.preheader639.i, label %._crit_edge651.i, !llvm.loop !445

._crit_edge651.i:                                 ; preds = %._crit_edge.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %i.t, ptr noundef nonnull align 8 dereferenceable(560) %19, i64 560, i1 false), !tbaa.struct !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4224) %i.u, ptr noundef nonnull align 16 dereferenceable(4224) %i.b, i64 4224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aj = icmp sgt i32 %i.s, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 155032 ; 20 uses
  %i.al = xor i32 %i.r, -1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 172352 ; 18 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168256 ; 17 uses
  %i.ao = add nsw i32 %i.r, -1
  %i.ap = add nsw i32 %i.s, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6392 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6396
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6384 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 6332
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 6336
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 172400
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 155080
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 155976 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 6160
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.bd = sub nsw i32 0, %i.r
  %i.be = sext i32 %i.bd to i64
  %i.bf = sext i32 %i.r to i64                    ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 155984
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.aj, label %.split.us.i, label %.split798.us.thread.i

.split.us.i:                                      ; preds = %._crit_edge651.i
  %i.bj = icmp sgt i32 %i.r, 0
  br i1 %i.bj, label %.preheader638.us.us.preheader.i, label %.split798.us.thread1055.i

.preheader638.us.us.preheader.i:                  ; preds = %.split.us.i
  %i.bk = sext i32 %i.al to i64
  %i.bl = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.bm = zext nneg i32 %i.s to i64               ; 3 uses
  %i.bn = zext nneg i32 %i.ap to i64
  %wide.trip.count923.i = zext nneg i32 %i.r to i64 ; 2 uses
  %scevgep234.a = getelementptr i8, ptr %0, i64 172400
  %scevgep237.a = getelementptr i8, ptr %0, i64 172400
  %scevgep332 = getelementptr i8, ptr %i.c, i64 -32
  %scevgep361.a = getelementptr i8, ptr %i.c, i64 -32
  br label %.preheader638.us.us.i

.preheader638.us.us.i:                            ; preds = %._crit_edge722.split.us.us.us.i, %.preheader638.us.us.preheader.i
  %.0455764.us.us.i = phi i32 [ %i.bus, %._crit_edge722.split.us.us.us.i ], [ 0, %.preheader638.us.us.preheader.i ] ; 4 uses
  %.not483.us.us.i = icmp eq i32 %.0455764.us.us.i, 0 ; 2 uses
  br label %.preheader637.us.us.us.i

.preheader637.us.us.us.i:                         ; preds = %._crit_edge719.us.us.us.i, %.preheader638.us.us.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge719.us.us.us.i ], [ 2, %.preheader638.us.us.i ] ; 2 uses
  %indvars.iv925.i = phi i64 [ %indvars.iv.next926.i, %._crit_edge719.us.us.us.i ], [ 0, %.preheader638.us.us.i ] ; 24 uses
  %indvars.iv901.i = phi i32 [ %indvars.iv.next902.i, %._crit_edge719.us.us.us.i ], [ -1, %.preheader638.us.us.i ] ; 5 uses
  %.0445721.us.us.us.i = phi i32 [ %.3448.us.us.us.i, %._crit_edge719.us.us.us.i ], [ 0, %.preheader638.us.us.i ]
  %i.bo = trunc i64 %indvars.iv925.i to i32
  %i.bp = trunc i64 %indvars.iv925.i to i32
  %i.bq = trunc i64 %indvars.iv925.i to i32
  %i.br = mul nuw nsw i64 %indvars.iv925.i, %i.bf
  %i.bs = icmp ne i64 %indvars.iv925.i, 0         ; 3 uses
  %indvars.iv.next926.i = add nuw nsw i64 %indvars.iv925.i, 1 ; 3 uses
  %i.bt = icmp samesign uge i64 %indvars.iv.next926.i, %i.bm ; 4 uses
  %i.bu = icmp eq i64 %indvars.iv925.i, 0         ; 2 uses
  %i.bv = icmp eq i64 %indvars.iv925.i, %i.bn     ; 2 uses
  %i.bw = trunc i64 %indvars.iv925.i to i32       ; 19 uses
  %i.bx = add i32 %i.bw, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.df, %.preheader637.us.us.us.i
  %indvars.iv920.i = phi i64 [ %indvars.iv.next921.i, %bb.df ], [ 0, %.preheader637.us.us.us.i ] ; 30 uses
  %indvars.iv894.i = phi i32 [ %indvars.iv.next895.i, %bb.df ], [ -1, %.preheader637.us.us.us.i ] ; 5 uses
  %.1446717.us.us.us.i = phi i32 [ %.3448.us.us.us.i, %bb.df ], [ %.0445721.us.us.us.i, %.preheader637.us.us.us.i ] ; 4 uses
  %i.by = trunc i64 %indvars.iv920.i to i32
  %i.bz = trunc i64 %indvars.iv920.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ca = add nuw nsw i64 %indvars.iv920.i, %i.br ; 5 uses
  %i.cb = load ptr, ptr %i.ak, align 8, !tbaa !217 ; 2 uses
  %i.cc = getelementptr [10 x i8], ptr %i.cb, i64 %i.ca ; 19 uses
  %i.cd = sub nsw i64 %i.ca, %i.bf
  %i.ce = getelementptr [10 x i8], ptr %i.cb, i64 %i.cd ; 2 uses
  %i.cf = select i1 %i.bs, ptr %i.ce, ptr null    ; 3 uses
  %i.cg = icmp ne i64 %indvars.iv920.i, 0         ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cc, i64 -10
  %spec.select602.us.us.us.i = select i1 %i.cg, ptr %i.ch, ptr null ; 3 uses
  %indvars.iv.next921.i = add nuw nsw i64 %indvars.iv920.i, 1 ; 3 uses
  %i.ci = icmp slt i64 %indvars.iv.next921.i, %i.bf ; 3 uses
  %i.cj = getelementptr i8, ptr %i.cc, i64 10
  %i.ck = select i1 %i.ci, ptr %i.cj, ptr null    ; 3 uses
  %i.cl = getelementptr [10 x i8], ptr %i.cc, i64 %i.bf ; 3 uses
  %or.cond.us.us.us.i = and i1 %i.bs, %i.cg
  %i.cm = getelementptr [10 x i8], ptr %i.cc, i64 %i.bk
  %i.cn = select i1 %or.cond.us.us.us.i, ptr %i.cm, ptr null ; 2 uses
  %or.cond3.us.us.us.i = and i1 %i.bs, %i.ci
  %i.co = getelementptr i8, ptr %i.ce, i64 10
  %i.cp = select i1 %or.cond3.us.us.us.i, ptr %i.co, ptr null ; 2 uses
  %.not504.us.us.us.i = xor i1 %i.cg, true
  %brmerge.us.us.us.i = or i1 %i.bt, %.not504.us.us.us.i
  %i.cq = getelementptr i8, ptr %i.cl, i64 -10
  %i.cr = select i1 %brmerge.us.us.us.i, ptr null, ptr %i.cq ; 2 uses
  %.not506.us.us.us.i = xor i1 %i.ci, true
  %brmerge508.us.us.us.i = or i1 %i.bt, %.not506.us.us.us.i
  %i.cs = getelementptr i8, ptr %i.cl, i64 10
  %i.ct = select i1 %brmerge508.us.us.us.i, ptr null, ptr %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.p, align 8, !tbaa !80  ; 12 uses
  %i.cv = lshr i32 16, %i.cu                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %.pre941.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !219 ; 4 uses
  %i.cw = and i8 %.pre941.i, 2
  %.not484.us.us.us.i = icmp eq i8 %i.cw, 0
  %or.cond1087.i = select i1 %.not483.us.us.i, i1 true, i1 %.not484.us.us.us.i
  br i1 %or.cond1087.i, label %._crit_edge940.i, label %bb.df

._crit_edge940.i:                                 ; preds = %bb.d
  %i.cx = or i8 %.pre941.i, 2
  store i8 %i.cx, ptr %.phi.trans.insert.i, align 2, !tbaa !219
  %.sroa.0.0.copyload.us.us.us.i = load i16, ptr %i.cc, align 2, !tbaa !184
  %.sroa.4567.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2 ; 6 uses
  %.sroa.4567.0.copyload.us.us.us.i = load i16, ptr %.sroa.4567.0..sroa_idx.us.us.us.i, align 2, !tbaa !184
  %.sroa.5.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 6 uses
  %.sroa.5.0.copyload568.us.us.us.i = load i8, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !84
  %.sroa.6569.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 5 ; 6 uses
  %.sroa.6569.0.copyload.us.us.us.i = load i8, ptr %.sroa.6569.0..sroa_idx.us.us.us.i, align 1
  %.sroa.7.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 6 ; 3 uses
  %.sroa.7.0.copyload.us.us.us.i = load i8, ptr %.sroa.7.0..sroa_idx.us.us.us.i, align 2
  %.sroa.8.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 7 ; 3 uses
  %.sroa.8.0.copyload.us.us.us.i = load i8, ptr %.sroa.8.0..sroa_idx.us.us.us.i, align 1, !tbaa !84
  %i.cy = load i32, ptr %i.am, align 16, !tbaa !446 ; 2 uses
  %.not485.us.us.us.i = icmp eq i32 %i.cy, 0
  br i1 %.not485.us.us.us.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge940.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.an, i8 0, i64 4096, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge940.i
  %i.cz = add i32 %i.cy, 4194304
  store i32 %i.cz, ptr %i.am, align 16, !tbaa !446
  %i.da = shl nuw nsw i32 %i.cv, 1                ; 9 uses
  %.not.i = icmp ult i32 %i.cu, 5                 ; 3 uses
  br i1 %.not.i, label %.lr.ph654.us.us.us.i, label %.loopexit631.us.us.us.i.thread

bb.g:                                             ; preds = %bb.g, %.lr.ph654.us.us.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph654.us.us.us.i ], [ %indvars.iv.next.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph654.us.us.us.i ], [ %niter.next.1, %bb.g ]
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.dc = mul nuw nsw i64 %indvars.iv.i, %i.bls
  %i.dd = getelementptr inbounds nuw i8, ptr %i.blr, i64 %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.db, ptr align 1 %i.dd, i64 %i.bls, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.next.i
  %i.df = mul nuw nsw i64 %indvars.iv.next.i, %i.bls
  %i.dg = getelementptr inbounds nuw i8, ptr %i.blr, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.de, ptr align 1 %i.dg, i64 %i.bls, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge655.us.us.us.i.unr-lcssa, label %bb.g, !llvm.loop !447

._crit_edge655.us.us.us.i.unr-lcssa:              ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge655.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge655.us.us.us.i.unr-lcssa
  %lcmp.mod429 = trunc i32 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod429)
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.next.i.1
  %i.di = mul nuw nsw i64 %indvars.iv.next.i.1, %i.bls
  %i.dj = getelementptr inbounds nuw i8, ptr %i.blr, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dh, ptr align 1 %i.dj, i64 %i.bls, i1 false)
  br label %._crit_edge655.us.us.us.i

._crit_edge655.us.us.us.i:                        ; preds = %._crit_edge655.us.us.us.i.unr-lcssa, %.epil.preheader
  %i.dk = icmp eq i64 %indvars.iv920.i, 0         ; 2 uses
  br i1 %i.dk, label %.lr.ph657.us.us.us.i, label %.loopexit636.us.us.us.i

bb.h:                                             ; preds = %bb.h, %.lr.ph657.us.us.us.i.new
  %indvars.iv846.i = phi i64 [ 0, %.lr.ph657.us.us.us.i.new ], [ %indvars.iv.next847.i.3, %bb.h ] ; 5 uses
  %niter435 = phi i64 [ 0, %.lr.ph657.us.us.us.i.new ], [ %niter435.next.3, %bb.h ]
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 16, !tbaa !84
  %i.dn = getelementptr i8, ptr %i.dl, i64 %i.blt
  %i.do = getelementptr i8, ptr %i.dn, i64 -1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !84
  %i.dq = add i8 %i.dp, %i.dm
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.dl, i8 %i.dq, i64 %i.blt, i1 false)
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 16, !tbaa !84
  %i.du = getelementptr i8, ptr %i.ds, i64 %i.blt
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !84
  %i.dx = add i8 %i.dw, %i.dt
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ds, i8 %i.dx, i64 %i.blt, i1 false)
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 64 ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 16, !tbaa !84
  %i.eb = getelementptr i8, ptr %i.dz, i64 %i.blt
  %i.ec = getelementptr i8, ptr %i.eb, i64 -1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !84
  %i.ee = add i8 %i.ed, %i.ea
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.dz, i8 %i.ee, i64 %i.blt, i1 false)
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 96 ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 16, !tbaa !84
  %i.ei = getelementptr i8, ptr %i.eg, i64 %i.blt
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !84
  %i.el = add i8 %i.ek, %i.eh
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.eg, i8 %i.el, i64 %i.blt, i1 false)
  %indvars.iv.next847.i.3 = add nuw nsw i64 %indvars.iv846.i, 4 ; 2 uses
  %niter435.next.3 = add i64 %niter435, 4         ; 2 uses
  %niter435.ncmp.3 = icmp eq i64 %niter435.next.3, %unroll_iter434
  br i1 %niter435.ncmp.3, label %.loopexit636.us.us.us.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !448

.loopexit636.us.us.us.i.loopexit.unr-lcssa:       ; preds = %bb.h
  %lcmp.mod432.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod432.not, label %.loopexit636.us.us.us.i, label %.epil.preheader430

.epil.preheader430:                               ; preds = %.loopexit636.us.us.us.i.loopexit.unr-lcssa, %.lr.ph657.us.us.us.i
  %indvars.iv846.i.epil.init = phi i64 [ 0, %.lr.ph657.us.us.us.i ], [ %indvars.iv.next847.i.3, %.loopexit636.us.us.us.i.loopexit.unr-lcssa ]
  %lcmp.mod433 = icmp ne i64 %xtraiter431, 0
  call void @llvm.assume(i1 %lcmp.mod433)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader430
  %indvars.iv846.i.epil = phi i64 [ %indvars.iv846.i.epil.init, %.epil.preheader430 ], [ %indvars.iv.next847.i.epil, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader430 ], [ %epil.iter.next, %bb.i ]
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i.epil ; 3 uses
  %i.en = load i8, ptr %i.em, align 16, !tbaa !84
  %i.eo = getelementptr i8, ptr %i.em, i64 %i.blt
  %i.ep = getelementptr i8, ptr %i.eo, i64 -1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !84
  %i.er = add i8 %i.eq, %i.en
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.em, i8 %i.er, i64 %i.blt, i1 false)
  %indvars.iv.next847.i.epil = add nuw nsw i64 %indvars.iv846.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_4
begin_hunk_5_@encode_blocks:bb.a
  %indvars.iv256.i.us.us.us.us.i = phi i64 [ %indvars.iv.next257.i.us.us.us.us.i, %._crit_edge201.split.us219.i.split.us.us.us.us.us.i ], [ %i.qs, %.lr.ph200.us.i.preheader.us.us.us.i ] ; 3 uses
  %.1163206.us.i.us.us.us.us.i = phi i32 [ %.us-phi682.us.us.us.i, %._crit_edge201.split.us219.i.split.us.us.us.us.us.i ], [ %.0162234.i.us.us.us.i, %.lr.ph200.us.i.preheader.us.us.us.i ] ; 2 uses
  %.1166205.us.i.us.us.us.us.i = phi i32 [ %.us-phi.us.us.us.i, %._crit_edge201.split.us219.i.split.us.us.us.us.us.i ], [ %.0165233.i.us.us.us.i, %.lr.ph200.us.i.preheader.us.us.us.i ] ; 2 uses
  %i.bqh = trunc nuw nsw i64 %indvars.iv256.i.us.us.us.us.i to i32
  %i.bqi = add i32 %.neg175.i.us.us.us.i, %i.bqh  ; 2 uses
  %i.bqj = mul nsw i32 %i.bqi, %i.kv              ; 2 uses
  %.not176.us.i.us.us.us.us.i = icmp slt i32 %i.bqi, %i.ku
  %or.cond.us.i.us.us.us.us.i = or i1 %i.ahv, %.not176.us.i.us.us.us.us.i
  %i.bqk = mul nsw i64 %indvars.iv256.i.us.us.us.us.i, %i.ml
  %invariant.gep313.i.us.us.us.us.i = getelementptr i8, ptr %i.ld, i64 %i.bqk ; 2 uses
  br i1 %or.cond.us.i.us.us.us.us.i, label %.lr.ph200.us.i.split.us.us.split.us.us.us.us.i, label %.lr.ph200.us.i.split.us.us.split.us758.us.us.i

.lr.ph200.us.i.split.us.us.split.us758.us.us.i:   ; preds = %.lr.ph200.us.i.us.us.us.us.i, %bb.dh
  %indvars.iv252.i.us.us.us747.us.us.i = phi i64 [ %indvars.iv.next253.i.us.us.us754.us.us.i, %bb.dh ], [ %i.qw, %.lr.ph200.us.i.us.us.us.us.i ] ; 3 uses
  %.2164198.us211.i.us.us.us748.us.us.i = phi i32 [ %i.brw, %bb.dh ], [ %.1163206.us.i.us.us.us.us.i, %.lr.ph200.us.i.us.us.us.us.i ]
  %.2167197.us212.i.us.us.us749.us.us.i = phi i32 [ %i.bru, %bb.dh ], [ %.1166205.us.i.us.us.us.us.i, %.lr.ph200.us.i.us.us.us.us.i ]
  %i.bql = trunc nuw nsw i64 %indvars.iv252.i.us.us.us747.us.us.i to i32
  %i.bqm = add i32 %.neg.i.us.us.us.i, %i.bql     ; 2 uses
  %i.bqn = add nsw i32 %i.bqm, %i.bqj             ; 4 uses
  %i.bqo = sext i32 %i.bqn to i64                 ; 2 uses
  %i.bqp = getelementptr inbounds i8, ptr %i.kw, i64 %i.bqo
  %i.bqq = load i8, ptr %i.bqp, align 1, !tbaa !84
  %i.bqr = zext i8 %i.bqq to i32
  %i.bqs = add nsw i32 %i.bqn, %i.kt
  %i.bqt = sext i32 %i.bqs to i64
  %i.bqu = getelementptr inbounds i8, ptr %i.kw, i64 %i.bqt
  %i.bqv = load i8, ptr %i.bqu, align 1, !tbaa !84
  %i.bqw = zext i8 %i.bqv to i32
  %i.bqx = add nuw nsw i32 %i.bqw, %i.bqr
  %i.bqy = sub nsw i32 %i.bqn, %i.me
  %i.bqz = sext i32 %i.bqy to i64
  %i.bra = getelementptr inbounds i8, ptr %i.kw, i64 %i.bqz
  %i.brb = load i8, ptr %i.bra, align 1, !tbaa !84
  %i.brc = zext i8 %i.brb to i32
  %i.brd = add nuw nsw i32 %i.bqx, %i.brc         ; 2 uses
  %.not177.us216.i.us.us.us750.us.us.i = icmp slt i32 %i.bqm, %i.kt
  %or.cond178.us217.i.us.us.us751.us.us.i = or i1 %.fr.us.us.i, %.not177.us216.i.us.us.us750.us.us.i
  br i1 %or.cond178.us217.i.us.us.us751.us.us.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph200.us.i.split.us.us.split.us758.us.us.i
  %i.bre = sub nsw i32 %i.bqn, %i.kt
  %i.brf = sext i32 %i.bre to i64
  %i.brg = getelementptr inbounds i8, ptr %i.kw, i64 %i.brf
  %i.brh = load i8, ptr %i.brg, align 1, !tbaa !84
  %i.bri = zext i8 %i.brh to i32
  %i.brj = add nuw nsw i32 %i.brd, %i.bri
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.lr.ph200.us.i.split.us.us.split.us758.us.us.i
  %.3.us218.i.us.us.us752.us.us.i = phi i32 [ %i.brj, %bb.dg ], [ %i.brd, %.lr.ph200.us.i.split.us.us.split.us758.us.us.i ] ; 3 uses
  %i.brk = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.bqo ; 2 uses
  %i.brl = load i16, ptr %i.brk, align 2, !tbaa !184
  %i.brm = sext i16 %i.brl to i32
  %i.brn = sub nsw i32 8, %i.brm                  ; 2 uses
  %i.bro = trunc i32 %i.brn to i16
  store i16 %i.bro, ptr %i.brk, align 2, !tbaa !184
  %gep314.i.us.us.us753.us.us.i = getelementptr i8, ptr %invariant.gep313.i.us.us.us.us.i, i64 %indvars.iv252.i.us.us.us747.us.us.i
  %i.brp = load i8, ptr %gep314.i.us.us.us753.us.us.i, align 1, !tbaa !84
  %i.brq = zext i8 %i.brp to i32
  %i.brr = ashr i32 %i.brn, 4
  %i.brs = sub nsw i32 %i.brq, %i.brr
  %i.brt = mul nsw i32 %i.brs, %.3.us218.i.us.us.us752.us.us.i
  %i.bru = add nsw i32 %i.brt, %.2167197.us212.i.us.us.us749.us.us.i ; 2 uses
  %i.brv = mul nuw nsw i32 %.3.us218.i.us.us.us752.us.us.i, %.3.us218.i.us.us.us752.us.us.i
  %i.brw = add nsw i32 %i.brv, %.2164198.us211.i.us.us.us748.us.us.i ; 2 uses
  %indvars.iv.next253.i.us.us.us754.us.us.i = add nuw nsw i64 %indvars.iv252.i.us.us.us747.us.us.i, 1 ; 2 uses
  %i.brx = icmp samesign ult i64 %indvars.iv.next253.i.us.us.us754.us.us.i, %i.ahx
  br i1 %i.brx, label %.lr.ph200.us.i.split.us.us.split.us758.us.us.i, label %._crit_edge201.split.us219.i.split.us.us.us.us.us.i, !llvm.loop !484

._crit_edge201.split.us219.i.split.us.us.us.us.us.i: ; preds = %bb.dh, %bb.dj
  %.us-phi.us.us.us.i = phi i32 [ %i.btc, %bb.dj ], [ %i.bru, %bb.dh ] ; 2 uses
  %.us-phi682.us.us.us.i = phi i32 [ %i.bte, %bb.dj ], [ %i.brw, %bb.dh ] ; 2 uses
  %indvars.iv.next257.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv256.i.us.us.us.us.i, 1 ; 2 uses
  %i.bry = icmp samesign ult i64 %indvars.iv.next257.i.us.us.us.us.i, %i.ahy
  br i1 %i.bry, label %.lr.ph200.us.i.us.us.us.us.i, label %._crit_edge208.i.us.us.us.i, !llvm.loop !485

.lr.ph200.us.i.split.us.us.split.us.us.us.us.i:   ; preds = %.lr.ph200.us.i.us.us.us.us.i, %bb.dj
  %indvars.iv252.i.us.us.us.us.us.us.i = phi i64 [ %indvars.iv.next253.i.us.us.us.us.us.us.i, %bb.dj ], [ %i.qw, %.lr.ph200.us.i.us.us.us.us.i ] ; 3 uses
  %.2164198.us211.i.us.us.us.us.us.us.i = phi i32 [ %i.bte, %bb.dj ], [ %.1163206.us.i.us.us.us.us.i, %.lr.ph200.us.i.us.us.us.us.i ]
  %.2167197.us212.i.us.us.us.us.us.us.i = phi i32 [ %i.btc, %bb.dj ], [ %.1166205.us.i.us.us.us.us.i, %.lr.ph200.us.i.us.us.us.us.i ]
  %i.brz = trunc nuw nsw i64 %indvars.iv252.i.us.us.us.us.us.us.i to i32
  %i.bsa = add i32 %.neg.i.us.us.us.i, %i.brz     ; 2 uses
  %i.bsb = add nsw i32 %i.bsa, %i.bqj             ; 3 uses
  %i.bsc = sext i32 %i.bsb to i64                 ; 2 uses
  %i.bsd = getelementptr inbounds i8, ptr %i.kw, i64 %i.bsc
  %i.bse = load i8, ptr %i.bsd, align 1, !tbaa !84
  %i.bsf = zext i8 %i.bse to i32
  %i.bsg = add nsw i32 %i.bsb, %i.kt
  %i.bsh = sext i32 %i.bsg to i64
  %i.bsi = getelementptr inbounds i8, ptr %i.kw, i64 %i.bsh
  %i.bsj = load i8, ptr %i.bsi, align 1, !tbaa !84
  %i.bsk = zext i8 %i.bsj to i32
  %i.bsl = add nuw nsw i32 %i.bsk, %i.bsf         ; 2 uses
  %.not177.us216.i.us.us.us.us.us.us.i = icmp slt i32 %i.bsa, %i.kt
  %or.cond178.us217.i.us.us.us.us.us.us.i = or i1 %.fr.us.us.i, %.not177.us216.i.us.us.us.us.us.us.i
  br i1 %or.cond178.us217.i.us.us.us.us.us.us.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.lr.ph200.us.i.split.us.us.split.us.us.us.us.i
  %i.bsm = sub nsw i32 %i.bsb, %i.kt
  %i.bsn = sext i32 %i.bsm to i64
  %i.bso = getelementptr inbounds i8, ptr %i.kw, i64 %i.bsn
  %i.bsp = load i8, ptr %i.bso, align 1, !tbaa !84
  %i.bsq = zext i8 %i.bsp to i32
  %i.bsr = add nuw nsw i32 %i.bsl, %i.bsq
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.lr.ph200.us.i.split.us.us.split.us.us.us.us.i
  %.3.us218.i.us.us.us.us.us.us.i = phi i32 [ %i.bsr, %bb.di ], [ %i.bsl, %.lr.ph200.us.i.split.us.us.split.us.us.us.us.i ] ; 3 uses
  %i.bss = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.bsc ; 2 uses
  %i.bst = load i16, ptr %i.bss, align 2, !tbaa !184
  %i.bsu = sext i16 %i.bst to i32
  %i.bsv = sub nsw i32 8, %i.bsu                  ; 2 uses
  %i.bsw = trunc i32 %i.bsv to i16
  store i16 %i.bsw, ptr %i.bss, align 2, !tbaa !184
  %gep314.i.us.us.us.us.us.us.i = getelementptr i8, ptr %invariant.gep313.i.us.us.us.us.i, i64 %indvars.iv252.i.us.us.us.us.us.us.i
  %i.bsx = load i8, ptr %gep314.i.us.us.us.us.us.us.i, align 1, !tbaa !84
  %i.bsy = zext i8 %i.bsx to i32
  %i.bsz = ashr i32 %i.bsv, 4
  %i.bta = sub nsw i32 %i.bsy, %i.bsz
  %i.btb = mul nsw i32 %i.bta, %.3.us218.i.us.us.us.us.us.us.i
  %i.btc = add nsw i32 %i.btb, %.2167197.us212.i.us.us.us.us.us.us.i ; 2 uses
  %i.btd = mul nuw nsw i32 %.3.us218.i.us.us.us.us.us.us.i, %.3.us218.i.us.us.us.us.us.us.i
  %i.bte = add nsw i32 %i.btd, %.2164198.us211.i.us.us.us.us.us.us.i ; 2 uses
  %indvars.iv.next253.i.us.us.us.us.us.us.i = add nuw nsw i64 %indvars.iv252.i.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.btf = icmp samesign ult i64 %indvars.iv.next253.i.us.us.us.us.us.us.i, %i.ahx
  br i1 %i.btf, label %.lr.ph200.us.i.split.us.us.split.us.us.us.us.i, label %._crit_edge201.split.us219.i.split.us.us.us.us.us.i, !llvm.loop !484

._crit_edge201.split.us.us.us.split.i.us.us.us.i: ; preds = %bb.ao, %bb.dl
  %.us-phi683.us.us.us.i = phi i32 [ %i.buk, %bb.dl ], [ %i.alf, %bb.ao ] ; 2 uses
  %.us-phi684.us.us.us.i = phi i32 [ %i.bum, %bb.dl ], [ %i.alh, %bb.ao ] ; 2 uses
  %indvars.iv.next265.i.us.us.us.i = add nuw nsw i64 %indvars.iv264.i.us.us.us.i, 1 ; 2 uses
  %i.btg = icmp samesign ult i64 %indvars.iv.next265.i.us.us.us.i, %i.ahy
  br i1 %i.btg, label %.lr.ph200.us.us.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i, !llvm.loop !485

.lr.ph200.us.us.i.split.us.us.us.us.i:            ; preds = %.lr.ph200.us.us.i.us.us.us.i, %bb.dl
  %indvars.iv260.i.us.us.us.us.i = phi i64 [ %indvars.iv.next261.i.us.us.us.us.i, %bb.dl ], [ %i.qw, %.lr.ph200.us.us.i.us.us.us.i ] ; 3 uses
  %.2164198.us.us.us.i.us.us.us.us.i = phi i32 [ %i.bum, %bb.dl ], [ %.1163206.us.us.i.us.us.us.i, %.lr.ph200.us.us.i.us.us.us.i ]
  %.2167197.us.us.us.i.us.us.us.us.i = phi i32 [ %i.buk, %bb.dl ], [ %.1166205.us.us.i.us.us.us.i, %.lr.ph200.us.us.i.us.us.us.i ]
  %i.bth = trunc nuw nsw i64 %indvars.iv260.i.us.us.us.us.i to i32
  %i.bti = add i32 %.neg.i.us.us.us.i, %i.bth     ; 2 uses
  %i.btj = add nsw i32 %i.bti, %i.aju             ; 3 uses
  %i.btk = sext i32 %i.btj to i64                 ; 2 uses
  %i.btl = getelementptr inbounds i8, ptr %i.kw, i64 %i.btk
  %i.btm = load i8, ptr %i.btl, align 1, !tbaa !84
  %i.btn = zext i8 %i.btm to i32
  %i.bto = add nsw i32 %i.btj, %i.me
  %i.btp = sext i32 %i.bto to i64
  %i.btq = getelementptr inbounds i8, ptr %i.kw, i64 %i.btp
  %i.btr = load i8, ptr %i.btq, align 1, !tbaa !84
  %i.bts = zext i8 %i.btr to i32
  %i.btt = add nuw nsw i32 %i.bts, %i.btn         ; 2 uses
  %.not177.us.us.us.i.us.us.us.us.i = icmp slt i32 %i.bti, %i.kt
  %or.cond178.us.us.us.i.us.us.us.us.i = or i1 %.fr.us.us.i, %.not177.us.us.us.i.us.us.us.us.i
  br i1 %or.cond178.us.us.us.i.us.us.us.us.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph200.us.us.i.split.us.us.us.us.i
  %i.btu = sub nsw i32 %i.btj, %i.kt
  %i.btv = sext i32 %i.btu to i64
  %i.btw = getelementptr inbounds i8, ptr %i.kw, i64 %i.btv
  %i.btx = load i8, ptr %i.btw, align 1, !tbaa !84
  %i.bty = zext i8 %i.btx to i32
  %i.btz = add nuw nsw i32 %i.btt, %i.bty
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph200.us.us.i.split.us.us.us.us.i
  %.3.us.us.us.i.us.us.us.us.i = phi i32 [ %i.btz, %bb.dk ], [ %i.btt, %.lr.ph200.us.us.i.split.us.us.us.us.i ] ; 3 uses
  %i.bua = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.btk ; 2 uses
  %i.bub = load i16, ptr %i.bua, align 2, !tbaa !184
  %i.buc = sext i16 %i.bub to i32
  %i.bud = sub nsw i32 8, %i.buc                  ; 2 uses
  %i.bue = trunc i32 %i.bud to i16
  store i16 %i.bue, ptr %i.bua, align 2, !tbaa !184
  %gep316.i.us.us.us.us.i = getelementptr i8, ptr %invariant.gep315.i.us.us.us.i, i64 %indvars.iv260.i.us.us.us.us.i
  %i.buf = load i8, ptr %gep316.i.us.us.us.us.i, align 1, !tbaa !84
  %i.bug = zext i8 %i.buf to i32
  %i.buh = ashr i32 %i.bud, 4
  %i.bui = sub nsw i32 %i.bug, %i.buh
  %i.buj = mul nsw i32 %i.bui, %.3.us.us.us.i.us.us.us.us.i
  %i.buk = add nsw i32 %i.buj, %.2167197.us.us.us.i.us.us.us.us.i ; 2 uses
  %i.bul = mul nuw nsw i32 %.3.us.us.us.i.us.us.us.us.i, %.3.us.us.us.i.us.us.us.us.i
  %i.bum = add nsw i32 %i.bul, %.2164198.us.us.us.i.us.us.us.us.i ; 2 uses
  %indvars.iv.next261.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv260.i.us.us.us.us.i, 1 ; 2 uses
  %i.bun = icmp samesign ult i64 %indvars.iv.next261.i.us.us.us.us.i, %i.ahx
  br i1 %i.bun, label %.lr.ph200.us.us.i.split.us.us.us.us.i, label %._crit_edge201.split.us.us.us.split.i.us.us.us.i, !llvm.loop !484

.lr.ph687.us.us.us.i:                             ; preds = %.loopexit.us.us.us.i
  %i.buo = trunc i64 %indvars.iv920.i to i32      ; 5 uses
  %i.bup = add i32 %i.buo, -1
  br label %bb.p

.lr.ph710.us.us.us.i:                             ; preds = %bb.bb
  %.not497.us.us.us.i = icmp eq ptr %i.cf, null
  %.not498.us.us.us.i = icmp eq ptr %spec.select602.us.us.us.i, null
  %.not499.us.us.us.i = icmp eq ptr %i.ck, null
  %i.buq = trunc nuw nsw i64 %indvars.iv920.i to i32 ; 12 uses
  br label %bb.bc

._crit_edge719.us.us.us.i:                        ; preds = %bb.df
  %indvars.iv.next902.i = add nsw i32 %indvars.iv901.i, 1
  %exitcond929.not.i = icmp eq i64 %indvars.iv.next926.i, %i.bm
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  br i1 %exitcond929.not.i, label %._crit_edge722.split.us.us.us.i, label %.preheader637.us.us.us.i, !llvm.loop !516

._crit_edge722.split.us.us.us.i:                  ; preds = %._crit_edge719.us.us.us.i
  %i.bur = load ptr, ptr %i.ai, align 8, !tbaa !108
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bur, i32 noundef 48, ptr noundef nonnull @.str.35, i32 noundef %.0455764.us.us.i, i32 noundef %.3448.us.us.us.i) #12
  %.not.us.us.i = icmp ne i32 %.3448.us.us.us.i, 0
  %i.bus = add nuw nsw i32 %.0455764.us.us.i, 1
  %i.but = icmp samesign ult i32 %.0455764.us.us.i, 24
  %or.cond.i = select i1 %.not.us.us.i, i1 %i.but, i1 false
  br i1 %or.cond.i, label %.preheader638.us.us.i, label %.split798.us.i, !llvm.loop !517

._crit_edge201.split.us219.i.split.us.us.us.i:    ; preds = %bb.am, %bb.dn, %scalar.ph, %middle.block
  %.us-phi.us780.us.i = phi i32 [ %i.bya, %scalar.ph ], [ %i.bvs, %bb.dn ], [ %i.bxk, %middle.block ], [ %i.ajo, %bb.am ] ; 2 uses
  %.us-phi761.us.us.i = phi i32 [ %i.byc, %scalar.ph ], [ %i.bvu, %bb.dn ], [ %i.bxj, %middle.block ], [ %i.ajq, %bb.am ] ; 2 uses
  %indvars.iv.next257.i.us731.us.us.i = add nuw nsw i64 %indvars.iv256.i.us725.us.us.i, 1 ; 2 uses
  %i.buu = icmp samesign ult i64 %indvars.iv.next257.i.us731.us.us.i, %i.ahy
  %indvar.next = add i32 %indvar, 1
  br i1 %i.buu, label %.lr.ph200.us.i.us724.us.us.i, label %._crit_edge208.i.us.us.us.i, !llvm.loop !485

.lr.ph200.us.i.us724.split.us.us.us.i:            ; preds = %.lr.ph200.us.i.us724.us.us.i
  br i1 %.fr.us.us.i, label %.lr.ph200.us.i.us724.split.us.split.us.us.us.i, label %.lr.ph200.us.i.us724.split.us.split.us789.us.i

.lr.ph200.us.i.us724.split.us.split.us789.us.i:   ; preds = %.lr.ph200.us.i.us724.split.us.us.us.i, %bb.dn
  %indvars.iv252.i.us.us.us781.us.i = phi i64 [ %indvars.iv.next253.i.us.us.us785.us.i, %bb.dn ], [ %i.qw, %.lr.ph200.us.i.us724.split.us.us.us.i ] ; 3 uses
  %.2164198.us211.i.us.us.us782.us.i = phi i32 [ %i.bvu, %bb.dn ], [ %.1163206.us.i.us726.us.us.i, %.lr.ph200.us.i.us724.split.us.us.us.i ]
  %.2167197.us212.i.us.us.us783.us.i = phi i32 [ %i.bvs, %bb.dn ], [ %.1166205.us.i.us727.us.us.i, %.lr.ph200.us.i.us724.split.us.us.us.i ]
  %i.buv = trunc nuw nsw i64 %indvars.iv252.i.us.us.us781.us.i to i32
  %i.buw = add i32 %.neg.i.us.us.us.i, %i.buv     ; 2 uses
  %i.bux = add nsw i32 %i.buw, %i.aij             ; 2 uses
  %i.buy = sext i32 %i.bux to i64                 ; 2 uses
  %i.buz = getelementptr inbounds i8, ptr %i.kw, i64 %i.buy
  %i.bva = load i8, ptr %i.buz, align 1, !tbaa !84
  %i.bvb = zext i8 %i.bva to i32                  ; 2 uses
  %.not177.us216.i.us.us.us.us.i = icmp slt i32 %i.buw, %i.kt
  br i1 %.not177.us216.i.us.us.us.us.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph200.us.i.us724.split.us.split.us789.us.i
  %i.bvc = sub nsw i32 %i.bux, %i.kt
  %i.bvd = sext i32 %i.bvc to i64
  %i.bve = getelementptr inbounds i8, ptr %i.kw, i64 %i.bvd
  %i.bvf = load i8, ptr %i.bve, align 1, !tbaa !84
  %i.bvg = zext i8 %i.bvf to i32
  %i.bvh = add nuw nsw i32 %i.bvg, %i.bvb
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.lr.ph200.us.i.us724.split.us.split.us789.us.i
  %.3.us218.i.us.us.us.us.i = phi i32 [ %i.bvh, %bb.dm ], [ %i.bvb, %.lr.ph200.us.i.us724.split.us.split.us789.us.i ] ; 3 uses
  %i.bvi = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.buy ; 2 uses
  %i.bvj = load i16, ptr %i.bvi, align 2, !tbaa !184
  %i.bvk = sext i16 %i.bvj to i32
  %i.bvl = sub nsw i32 8, %i.bvk                  ; 2 uses
  %i.bvm = trunc i32 %i.bvl to i16
  store i16 %i.bvm, ptr %i.bvi, align 2, !tbaa !184
  %gep314.i.us.us.us784.us.i = getelementptr i8, ptr %invariant.gep313.i.us730.us.us.i, i64 %indvars.iv252.i.us.us.us781.us.i
  %i.bvn = load i8, ptr %gep314.i.us.us.us784.us.i, align 1, !tbaa !84
  %i.bvo = zext i8 %i.bvn to i32
  %i.bvp = ashr i32 %i.bvl, 4
  %i.bvq = sub nsw i32 %i.bvo, %i.bvp
  %i.bvr = mul nsw i32 %i.bvq, %.3.us218.i.us.us.us.us.i
  %i.bvs = add nsw i32 %i.bvr, %.2167197.us212.i.us.us.us783.us.i ; 2 uses
  %i.bvt = mul nuw nsw i32 %.3.us218.i.us.us.us.us.i, %.3.us218.i.us.us.us.us.i
  %i.bvu = add nsw i32 %i.bvt, %.2164198.us211.i.us.us.us782.us.i ; 2 uses
  %indvars.iv.next253.i.us.us.us785.us.i = add nuw nsw i64 %indvars.iv252.i.us.us.us781.us.i, 1 ; 2 uses
  %i.bvv = icmp samesign ult i64 %indvars.iv.next253.i.us.us.us785.us.i, %i.ahx
  br i1 %i.bvv, label %.lr.ph200.us.i.us724.split.us.split.us789.us.i, label %._crit_edge201.split.us219.i.split.us.us.us.i, !llvm.loop !484

.lr.ph200.us.i.us724.split.us.split.us.us.us.i:   ; preds = %.lr.ph200.us.i.us724.split.us.us.us.i
  %invariant.op.us.us.i = add i32 %i.aij, %.neg.i.us.us.us.i ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph200.us.i.us724.split.us.split.us.us.us.i
  %i.bvw = add i32 %i.aig, %i.bli
  %i.bvx = icmp slt i32 %i.bvw, %i.aig
  %i.bvy = or i1 %i.bvx, %i.blj
  br i1 %i.bvy, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep239.a
  %bound1 = icmp ult ptr %scevgep236, %scevgep233
  %found.conflict = and i1 %bound0, %bound1
  %i.bvz = or i1 %found.conflict, %stride.check
  %bound0243 = icmp ult ptr %scevgep236, %scevgep242.a
  %bound1244 = icmp ult ptr %scevgep240, %scevgep239.a
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx = or i1 %i.bvz, %found.conflict245
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bwa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1163206.us.i.us726.us.us.i, i64 0
  %i.bwb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1166205.us.i.us727.us.us.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bwa, %vector.ph ], [ %i.bxg, %vector.body ]
  %vec.phi246 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bxh, %vector.body ]
  %vec.phi247 = phi <4 x i32> [ %i.bwb, %vector.ph ], [ %i.bxc, %vector.body ]
  %vec.phi248 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bxd, %vector.body ]
  %i.bwc = add nuw i64 %index, %i.qw              ; 2 uses
  %i.bwd = trunc nuw nsw i64 %i.bwc to i32
  %i.bwe = add i32 %invariant.op.us.us.i, %i.bwd
  %i.bwf = sext i32 %i.bwe to i64                 ; 2 uses
  %i.bwg = getelementptr inbounds i8, ptr %i.kw, i64 %i.bwf ; 2 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwg, i64 4
  %wide.load = load <4 x i8>, ptr %i.bwg, align 1, !tbaa !84, !alias.scope !518
  %wide.load249 = load <4 x i8>, ptr %i.bwh, align 1, !tbaa !84, !alias.scope !518
  %i.bwi = zext <4 x i8> %wide.load to <4 x i32>  ; 3 uses
  %i.bwj = zext <4 x i8> %wide.load249 to <4 x i32> ; 3 uses
  %i.bwk = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.bwf ; 3 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 8 ; 2 uses
  %wide.load250 = load <4 x i16>, ptr %i.bwk, align 2, !tbaa !184, !alias.scope !521, !noalias !518
  %wide.load251 = load <4 x i16>, ptr %i.bwl, align 2, !tbaa !184, !alias.scope !521, !noalias !518
  %i.bwm = sext <4 x i16> %wide.load250 to <4 x i32>
  %i.bwn = sext <4 x i16> %wide.load251 to <4 x i32>
  %i.bwo = sub nsw <4 x i32> splat (i32 8), %i.bwm ; 2 uses
  %i.bwp = sub nsw <4 x i32> splat (i32 8), %i.bwn ; 2 uses
  %i.bwq = trunc <4 x i32> %i.bwo to <4 x i16>
  %i.bwr = trunc <4 x i32> %i.bwp to <4 x i16>
  store <4 x i16> %i.bwq, ptr %i.bwk, align 2, !tbaa !184, !alias.scope !521, !noalias !518
  store <4 x i16> %i.bwr, ptr %i.bwl, align 2, !tbaa !184, !alias.scope !521, !noalias !518
  %i.bws = getelementptr i8, ptr %invariant.gep313.i.us730.us.us.i, i64 %i.bwc ; 2 uses
  %i.bwt = getelementptr i8, ptr %i.bws, i64 4
  %wide.load252 = load <4 x i8>, ptr %i.bws, align 1, !tbaa !84, !alias.scope !523, !noalias !521
  %wide.load253 = load <4 x i8>, ptr %i.bwt, align 1, !tbaa !84, !alias.scope !523, !noalias !521
  %i.bwu = zext <4 x i8> %wide.load252 to <4 x i32>
  %i.bwv = zext <4 x i8> %wide.load253 to <4 x i32>
  %i.bww = ashr <4 x i32> %i.bwo, splat (i32 4)
  %i.bwx = ashr <4 x i32> %i.bwp, splat (i32 4)
  %i.bwy = sub nsw <4 x i32> %i.bwu, %i.bww
  %i.bwz = sub nsw <4 x i32> %i.bwv, %i.bwx
  %i.bxa = mul nsw <4 x i32> %i.bwy, %i.bwi
  %i.bxb = mul nsw <4 x i32> %i.bwz, %i.bwj
  %i.bxc = add <4 x i32> %i.bxa, %vec.phi247      ; 2 uses
  %i.bxd = add <4 x i32> %i.bxb, %vec.phi248      ; 2 uses
  %i.bxe = mul nuw nsw <4 x i32> %i.bwi, %i.bwi
  %i.bxf = mul nuw nsw <4 x i32> %i.bwj, %i.bwj
  %i.bxg = add <4 x i32> %i.bxe, %vec.phi         ; 2 uses
  %i.bxh = add <4 x i32> %i.bxf, %vec.phi246      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bxi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bxi, label %middle.block, label %vector.body, !llvm.loop !525

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bxh, %i.bxg
  %i.bxj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx254 = add <4 x i32> %i.bxd, %i.bxc
  %i.bxk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx254) ; 2 uses
  br i1 %cmp.n, label %._crit_edge201.split.us219.i.split.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph200.us.i.us724.split.us.split.us.us.us.i, %middle.block
  %indvars.iv252.i.us.us.us.us790.us.i.ph = phi i64 [ %i.qw, %vector.memcheck ], [ %i.qw, %vector.scevcheck ], [ %i.qw, %.lr.ph200.us.i.us724.split.us.split.us.us.us.i ], [ %i.blk, %middle.block ]
  %.2164198.us211.i.us.us.us.us791.us.i.ph = phi i32 [ %.1163206.us.i.us726.us.us.i, %vector.memcheck ], [ %.1163206.us.i.us726.us.us.i, %vector.scevcheck ], [ %.1163206.us.i.us726.us.us.i, %.lr.ph200.us.i.us724.split.us.split.us.us.us.i ], [ %i.bxj, %middle.block ]
  %.2167197.us212.i.us.us.us.us792.us.i.ph = phi i32 [ %.1166205.us.i.us727.us.us.i, %vector.memcheck ], [ %.1166205.us.i.us727.us.us.i, %vector.scevcheck ], [ %.1166205.us.i.us727.us.us.i, %.lr.ph200.us.i.us724.split.us.split.us.us.us.i ], [ %i.bxk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv252.i.us.us.us.us790.us.i = phi i64 [ %indvars.iv.next253.i.us.us.us.us794.us.i, %scalar.ph ], [ %indvars.iv252.i.us.us.us.us790.us.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.2164198.us211.i.us.us.us.us791.us.i = phi i32 [ %i.byc, %scalar.ph ], [ %.2164198.us211.i.us.us.us.us791.us.i.ph, %scalar.ph.preheader ]
  %.2167197.us212.i.us.us.us.us792.us.i = phi i32 [ %i.bya, %scalar.ph ], [ %.2167197.us212.i.us.us.us.us792.us.i.ph, %scalar.ph.preheader ]
  %i.bxl = trunc nuw nsw i64 %indvars.iv252.i.us.us.us.us790.us.i to i32
  %.reass.us.us.i = add i32 %invariant.op.us.us.i, %i.bxl
  %i.bxm = sext i32 %.reass.us.us.i to i64        ; 2 uses
  %i.bxn = getelementptr inbounds i8, ptr %i.kw, i64 %i.bxm
  %i.bxo = load i8, ptr %i.bxn, align 1, !tbaa !84
  %i.bxp = zext i8 %i.bxo to i32                  ; 3 uses
  %i.bxq = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.bxm ; 2 uses
  %i.bxr = load i16, ptr %i.bxq, align 2, !tbaa !184
  %i.bxs = sext i16 %i.bxr to i32
  %i.bxt = sub nsw i32 8, %i.bxs                  ; 2 uses
  %i.bxu = trunc i32 %i.bxt to i16
  store i16 %i.bxu, ptr %i.bxq, align 2, !tbaa !184
  %gep314.i.us.us.us.us793.us.i = getelementptr i8, ptr %invariant.gep313.i.us730.us.us.i, i64 %indvars.iv252.i.us.us.us.us790.us.i
  %i.bxv = load i8, ptr %gep314.i.us.us.us.us793.us.i, align 1, !tbaa !84
  %i.bxw = zext i8 %i.bxv to i32
  %i.bxx = ashr i32 %i.bxt, 4
  %i.bxy = sub nsw i32 %i.bxw, %i.bxx
  %i.bxz = mul nsw i32 %i.bxy, %i.bxp
  %i.bya = add nsw i32 %i.bxz, %.2167197.us212.i.us.us.us.us792.us.i ; 2 uses
  %i.byb = mul nuw nsw i32 %i.bxp, %i.bxp
  %i.byc = add nsw i32 %i.byb, %.2164198.us211.i.us.us.us.us791.us.i ; 2 uses
  %indvars.iv.next253.i.us.us.us.us794.us.i = add nuw nsw i64 %indvars.iv252.i.us.us.us.us790.us.i, 1 ; 2 uses
  %i.byd = icmp samesign ult i64 %indvars.iv.next253.i.us.us.us.us794.us.i, %i.ahx
  br i1 %i.byd, label %scalar.ph, label %._crit_edge201.split.us219.i.split.us.us.us.i, !llvm.loop !526

.split798.us.i:                                   ; preds = %._crit_edge722.split.us.us.us.i
  %i.bye = load i32, ptr %i.p, align 8, !tbaa !80
  %i.byf = icmp eq i32 %i.bye, 1
  br i1 %i.byf, label %.preheader617.i, label %iterative_me.exit

.split798.us.thread1055.i:                        ; preds = %.split.us.i
  %i.byg = load ptr, ptr %i.ai, align 8, !tbaa !108
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.byg, i32 noundef 48, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 0) #12
  %i.byh = load i32, ptr %i.p, align 8, !tbaa !80
  %i.byi = icmp eq i32 %i.byh, 1
  br i1 %i.byi, label %._crit_edge807.i, label %iterative_me.exit

.split798.us.thread.i:                            ; preds = %._crit_edge651.i
  %i.byj = load ptr, ptr %i.ai, align 8, !tbaa !108
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.byj, i32 noundef 48, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 0) #12
  %i.byk = load i32, ptr %i.p, align 8, !tbaa !80
end_hunk_5
begin_hunk_6_@encode_blocks:bb.a
  store i32 %i.cdr, ptr %i.am, align 16, !tbaa !446
  %i.cds = trunc nuw nsw i64 %indvars.iv934.i to i32 ; 5 uses
  %i.cdt = tail call fastcc i32 @get_4block_rd(ptr noundef nonnull %0, i32 noundef %i.cds, i32 noundef %i.byw) ; 4 uses
  %i.cdu = load i16, ptr %i.byz, align 2, !tbaa !221
  %i.cdv = sext i16 %i.cdu to i32
  %i.cdw = load i16, ptr %i.bza, align 2, !tbaa !221
  %i.cdx = sext i16 %i.cdw to i32
  %i.cdy = load i16, ptr %i.bzb, align 2, !tbaa !221
  %i.cdz = sext i16 %i.cdy to i32
  %i.cea = load i16, ptr %i.bzc, align 2, !tbaa !221
  %i.ceb = sext i16 %i.cea to i32
  %i.cec = add nsw i32 %i.cdv, 2
  %i.ced = add nsw i32 %i.cec, %i.cdx
  %i.cee = add nsw i32 %i.ced, %i.cdz
  %i.cef = add nsw i32 %i.cee, %i.ceb             ; 2 uses
  %i.ceg = ashr i32 %i.cef, 2                     ; 2 uses
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.byz, i64 2
  %i.cei = load i16, ptr %i.ceh, align 2, !tbaa !222
  %i.cej = sext i16 %i.cei to i32
  %i.cek = getelementptr inbounds nuw i8, ptr %i.byz, i64 12
  %i.cel = load i16, ptr %i.cek, align 2, !tbaa !222
  %i.cem = sext i16 %i.cel to i32
  %i.cen = getelementptr inbounds nuw i8, ptr %i.bzb, i64 2
  %i.ceo = load i16, ptr %i.cen, align 2, !tbaa !222
  %i.cep = sext i16 %i.ceo to i32
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.bzb, i64 12
  %i.cer = load i16, ptr %i.ceq, align 2, !tbaa !222
  %i.ces = sext i16 %i.cer to i32
  %i.cet = add nsw i32 %i.cej, 2
  %i.ceu = add nsw i32 %i.cet, %i.cem
  %i.cev = add nsw i32 %i.ceu, %i.cep
  %i.cew = add nsw i32 %i.cev, %i.ces
  %i.cex = ashr i32 %i.cew, 2                     ; 3 uses
  %i.cey = load i32, ptr %i.e, align 16, !tbaa !117
  %i.cez = load i32, ptr %i.p, align 8, !tbaa !80
  %i.cfa = shl i32 %i.cey, %i.cez                 ; 2 uses
  %i.cfb = load ptr, ptr %i.ak, align 8, !tbaa !217
  %i.cfc = mul nsw i32 %i.cfa, %i.byw
  %i.cfd = add nsw i32 %i.cfc, %i.cds
  %i.cfe = sext i32 %i.cfd to i64
  %i.cff = getelementptr inbounds [10 x i8], ptr %i.cfb, i64 %i.cfe ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, ptr noundef nonnull align 2 dereferenceable(10) %i.cff, i64 10, i1 false), !tbaa.struct !461
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cff, i64 10 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.byp, ptr noundef nonnull align 2 dereferenceable(10) %i.cfg, i64 10, i1 false), !tbaa.struct !461
  %i.cfh = sext i32 %i.cfa to i64
  %i.cfi = getelementptr inbounds [10 x i8], ptr %i.cff, i64 %i.cfh ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.byq, ptr noundef nonnull align 2 dereferenceable(10) %i.cfi, i64 10, i1 false), !tbaa.struct !461
  %i.cfj = getelementptr i8, ptr %i.cfi, i64 10   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.byr, ptr noundef nonnull align 2 dereferenceable(10) %i.cfj, i64 10, i1 false), !tbaa.struct !461
  %i.cfk = mul nsw i32 %i.cex, 31
  %i.cfl = add nsw i32 %i.cfk, %i.ceg
  %i.cfm = and i32 %i.cfl, 1023
  %i.cfn = load i32, ptr %i.am, align 16, !tbaa !446
  %i.cfo = ashr i32 %i.cef, 12
  %i.cfp = shl nsw i32 %i.cex, 6
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cff, i64 4 ; 2 uses
  %i.cfr = load i8, ptr %i.cfq, align 2, !tbaa !223
  %i.cfs = zext i8 %i.cfr to i32
  %i.cft = shl nuw nsw i32 %i.cfs, 12
  %i.cfu = add nsw i32 %i.cfp, %i.cfo
  %i.cfv = add i32 %i.cfu, %i.cfn
  %i.cfw = add i32 %i.cfv, %i.cft                 ; 2 uses
  %i.cfx = zext nneg i32 %i.cfm to i64
  %i.cfy = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cfx ; 2 uses
  %i.cfz = load i32, ptr %i.cfy, align 4, !tbaa !93
  %i.cga = icmp eq i32 %i.cfz, %i.cfw
  br i1 %i.cga, label %check_4block_inter.exit561.us.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i32 %i.cfw, ptr %i.cfy, align 4, !tbaa !93
  %i.cgb = trunc nsw i32 %i.ceg to i16
  store i16 %i.cgb, ptr %i.cff, align 2, !tbaa !221
  %i.cgc = trunc nsw i32 %i.cex to i16
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cff, i64 2
  store i16 %i.cgc, ptr %i.cgd, align 2, !tbaa !222
  store i8 0, ptr %i.cfq, align 2, !tbaa !223
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cff, i64 8 ; 2 uses
  %i.cgf = load i8, ptr %i.cge, align 2, !tbaa !219
  %i.cgg = and i8 %i.cgf, -2
  store i8 %i.cgg, ptr %i.cge, align 2, !tbaa !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.cfj, ptr noundef nonnull align 2 dereferenceable(10) %i.cff, i64 10, i1 false), !tbaa.struct !461
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.cfi, ptr noundef nonnull align 2 dereferenceable(10) %i.cff, i64 10, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.cfg, ptr noundef nonnull align 2 dereferenceable(10) %i.cfi, i64 10, i1 false), !tbaa.struct !461
  %i.cgh = tail call fastcc i32 @get_4block_rd(ptr noundef nonnull %0, i32 noundef %i.cds, i32 noundef %i.byw) ; 2 uses
  %i.cgi = icmp slt i32 %i.cgh, %i.cdt
  br i1 %i.cgi, label %check_4block_inter.exit561.us.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.cff, ptr noundef nonnull align 16 dereferenceable(10) %3, i64 10, i1 false), !tbaa.struct !461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.cfg, ptr noundef nonnull align 2 dereferenceable(10) %i.byp, i64 10, i1 false), !tbaa.struct !461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.cfi, ptr noundef nonnull align 4 dereferenceable(10) %i.byq, i64 10, i1 false), !tbaa.struct !461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.cfj, ptr noundef nonnull align 2 dereferenceable(10) %i.byr, i64 10, i1 false), !tbaa.struct !461
  br label %check_4block_inter.exit561.us.i

check_4block_inter.exit561.us.i:                  ; preds = %bb.dv, %bb.du, %bb.dt
  %.3589.us.i = phi i32 [ %i.cdt, %bb.dt ], [ %i.cdt, %bb.dv ], [ %i.cgh, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.ea, %check_4block_inter.exit561.us.i
  %indvars.iv930.i = phi i64 [ %indvars.iv.next931.i, %bb.ea ], [ 0, %check_4block_inter.exit561.us.i ] ; 2 uses
  %.0587799.us.i = phi i32 [ %.1588.us.i, %bb.ea ], [ %.3589.us.i, %check_4block_inter.exit561.us.i ] ; 4 uses
  %i.cgj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv930.i
  %i.cgk = load ptr, ptr %i.cgj, align 8, !tbaa !527 ; 4 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cgk, i64 8
  %i.cgm = load i8, ptr %i.cgl, align 2, !tbaa !219
  %i.cgn = and i8 %i.cgm, 1
  %.not482.us.i = icmp eq i8 %i.cgn, 0
  br i1 %.not482.us.i, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.cgo = load i16, ptr %i.cgk, align 2, !tbaa !221 ; 2 uses
  %i.cgp = sext i16 %i.cgo to i32                 ; 2 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgk, i64 2
  %i.cgr = load i16, ptr %i.cgq, align 2, !tbaa !222 ; 2 uses
  %i.cgs = sext i16 %i.cgr to i32                 ; 2 uses
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgk, i64 4
  %i.cgu = load i8, ptr %i.cgt, align 2, !tbaa !223
  %i.cgv = load i32, ptr %i.e, align 16, !tbaa !117
  %i.cgw = load i32, ptr %i.p, align 8, !tbaa !80
  %i.cgx = shl i32 %i.cgv, %i.cgw                 ; 2 uses
  %i.cgy = load ptr, ptr %i.ak, align 8, !tbaa !217
  %i.cgz = mul nsw i32 %i.cgx, %i.byw
  %i.cha = add nsw i32 %i.cgz, %i.cds
  %i.chb = sext i32 %i.cha to i64
  %i.chc = getelementptr inbounds [10 x i8], ptr %i.cgy, i64 %i.chb ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %4, ptr noundef nonnull align 2 dereferenceable(10) %i.chc, i64 10, i1 false), !tbaa.struct !461
  %i.chd = getelementptr inbounds nuw i8, ptr %i.chc, i64 10 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bys, ptr noundef nonnull align 2 dereferenceable(10) %i.chd, i64 10, i1 false), !tbaa.struct !461
  %i.che = sext i32 %i.cgx to i64
  %i.chf = getelementptr inbounds [10 x i8], ptr %i.chc, i64 %i.che ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.byt, ptr noundef nonnull align 2 dereferenceable(10) %i.chf, i64 10, i1 false), !tbaa.struct !461
  %i.chg = getelementptr i8, ptr %i.chf, i64 10   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.byu, ptr noundef nonnull align 2 dereferenceable(10) %i.chg, i64 10, i1 false), !tbaa.struct !461
  %i.chh = mul nsw i32 %i.cgs, 31
  %i.chi = add nsw i32 %i.chh, %i.cgp
  %i.chj = and i32 %i.chi, 1023
  %i.chk = load i32, ptr %i.am, align 16, !tbaa !446
  %i.chl = ashr i32 %i.cgp, 10
  %i.chm = shl nsw i32 %i.cgs, 6
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chc, i64 4 ; 2 uses
  %i.cho = load i8, ptr %i.chn, align 2, !tbaa !223
  %i.chp = zext i8 %i.cho to i32
  %i.chq = shl nuw nsw i32 %i.chp, 12
  %i.chr = add nsw i32 %i.chm, %i.chl
  %i.chs = add i32 %i.chr, %i.chk
  %i.cht = add i32 %i.chs, %i.chq                 ; 2 uses
  %i.chu = zext nneg i32 %i.chj to i64
  %i.chv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.chu ; 2 uses
  %i.chw = load i32, ptr %i.chv, align 4, !tbaa !93
  %i.chx = icmp eq i32 %i.chw, %i.cht
  br i1 %i.chx, label %check_4block_inter.exit.us.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 %i.cht, ptr %i.chv, align 4, !tbaa !93
  store i16 %i.cgo, ptr %i.chc, align 2, !tbaa !221
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chc, i64 2
  store i16 %i.cgr, ptr %i.chy, align 2, !tbaa !222
  store i8 %i.cgu, ptr %i.chn, align 2, !tbaa !223
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chc, i64 8 ; 2 uses
  %i.cia = load i8, ptr %i.chz, align 2, !tbaa !219
  %i.cib = and i8 %i.cia, -2
  store i8 %i.cib, ptr %i.chz, align 2, !tbaa !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.chg, ptr noundef nonnull align 2 dereferenceable(10) %i.chc, i64 10, i1 false), !tbaa.struct !461
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.chf, ptr noundef nonnull align 2 dereferenceable(10) %i.chc, i64 10, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.chd, ptr noundef nonnull align 2 dereferenceable(10) %i.chf, i64 10, i1 false), !tbaa.struct !461
  %i.cic = tail call fastcc i32 @get_4block_rd(ptr noundef nonnull %0, i32 noundef %i.cds, i32 noundef %i.byw) ; 2 uses
  %i.cid = icmp slt i32 %i.cic, %.0587799.us.i
  br i1 %i.cid, label %check_4block_inter.exit.us.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.chc, ptr noundef nonnull align 16 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.chd, ptr noundef nonnull align 2 dereferenceable(10) %i.bys, i64 10, i1 false), !tbaa.struct !461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.chf, ptr noundef nonnull align 4 dereferenceable(10) %i.byt, i64 10, i1 false), !tbaa.struct !461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.chg, ptr noundef nonnull align 2 dereferenceable(10) %i.byu, i64 10, i1 false), !tbaa.struct !461
  br label %check_4block_inter.exit.us.i

check_4block_inter.exit.us.i:                     ; preds = %bb.dz, %bb.dy, %bb.dx
  %.2.us.i = phi i32 [ %.0587799.us.i, %bb.dx ], [ %.0587799.us.i, %bb.dz ], [ %i.cic, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ea

bb.ea:                                            ; preds = %check_4block_inter.exit.us.i, %bb.dw
  %.1588.us.i = phi i32 [ %.2.us.i, %check_4block_inter.exit.us.i ], [ %.0587799.us.i, %bb.dw ] ; 2 uses
  %indvars.iv.next931.i = add nuw nsw i64 %indvars.iv930.i, 1 ; 2 uses
  %exitcond933.not.i = icmp eq i64 %indvars.iv.next931.i, 4
  br i1 %exitcond933.not.i, label %bb.eb, label %bb.dw, !llvm.loop !528

bb.eb:                                            ; preds = %bb.ea
  %.not481.us.i = icmp ne i32 %i.cdt, %.1588.us.i
  %i.cie = zext i1 %.not481.us.i to i32
  %spec.select511.us.i = add nsw i32 %.1802.us.i, %i.cie
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %same_block.exit.us.i, %.split1057.i
  %.3.us.i = phi i32 [ %spec.select511.us.i, %bb.eb ], [ %.1802.us.i, %same_block.exit.us.i ], [ %.1802.us.i, %.split1057.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %indvars.iv.next935.i = add nuw nsw i64 %indvars.iv934.i, 2 ; 2 uses
  %20 = icmp slt i64 %indvars.iv.next935.i, %i.bf
  br i1 %20, label %bb.do, label %._crit_edge804.us.i, !llvm.loop !529

._crit_edge804.us.i:                              ; preds = %bb.ec
  %indvars.iv.next938.i = add nuw nsw i64 %indvars.iv937.i, 2 ; 2 uses
  %21 = icmp samesign ult i64 %indvars.iv.next938.i, %i.bm
  br i1 %21, label %.preheader.us.i, label %._crit_edge807.loopexit.i, !llvm.loop !530

._crit_edge807.loopexit.i:                        ; preds = %._crit_edge804.us.i
  %i.cif = shl nsw i32 %.3.us.i, 2
  br label %._crit_edge807.i

._crit_edge807.i:                                 ; preds = %._crit_edge807.loopexit.i, %.split798.us.thread.i, %.split798.us.thread1055.i
  %.0422.lcssa.i = phi i32 [ 0, %.split798.us.thread.i ], [ %i.cif, %._crit_edge807.loopexit.i ], [ 0, %.split798.us.thread1055.i ]
  %i.cig = load ptr, ptr %i.ai, align 8, !tbaa !108
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cig, i32 noundef 16, ptr noundef nonnull @.str.36, i32 noundef %.0422.lcssa.i) #12
  br label %iterative_me.exit

iterative_me.exit:                                ; preds = %.split798.us.i, %.split798.us.thread1055.i, %.split798.us.thread.i, %._crit_edge807.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ed

bb.ed:                                            ; preds = %iterative_me.exit, %bb.b, %bb.a
  %i.cih = icmp sgt i32 %i.h, 0
  br i1 %i.cih, label %.lr.ph60, label %.loopexit

.lr.ph60:                                         ; preds = %bb.ed
  %i.cii = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.cij = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.cik = mul nsw i32 %.fr64, 768
  %i.cil = sext i32 %i.cik to i64                 ; 3 uses
  %i.cim = icmp sgt i32 %.fr64, 0
  br i1 %i.cim, label %.lr.ph60.split.us, label %.lr.ph60.split

.lr.ph60.split.us:                                ; preds = %.lr.ph60
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.lr.ph60.split.us.split, label %.lr.ph60.split.us.split.us

.lr.ph60.split.us.split.us:                       ; preds = %.lr.ph60.split.us, %._crit_edge.split.us62.us
  %.057.us.us = phi i32 [ %i.ciw, %._crit_edge.split.us62.us ], [ 0, %.lr.ph60.split.us ] ; 3 uses
  %i.cin = load ptr, ptr %i.cii, align 8, !tbaa !317
  %i.cio = load ptr, ptr %i.cij, align 8, !tbaa !194
  %i.cip = ptrtoint ptr %i.cin to i64
  %i.ciq = ptrtoint ptr %i.cio to i64
  %i.cir = sub i64 %i.cip, %i.ciq
  %i.cis = icmp slt i64 %i.cir, %i.cil
  br i1 %i.cis, label %.split.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph60.split.us.split.us, %bb.eg
  %.02756.us61.us = phi i32 [ %i.civ, %bb.eg ], [ 0, %.lr.ph60.split.us.split.us ] ; 3 uses
  %i.cit = load i32, ptr %i.i, align 4, !tbaa !115
  %.not65 = icmp eq i32 %i.cit, 3
  br i1 %.not65, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.preheader.us.us
  tail call fastcc void @encode_q_branch2(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.02756.us61.us, i32 noundef %.057.us.us)
  br label %bb.eg

bb.ef:                                            ; preds = %.preheader.us.us
  %i.ciu = tail call fastcc i32 @encode_q_branch(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.02756.us61.us, i32 noundef %.057.us.us) ; 0 uses
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.civ = add nuw nsw i32 %.02756.us61.us, 1     ; 2 uses
  %exitcond97.not = icmp eq i32 %i.civ, %.fr64
  br i1 %exitcond97.not, label %._crit_edge.split.us62.us, label %.preheader.us.us, !llvm.loop !531

._crit_edge.split.us62.us:                        ; preds = %bb.eg
  %i.ciw = add nuw nsw i32 %.057.us.us, 1         ; 2 uses
  %exitcond98.not = icmp eq i32 %i.ciw, %i.h
  br i1 %exitcond98.not, label %.loopexit, label %.lr.ph60.split.us.split.us, !llvm.loop !532

.lr.ph60.split.us.split:                          ; preds = %.lr.ph60.split.us, %._crit_edge.split.us.us
  %.057.us = phi i32 [ %i.cje, %._crit_edge.split.us.us ], [ 0, %.lr.ph60.split.us ] ; 2 uses
  %i.cix = load ptr, ptr %i.cii, align 8, !tbaa !317
  %i.ciy = load ptr, ptr %i.cij, align 8, !tbaa !194
  %i.ciz = ptrtoint ptr %i.cix to i64
  %i.cja = ptrtoint ptr %i.ciy to i64
  %i.cjb = sub i64 %i.ciz, %i.cja
  %i.cjc = icmp slt i64 %i.cjb, %i.cil
  br i1 %i.cjc, label %.split.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph60.split.us.split, %.preheader.us
  %.02756.us.us = phi i32 [ %i.cjd, %.preheader.us ], [ 0, %.lr.ph60.split.us.split ] ; 2 uses
  tail call fastcc void @encode_q_branch2(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.02756.us.us, i32 noundef %.057.us)
  %i.cjd = add nuw nsw i32 %.02756.us.us, 1       ; 2 uses
  %exitcond99.not = icmp eq i32 %i.cjd, %.fr64
  br i1 %exitcond99.not, label %._crit_edge.split.us.us, label %.preheader.us, !llvm.loop !531

._crit_edge.split.us.us:                          ; preds = %.preheader.us
  %i.cje = add nuw nsw i32 %.057.us, 1            ; 2 uses
  %exitcond100.not = icmp eq i32 %i.cje, %i.h
  br i1 %exitcond100.not, label %.loopexit, label %.lr.ph60.split.us.split, !llvm.loop !532

.lr.ph60.split:                                   ; preds = %.lr.ph60
  %i.cjf = load ptr, ptr %i.cii, align 8, !tbaa !317
  %i.cjg = load ptr, ptr %i.cij, align 8, !tbaa !194
  %i.cjh = ptrtoint ptr %i.cjf to i64
  %i.cji = ptrtoint ptr %i.cjg to i64
  %i.cjj = sub i64 %i.cjh, %i.cji
  %i.cjk = icmp slt i64 %i.cjj, %i.cil
  br i1 %i.cjk, label %.split.us, label %.loopexit

.split.us:                                        ; preds = %.lr.ph60.split.us.split.us, %.lr.ph60.split.us.split, %.lr.ph60.split
  %i.cjl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cjm = load ptr, ptr %i.cjl, align 8, !tbaa !108
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cjm, i32 noundef 16, ptr noundef nonnull @.str.34) #12
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.split.us62.us, %._crit_edge.split.us.us, %.lr.ph60.split, %bb.ed, %.split.us
  ret void
}

declare void @ff_spatial_dwt(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_spatial_idwt(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #2

declare void @ff_write_pass1_stats(ptr noundef) local_unnamed_addr #2

declare i32 @ff_encode_add_stats_side_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_rac_terminate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @ff_snow_reset_contexts(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @put_symbol(ptr nofree noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.abs.i32(i32 %2, i1 true) ; 5 uses
  %.not.i = icmp samesign ult i32 %i.a, 65536     ; 2 uses
  %i.b = lshr i32 %i.a, 16
  %spec.select.i = select i1 %.not.i, i32 %i.a, i32 %i.b ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.c = lshr i32 %spec.select.i, 8
  %i.d = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.c
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.d
  %i.e = zext nneg i32 %.110.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !84
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %.1.i, %i.h              ; 7 uses
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.i, i32 10) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 29 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !318  ; 2 uses
  %i.m = load i8, ptr %1, align 1, !tbaa !84
  %i.n = zext i8 %i.m to i32
  %i.o = mul nsw i32 %i.l, %i.n
  %i.p = ashr i32 %i.o, 8
  %i.q = sub i32 %i.l, %i.p
  store i32 %i.q, ptr %i.k, align 4, !tbaa !318
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i8, ptr %1, align 1, !tbaa !84
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %storemerge.i = load i8, ptr %i.u, align 1, !tbaa !84
  store i8 %storemerge.i, ptr %1, align 1, !tbaa !84
  %i.v = load i32, ptr %i.k, align 4, !tbaa !318  ; 3 uses
  %i.w = icmp slt i32 %i.v, 256
  br i1 %i.w, label %bb.c, label %put_rac.exit

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %0, align 8, !tbaa !319    ; 2 uses
  %i.y = add nsw i32 %i.x, -65281                 ; 2 uses
  %i.z = icmp ugt i32 %i.y, 254
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = ashr i32 %i.y, 31                       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !321
  %i.ad = add nsw i32 %i.aa, 1
  %i.ae = add i32 %i.ad, %i.ac
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !322
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !84
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !321
  %i.aj = icmp sgt i32 %i.ai, -1
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !322
  %i.al = zext i1 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !322
end_hunk_6

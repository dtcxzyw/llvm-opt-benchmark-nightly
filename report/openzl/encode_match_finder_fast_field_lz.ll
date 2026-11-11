Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_match_finder_fast_field_lz?download=true
inline.NumInlined: 584
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ZS_tokenLzMatchFinder_parse:bb.a
  br i1 %i.dyy, label %.lr.ph194.i582, label %ZS_HashCache_skip.exit.i541

.lr.ph191.i577.preheader:                         ; preds = %bb.gc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 136, i1 false)
  %i.dyz = lshr i64 %i.dyg, 3                     ; 9 uses
  br label %.lr.ph191.i577

.preheader135.i576.loopexit:                      ; preds = %.lr.ph191.i577
  %i.dza = and i64 %i.dyz, 15
  %i.dzb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dza
  %i.dzc = load i32, ptr %i.dzb, align 4, !tbaa !22
  %i.dzd = zext i32 %i.dzc to i64
  %i.dze = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.dzd
  %i.dzf = load i32, ptr %i.dze, align 4, !tbaa !22
  %i.dzg = zext i32 %i.dzf to i64
  %i.dzh = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.dzg
  tail call void @llvm.prefetch.p0(ptr %i.dzh, i32 0, i32 3, i32 1)
  %i.dzi = add nuw nsw i64 %i.dyz, 1
  %i.dzj = and i64 %i.dzi, 15
  %i.dzk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dzj
  %i.dzl = load i32, ptr %i.dzk, align 4, !tbaa !22
  %i.dzm = zext i32 %i.dzl to i64
  %i.dzn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.dzm
  %i.dzo = load i32, ptr %i.dzn, align 4, !tbaa !22
  %i.dzp = zext i32 %i.dzo to i64
  %i.dzq = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.dzp
  tail call void @llvm.prefetch.p0(ptr %i.dzq, i32 0, i32 3, i32 1)
  %i.dzr = add nuw nsw i64 %i.dyz, 2
  %i.dzs = and i64 %i.dzr, 15
  %i.dzt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dzs
  %i.dzu = load i32, ptr %i.dzt, align 4, !tbaa !22
  %i.dzv = zext i32 %i.dzu to i64
  %i.dzw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.dzv
  %i.dzx = load i32, ptr %i.dzw, align 4, !tbaa !22
  %i.dzy = zext i32 %i.dzx to i64
  %i.dzz = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.dzy
  tail call void @llvm.prefetch.p0(ptr %i.dzz, i32 0, i32 3, i32 1)
  %i.eaa = add nuw nsw i64 %i.dyz, 3
  %i.eab = and i64 %i.eaa, 15
  %i.eac = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.eab
  %i.ead = load i32, ptr %i.eac, align 4, !tbaa !22
  %i.eae = zext i32 %i.ead to i64
  %i.eaf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.eae
  %i.eag = load i32, ptr %i.eaf, align 4, !tbaa !22
  %i.eah = zext i32 %i.eag to i64
  %i.eai = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.eah
  tail call void @llvm.prefetch.p0(ptr %i.eai, i32 0, i32 3, i32 1)
  %i.eaj = add nuw nsw i64 %i.dyz, 4
  %i.eak = and i64 %i.eaj, 15
  %i.eal = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.eak
  %i.eam = load i32, ptr %i.eal, align 4, !tbaa !22
  %i.ean = zext i32 %i.eam to i64
  %i.eao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.ean
  %i.eap = load i32, ptr %i.eao, align 4, !tbaa !22
  %i.eaq = zext i32 %i.eap to i64
  %i.ear = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.eaq
  tail call void @llvm.prefetch.p0(ptr %i.ear, i32 0, i32 3, i32 1)
  %i.eas = add nuw nsw i64 %i.dyz, 5
  %i.eat = and i64 %i.eas, 15
  %i.eau = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.eat
  %i.eav = load i32, ptr %i.eau, align 4, !tbaa !22
  %i.eaw = zext i32 %i.eav to i64
  %i.eax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.eaw
  %i.eay = load i32, ptr %i.eax, align 4, !tbaa !22
  %i.eaz = zext i32 %i.eay to i64
  %i.eba = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.eaz
  tail call void @llvm.prefetch.p0(ptr %i.eba, i32 0, i32 3, i32 1)
  %i.ebb = add nuw nsw i64 %i.dyz, 6
  %i.ebc = and i64 %i.ebb, 15
  %i.ebd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ebc
  %i.ebe = load i32, ptr %i.ebd, align 4, !tbaa !22
  %i.ebf = zext i32 %i.ebe to i64
  %i.ebg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.ebf
  %i.ebh = load i32, ptr %i.ebg, align 4, !tbaa !22
  %i.ebi = zext i32 %i.ebh to i64
  %i.ebj = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.ebi
  tail call void @llvm.prefetch.p0(ptr %i.ebj, i32 0, i32 3, i32 1)
  %i.ebk = add nuw nsw i64 %i.dyz, 7
  %i.ebl = and i64 %i.ebk, 15
  %i.ebm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ebl
  %i.ebn = load i32, ptr %i.ebm, align 4, !tbaa !22
  %i.ebo = zext i32 %i.ebn to i64
  %i.ebp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.ebo
  %i.ebq = load i32, ptr %i.ebp, align 4, !tbaa !22
  %i.ebr = zext i32 %i.ebq to i64
  %i.ebs = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.ebr
  tail call void @llvm.prefetch.p0(ptr %i.ebs, i32 0, i32 3, i32 1)
  br label %ZS_HashCache_skip.exit.i541

.lr.ph191.i577:                                   ; preds = %.lr.ph191.i577.preheader, %.lr.ph191.i577
  %.046.i.i190.i578 = phi ptr [ %i.ecb, %.lr.ph191.i577 ], [ %i.dye, %.lr.ph191.i577.preheader ] ; 2 uses
  %.047.i.i189.i579 = phi i64 [ %i.eca, %.lr.ph191.i577 ], [ 0, %.lr.ph191.i577.preheader ] ; 3 uses
  %.val28.i39.i580 = load i64, ptr %.046.i.i190.i578, align 1
  %i.ebt = mul i64 %.val28.i39.i580, -3523014627327384477
  %i.ebu = lshr i64 %i.ebt, %i.duk                ; 2 uses
  %i.ebv = trunc i64 %i.ebu to i32
  %i.ebw = add nuw nsw i64 %.047.i.i189.i579, %i.dyz
  %i.ebx = and i64 %i.ebw, 15
  %i.eby = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ebx
  store i32 %i.ebv, ptr %i.eby, align 4, !tbaa !22
  %i.ebz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.ebu
  tail call void @llvm.prefetch.p0(ptr %i.ebz, i32 0, i32 3, i32 1)
  %i.eca = add nuw nsw i64 %.047.i.i189.i579, 1
  %i.ecb = getelementptr inbounds nuw i8, ptr %.046.i.i190.i578, i64 8 ; 2 uses
  %i.ecc = icmp samesign ult i64 %.047.i.i189.i579, 15
  %i.ecd = icmp ult ptr %i.ecb, %i.dqu
  %i.ece = select i1 %i.ecc, i1 %i.ecd, i1 false
  br i1 %i.ece, label %.lr.ph191.i577, label %.preheader135.i576.loopexit, !llvm.loop !0

.lr.ph194.i582:                                   ; preds = %.preheader.i581, %bb.ge
  %.0.i11193.i583 = phi ptr [ %i.ecy, %bb.ge ], [ %i.dvq, %.preheader.i581 ] ; 3 uses
  %i.ecf = ptrtoint ptr %.0.i11193.i583 to i64
  %i.ecg = sub i64 %i.ecf, %i.dqw
  %i.ech = lshr i64 %i.ecg, 3
  %i.eci = and i64 %i.ech, 15                     ; 2 uses
  %i.ecj = getelementptr inbounds nuw i8, ptr %.0.i11193.i583, i64 128 ; 2 uses
  %i.eck = icmp ult ptr %i.ecj, %i.dqu
  br i1 %i.eck, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.lr.ph194.i582
  %i.ecl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.eci
  %.val28.i41.i584 = load i64, ptr %i.ecj, align 1
  %i.ecm = mul i64 %.val28.i41.i584, -3523014627327384477
  %i.ecn = lshr i64 %i.ecm, %i.duk                ; 2 uses
  %i.eco = trunc i64 %i.ecn to i32
  store i32 %i.eco, ptr %i.ecl, align 4, !tbaa !22
  %i.ecp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.ecn
  tail call void @llvm.prefetch.p0(ptr %i.ecp, i32 0, i32 3, i32 1)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.lr.ph194.i582
  %i.ecq = xor i64 %i.eci, 8
  %i.ecr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ecq
  %i.ecs = load i32, ptr %i.ecr, align 4, !tbaa !22
  %i.ect = zext i32 %i.ecs to i64
  %i.ecu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.057.0.copyload.i523, i64 %i.ect
  %i.ecv = load i32, ptr %i.ecu, align 4, !tbaa !22
  %i.ecw = zext i32 %i.ecv to i64
  %i.ecx = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.ecw
  tail call void @llvm.prefetch.p0(ptr %i.ecx, i32 0, i32 3, i32 1)
  %i.ecy = getelementptr inbounds nuw i8, ptr %.0.i11193.i583, i64 8 ; 3 uses
  store ptr %i.ecy, ptr %i.dui, align 8, !tbaa !37
  %i.ecz = icmp ult ptr %i.ecy, %i.dye
  br i1 %i.ecz, label %.lr.ph194.i582, label %ZS_HashCache_skip.exit.i541, !llvm.loop !6

ZS_HashCache_skip.exit.i541:                      ; preds = %bb.ge, %.preheader135.i576.loopexit, %.preheader.i581, %bb.gb, %ZS_seqStore_store.exit.i568, %bb.fr
  %i.eda = phi i32 [ %i.duq, %bb.fr ], [ %i.dxm, %ZS_seqStore_store.exit.i568 ], [ %i.dxm, %.preheader.i581 ], [ %i.dxm, %bb.gb ], [ %i.dxm, %.preheader135.i576.loopexit ], [ %i.dxm, %bb.ge ]
  %.5.i.i542 = phi ptr [ %i.dvq, %bb.fr ], [ %i.dye, %ZS_seqStore_store.exit.i568 ], [ %i.dye, %.preheader.i581 ], [ %i.dye, %bb.gb ], [ %i.dye, %.preheader135.i576.loopexit ], [ %i.dye, %bb.ge ] ; 2 uses
  %.1133.i.i543 = phi ptr [ %.0132.i196.i531, %bb.fr ], [ %i.dye, %ZS_seqStore_store.exit.i568 ], [ %i.dye, %.preheader.i581 ], [ %i.dye, %bb.gb ], [ %i.dye, %.preheader135.i576.loopexit ], [ %i.dye, %bb.ge ] ; 2 uses
  %i.edb = icmp ult ptr %.5.i.i542, %i.dqj
  br i1 %i.edb, label %.preheader138.i530, label %ZS_tokenLzMatchFinder_parseT.exit.i527

ZS_tokenLzMatchFinder_parseT.exit.i527:           ; preds = %ZS_HashCache_skip.exit.i541, %.preheader139.i526
  %.0132.i.lcssa.i528 = phi ptr [ %2, %.preheader139.i526 ], [ %.1133.i.i543, %ZS_HashCache_skip.exit.i541 ] ; 2 uses
  %i.edc = ptrtoint ptr %i.dqi to i64
  %i.edd = ptrtoint ptr %.0132.i.lcssa.i528 to i64
  %i.ede = sub i64 %i.edc, %i.edd                 ; 3 uses
  %i.edf = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !22
  %i.edg = icmp sgt i32 %i.edf, 8191
  br i1 %i.edg, label %bb.gf, label %ZS_tokenLzMatchFinder_parse_8_false.exit

bb.gf:                                            ; preds = %ZS_tokenLzMatchFinder_parseT.exit.i527
  %i.edh = trunc i64 %i.ede to i32
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_seqStore_storeLastLiterals, i32 noundef 98, ptr noundef nonnull @.str.3, i32 noundef %i.edh) #7
  br label %ZS_tokenLzMatchFinder_parse_8_false.exit

ZS_tokenLzMatchFinder_parse_8_false.exit:         ; preds = %ZS_tokenLzMatchFinder_parseT.exit.i527, %bb.gf
  %i.edi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.edj = load ptr, ptr %i.edi, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.edj, ptr readonly align 1 %.0132.i.lcssa.i528, i64 %i.ede, i1 false)
  %i.edk = load ptr, ptr %i.edi, align 8, !tbaa !42
  %i.edl = getelementptr inbounds nuw i8, ptr %i.edk, i64 %i.ede
  store ptr %i.edl, ptr %i.edi, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.gg

bb.gg:                                            ; preds = %bb.ct, %ZS_tokenLzMatchFinder_parse_1_false.exit, %ZS_tokenLzMatchFinder_parse_2_false.exit, %ZS_tokenLzMatchFinder_parse_4_false.exit, %ZS_tokenLzMatchFinder_parse_8_false.exit, %bb.c, %ZS_tokenLzMatchFinder_parse_1_true.exit, %ZS_tokenLzMatchFinder_parse_2_true.exit, %ZS_tokenLzMatchFinder_parse_4_true.exit, %ZS_tokenLzMatchFinder_parse_8_true.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @ZS_FastTable_tableSize(i64 noundef) local_unnamed_addr #3

declare void @ZS_FastTable_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ZS_tokenLzMatchFinder_parseAny(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 8 uses
  %6 = alloca %struct.ZS_HashCache, align 8       ; 43 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 5 uses
  %i.c = tail call i32 @llvm.umax.i32(i32 %4, i32 16)
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 53 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33   ; 3 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0280.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !34 ; 46 uses
  %.sroa.14291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.14291.0.copyload = load i32, ptr %.sroa.14291.0..sroa_idx, align 8, !tbaa !22 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0263.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !34 ; 31 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !22 ; 4 uses
  %i.p = icmp eq i32 %4, 4                        ; 2 uses
  %i.q = tail call i32 @llvm.umax.i32(i32 %4, i32 4) ; 2 uses
  %.0.i67 = select i1 %i.p, i32 8, i32 %i.q       ; 8 uses
  %i.r = shl i32 %i.q, 1
  %.0.i68 = select i1 %i.p, i32 12, i32 %i.r      ; 6 uses
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %i.t = xor i32 %i.s, 31                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %4, ptr %i.a, align 4, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.v = shl i32 %4, 1                            ; 3 uses
  store i32 %i.v, ptr %i.u, align 4, !tbaa !22
  %i.w = zext i32 %i.v to i64                     ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, i8 0, i64 136, i1 false)
  %i.y = zext i32 %.0.i68 to i64
  %i.z = sub nsw i64 1, %i.y                      ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 %i.z ; 6 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.i to i64                ; 5 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = zext nneg i32 %i.t to i64               ; 4 uses
  %i.af = lshr i64 %i.ad, %i.ae                   ; 16 uses
  %i.ag = add nsw i64 %3, %i.z
  %i.ah = icmp sgt i64 %i.ag, %i.w
  br i1 %i.ah, label %.lr.ph, label %.preheader448

.lr.ph:                                           ; preds = %bb.a
  %i.ai = sub i32 64, %.sroa.14291.0.copyload
  %i.aj = zext nneg i32 %i.ai to i64              ; 7 uses
  %i.ak = sub i32 32, %.sroa.14291.0.copyload
  %i.al = sub i32 64, %.sroa.14.0.copyload
  %i.am = zext nneg i32 %i.al to i64              ; 5 uses
  %i.an = sub i32 32, %.sroa.14.0.copyload        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ap = zext i32 %4 to i64
  br label %bb.b

.preheader448:                                    ; preds = %bb.s, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 22 uses
  %i.ar = and i64 %i.af, 15                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  br i1 %5, label %.preheader448.split.us.preheader, label %.preheader448.split.preheader

.preheader448.split.preheader:                    ; preds = %.preheader448
  %i.az = add i64 %i.af, 1
  %i.ba = and i64 %i.az, 15
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !22
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bg
  tail call void @llvm.prefetch.p0(ptr %i.bh, i32 0, i32 3, i32 1)
  %i.bi = add i64 %i.af, 2
  %i.bj = and i64 %i.bi, 15
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !22
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bp
  tail call void @llvm.prefetch.p0(ptr %i.bq, i32 0, i32 3, i32 1)
  %i.br = add i64 %i.af, 3
  %i.bs = and i64 %i.br, 15
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !22
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !22
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.by
  tail call void @llvm.prefetch.p0(ptr %i.bz, i32 0, i32 3, i32 1)
  %i.ca = add i64 %i.af, 4
  %i.cb = and i64 %i.ca, 15
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !22
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !22
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ch
  tail call void @llvm.prefetch.p0(ptr %i.ci, i32 0, i32 3, i32 1)
  %i.cj = add i64 %i.af, 5
  %i.ck = and i64 %i.cj, 15
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !22
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !22
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cq
  tail call void @llvm.prefetch.p0(ptr %i.cr, i32 0, i32 3, i32 1)
  %i.cs = add i64 %i.af, 6
  %i.ct = and i64 %i.cs, 15
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !22
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !22
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cz
  tail call void @llvm.prefetch.p0(ptr %i.da, i32 0, i32 3, i32 1)
  %i.db = add i64 %i.af, 7
  %i.dc = and i64 %i.db, 15
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dc
  br label %ZS_HashCache_init.exit.preheader

.preheader448.split.us.preheader:                 ; preds = %.preheader448
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.df = load i32, ptr %i.de, align 4, !tbaa !22
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dj
  tail call void @llvm.prefetch.p0(ptr %i.dk, i32 0, i32 3, i32 1)
  %i.dl = add i64 %i.af, 1
  %i.dm = and i64 %i.dl, 15                       ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !22
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !22
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ds
  tail call void @llvm.prefetch.p0(ptr %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dm
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !22
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !22
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dz
  tail call void @llvm.prefetch.p0(ptr %i.ea, i32 0, i32 3, i32 1)
  %i.eb = add i64 %i.af, 2
  %i.ec = and i64 %i.eb, 15                       ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !22
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !22
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ei
  tail call void @llvm.prefetch.p0(ptr %i.ej, i32 0, i32 3, i32 1)
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ec
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !22
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !22
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ep
  tail call void @llvm.prefetch.p0(ptr %i.eq, i32 0, i32 3, i32 1)
  %i.er = add i64 %i.af, 3
  %i.es = and i64 %i.er, 15                       ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !22
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !22
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ey
  tail call void @llvm.prefetch.p0(ptr %i.ez, i32 0, i32 3, i32 1)
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.es
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !22
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !22
  %i.ff = zext i32 %i.fe to i64
end_hunk_0
begin_hunk_1_@ZS_tokenLzMatchFinder_parseAny:bb.a
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !22
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.hk
  tail call void @llvm.prefetch.p0(ptr %i.hl, i32 0, i32 3, i32 1)
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.he
  br label %ZS_HashCache_init.exit.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %.046.i484 = phi ptr [ %i.x, %.lr.ph ], [ %i.jo, %bb.s ] ; 20 uses
  %.047.i483 = phi i64 [ 0, %.lr.ph ], [ %i.jn, %bb.s ] ; 3 uses
  switch i32 %.0.i67, label %bb.j [
    i32 16, label %bb.i
    i32 12, label %bb.h
    i32 8, label %bb.g
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %.val23.i = load i32, ptr %.046.i484, align 1
  %i.hn = mul i32 %.val23.i, -1640531535
  %i.ho = lshr i32 %i.hn, %i.ak
  %i.hp = zext i32 %i.ho to i64
  br label %ZL_hashPtr.exit

bb.d:                                             ; preds = %bb.b
  %.val24.i = load i64, ptr %.046.i484, align 1
  %i.hq = mul i64 %.val24.i, -3523014627271114752
  %i.hr = lshr i64 %i.hq, %i.aj
  br label %ZL_hashPtr.exit

bb.e:                                             ; preds = %bb.b
  %.val25.i = load i64, ptr %.046.i484, align 1
  %i.hs = mul i64 %.val25.i, -3523014627193847808
  %i.ht = lshr i64 %i.hs, %i.aj
  br label %ZL_hashPtr.exit

bb.f:                                             ; preds = %bb.b
  %.val26.i = load i64, ptr %.046.i484, align 1
  %i.hu = mul i64 %.val26.i, -3523014627193167104
  %i.hv = lshr i64 %i.hu, %i.aj
  br label %ZL_hashPtr.exit

bb.g:                                             ; preds = %bb.b
  %.val28.i = load i64, ptr %.046.i484, align 1
  %i.hw = mul i64 %.val28.i, -3523014627327384477
  %i.hx = lshr i64 %i.hw, %i.aj
  br label %ZL_hashPtr.exit

bb.h:                                             ; preds = %bb.b
  %.val29.i = load i64, ptr %.046.i484, align 1
  %i.hy = getelementptr i8, ptr %.046.i484, i64 8
  %.val30.i = load i32, ptr %i.hy, align 1
  %i.hz = zext i32 %.val30.i to i64
  %i.ia = xor i64 %.val29.i, %i.hz
  %i.ib = mul i64 %i.ia, -3523014627327384477
  %i.ic = lshr i64 %i.ib, %i.aj
  br label %ZL_hashPtr.exit

bb.i:                                             ; preds = %bb.b
  %.val31.i = load i64, ptr %.046.i484, align 1
  %i.id = getelementptr i8, ptr %.046.i484, i64 8
  %.val32.i = load i64, ptr %i.id, align 1
  %i.ie = xor i64 %.val32.i, %.val31.i
  %i.if = mul i64 %i.ie, -3523014627327384477
  %i.ig = lshr i64 %i.if, %i.aj
  br label %ZL_hashPtr.exit

bb.j:                                             ; preds = %bb.b
  %.val27.i = load i64, ptr %.046.i484, align 1
  %i.ih = mul i64 %.val27.i, -3523014627327384477
  %i.ii = lshr i64 %i.ih, %i.aj
  br label %ZL_hashPtr.exit

ZL_hashPtr.exit:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i71 = phi i64 [ %i.ii, %bb.j ], [ %i.ig, %bb.i ], [ %i.hx, %bb.g ], [ %i.ic, %bb.h ], [ %i.hp, %bb.c ], [ %i.hr, %bb.d ], [ %i.ht, %bb.e ], [ %i.hv, %bb.f ] ; 2 uses
  %i.ij = trunc i64 %.0.i71 to i32
  %i.ik = add i64 %.047.i483, %i.af
  %i.il = and i64 %i.ik, 15                       ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.il
  store i32 %i.ij, ptr %i.im, align 4, !tbaa !22
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %.0.i71
  tail call void @llvm.prefetch.p0(ptr %i.in, i32 0, i32 3, i32 1)
  br i1 %5, label %bb.k, label %bb.s

bb.k:                                             ; preds = %ZL_hashPtr.exit
  switch i32 %.0.i68, label %bb.r [
    i32 16, label %bb.q
    i32 2, label %bb.l
    i32 12, label %bb.p
    i32 4, label %bb.m
    i32 8, label %bb.o
    i32 6, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %.val.i83 = load i16, ptr %.046.i484, align 1
  %i.io = zext i16 %.val.i83 to i32
  %i.ip = mul i32 %i.io, -1480785920
  %i.iq = lshr i32 %i.ip, %i.an
  %i.ir = zext i32 %i.iq to i64
  br label %ZL_hashPtr.exit85

bb.m:                                             ; preds = %bb.k
  %.val23.i81 = load i32, ptr %.046.i484, align 1
  %i.is = mul i32 %.val23.i81, -1640531535
  %i.it = lshr i32 %i.is, %i.an
  %i.iu = zext i32 %i.it to i64
  br label %ZL_hashPtr.exit85

bb.n:                                             ; preds = %bb.k
  %.val25.i79 = load i64, ptr %.046.i484, align 1
  %i.iv = mul i64 %.val25.i79, -3523014627193847808
  %i.iw = lshr i64 %i.iv, %i.am
  br label %ZL_hashPtr.exit85

bb.o:                                             ; preds = %bb.k
  %.val28.i77 = load i64, ptr %.046.i484, align 1
  %i.ix = mul i64 %.val28.i77, -3523014627327384477
  %i.iy = lshr i64 %i.ix, %i.am
  br label %ZL_hashPtr.exit85

bb.p:                                             ; preds = %bb.k
  %.val29.i75 = load i64, ptr %.046.i484, align 1
  %i.iz = getelementptr i8, ptr %.046.i484, i64 8
  %.val30.i76 = load i32, ptr %i.iz, align 1
  %i.ja = zext i32 %.val30.i76 to i64
  %i.jb = xor i64 %.val29.i75, %i.ja
  %i.jc = mul i64 %i.jb, -3523014627327384477
  %i.jd = lshr i64 %i.jc, %i.am
  br label %ZL_hashPtr.exit85

bb.q:                                             ; preds = %bb.k
  %.val31.i72 = load i64, ptr %.046.i484, align 1
  %i.je = getelementptr i8, ptr %.046.i484, i64 8
  %.val32.i73 = load i64, ptr %i.je, align 1
  %i.jf = xor i64 %.val32.i73, %.val31.i72
  %i.jg = mul i64 %i.jf, -3523014627327384477
  %i.jh = lshr i64 %i.jg, %i.am
  br label %ZL_hashPtr.exit85

bb.r:                                             ; preds = %bb.k
  %.val27.i84 = load i64, ptr %.046.i484, align 1
  %i.ji = mul i64 %.val27.i84, -3523014627327384477
  %i.jj = lshr i64 %i.ji, %i.am
  br label %ZL_hashPtr.exit85

ZL_hashPtr.exit85:                                ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i74 = phi i64 [ %i.jj, %bb.r ], [ %i.jh, %bb.q ], [ %i.ir, %bb.l ], [ %i.jd, %bb.p ], [ %i.iu, %bb.m ], [ %i.iy, %bb.o ], [ %i.iw, %bb.n ] ; 2 uses
  %i.jk = trunc i64 %.0.i74 to i32
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.il
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !22
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %.0.i74
  tail call void @llvm.prefetch.p0(ptr %i.jm, i32 0, i32 3, i32 1)
  br label %bb.s

bb.s:                                             ; preds = %ZL_hashPtr.exit85, %ZL_hashPtr.exit
  %i.jn = add nuw nsw i64 %.047.i483, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.046.i484, i64 %i.ap ; 2 uses
  %i.jp = icmp samesign ult i64 %.047.i483, 15
  %i.jq = icmp ult ptr %i.jo, %i.aa
  %i.jr = select i1 %i.jp, i1 %i.jq, i1 false
  br i1 %i.jr, label %bb.b, label %.preheader448, !llvm.loop !0

ZS_HashCache_init.exit.preheader:                 ; preds = %.preheader448.split.preheader, %.preheader448.split.us.preheader
  %.sink1095.in = phi ptr [ %i.dd, %.preheader448.split.preheader ], [ %i.hm, %.preheader448.split.us.preheader ]
  %.sroa.0280.0.copyload.sink = phi ptr [ %.sroa.0280.0.copyload, %.preheader448.split.preheader ], [ %.sroa.0263.0.copyload, %.preheader448.split.us.preheader ]
  %.sink1095 = load i32, ptr %.sink1095.in, align 4, !tbaa !22
  %i.js = zext i32 %.sink1095 to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload.sink, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !22
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.jv
  tail call void @llvm.prefetch.p0(ptr %i.jw, i32 0, i32 3, i32 1)
  %i.jx = sub nsw i64 %3, %i.d
  %i.jy = icmp sgt i64 %i.jx, %i.w
  br i1 %i.jy, label %.preheader447.lr.ph, label %ZS_tokenLzMatchFinder_parseT.exit

.preheader447.lr.ph:                              ; preds = %ZS_HashCache_init.exit.preheader
  %i.jz = zext i32 %4 to i64                      ; 12 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.kb = shl i32 %4, 4
  %i.kc = zext i32 %i.kb to i64                   ; 12 uses
  %i.kd = sub i32 64, %.sroa.14291.0.copyload
  %i.ke = zext nneg i32 %i.kd to i64              ; 35 uses
  %i.kf = sub i32 32, %.sroa.14291.0.copyload     ; 5 uses
  %i.kg = sub i32 64, %.sroa.14.0.copyload
  %i.kh = zext nneg i32 %i.kg to i64              ; 25 uses
  %i.ki = sub i32 32, %.sroa.14.0.copyload        ; 10 uses
  %i.kj = sub nsw i64 0, %i.jz                    ; 11 uses
  %i.kk = getelementptr inbounds i8, ptr %i.b, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1 ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.jz
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 -1 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.kr = sub nsw i64 0, %i.w                     ; 7 uses
  %cond = icmp eq i32 %.0.i67, 4
  %cond1092 = icmp eq i32 %.0.i67, 4
  %cond1091 = icmp eq i32 %.0.i67, 4
  br label %.preheader447

.preheader447:                                    ; preds = %.preheader447.lr.ph, %ZS_HashCache_skip.exit
  %.0132.i742 = phi ptr [ %2, %.preheader447.lr.ph ], [ %.1133.i, %ZS_HashCache_skip.exit ] ; 8 uses
  %.0134.i741.a = phi ptr [ %i.x, %.preheader447.lr.ph ], [ %.5.i, %ZS_HashCache_skip.exit ]
  %7 = load i32, ptr %i.a, align 4                ; 2 uses
  %i.ks = zext i32 %7 to i64
  %i.kt = sub nsw i64 0, %i.ks                    ; 3 uses
  %i.ku = load i32, ptr %i.u, align 4             ; 2 uses
  %i.kv = zext i32 %i.ku to i64
  %i.kw = sub nsw i64 0, %i.kv                    ; 2 uses
  %i.kx = zext i32 %i.ku to i64
  %i.ky = sub nsw i64 0, %i.kx                    ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader447, %bb.au
  %.1135.i = phi ptr [ %i.oh, %bb.au ], [ %.0134.i741.a, %.preheader447 ] ; 27 uses
  %i.kz = ptrtoint ptr %.1135.i to i64            ; 5 uses
  %i.la = sub i64 %i.kz, %i.ac                    ; 3 uses
  %i.lb = lshr i64 %i.la, %i.ae
  %i.lc = and i64 %i.lb, 15                       ; 6 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.lc ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !22
  br i1 %5, label %bb.u, label %.thread299

bb.u:                                             ; preds = %bb.t
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.lc
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !22
  %i.lh = zext i32 %i.lg to i64
  %i.li = shl nuw i64 %i.lh, 32                   ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.1135.i, i64 %i.kc ; 2 uses
  %i.lk = icmp ult ptr %i.lj, %i.aa
  br i1 %i.lk, label %bb.v, label %bb.am

.thread299:                                       ; preds = %bb.t
  %i.ll = getelementptr inbounds nuw i8, ptr %.1135.i, i64 %i.kc ; 2 uses
  %i.lm = icmp ult ptr %i.ll, %i.aa
  br i1 %i.lm, label %bb.v, label %.thread305

.thread305:                                       ; preds = %.thread299
  %i.ln = xor i64 %i.lc, 8
  br label %ZS_HashCache_update.exit

bb.v:                                             ; preds = %.thread299, %bb.u
  %i.lo = phi ptr [ %i.ll, %.thread299 ], [ %i.lj, %bb.u ] ; 15 uses
  %.sroa.2.0.insert.ext.i304 = phi i64 [ 0, %.thread299 ], [ %i.li, %bb.u ] ; 2 uses
  switch i32 %.0.i67, label %bb.ad [
    i32 16, label %bb.ac
    i32 12, label %bb.ab
    i32 8, label %bb.aa
    i32 4, label %bb.w
    i32 5, label %bb.x
    i32 6, label %bb.y
    i32 7, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %.val23.i97 = load i32, ptr %i.lo, align 1
  %i.lp = mul i32 %.val23.i97, -1640531535
  %i.lq = lshr i32 %i.lp, %i.kf
  %i.lr = zext i32 %i.lq to i64
  br label %ZL_hashPtr.exit101

bb.x:                                             ; preds = %bb.v
  %.val24.i96 = load i64, ptr %i.lo, align 1
  %i.ls = mul i64 %.val24.i96, -3523014627271114752
  %i.lt = lshr i64 %i.ls, %i.ke
  br label %ZL_hashPtr.exit101

bb.y:                                             ; preds = %bb.v
  %.val25.i95 = load i64, ptr %i.lo, align 1
  %i.lu = mul i64 %.val25.i95, -3523014627193847808
  %i.lv = lshr i64 %i.lu, %i.ke
  br label %ZL_hashPtr.exit101

bb.z:                                             ; preds = %bb.v
  %.val26.i94 = load i64, ptr %i.lo, align 1
  %i.lw = mul i64 %.val26.i94, -3523014627193167104
  %i.lx = lshr i64 %i.lw, %i.ke
  br label %ZL_hashPtr.exit101

bb.aa:                                            ; preds = %bb.v
  %.val28.i93 = load i64, ptr %i.lo, align 1
  %i.ly = mul i64 %.val28.i93, -3523014627327384477
  %i.lz = lshr i64 %i.ly, %i.ke
  br label %ZL_hashPtr.exit101

bb.ab:                                            ; preds = %bb.v
  %i.ma = getelementptr inbounds nuw i8, ptr %.1135.i, i64 %i.kc
  %.val29.i91 = load i64, ptr %i.lo, align 1
  %i.mb = getelementptr i8, ptr %i.ma, i64 8
  %.val30.i92 = load i32, ptr %i.mb, align 1
  %i.mc = zext i32 %.val30.i92 to i64
  %i.md = xor i64 %.val29.i91, %i.mc
  %i.me = mul i64 %i.md, -3523014627327384477
  %i.mf = lshr i64 %i.me, %i.ke
  br label %ZL_hashPtr.exit101

bb.ac:                                            ; preds = %bb.v
  %i.mg = getelementptr inbounds nuw i8, ptr %.1135.i, i64 %i.kc
  %.val31.i88 = load i64, ptr %i.lo, align 1
  %i.mh = getelementptr i8, ptr %i.mg, i64 8
  %.val32.i89 = load i64, ptr %i.mh, align 1
  %i.mi = xor i64 %.val32.i89, %.val31.i88
  %i.mj = mul i64 %i.mi, -3523014627327384477
  %i.mk = lshr i64 %i.mj, %i.ke
  br label %ZL_hashPtr.exit101

bb.ad:                                            ; preds = %bb.v
  %.val27.i100 = load i64, ptr %i.lo, align 1
  %i.ml = mul i64 %.val27.i100, -3523014627327384477
  %i.mm = lshr i64 %i.ml, %i.ke
  br label %ZL_hashPtr.exit101

ZL_hashPtr.exit101:                               ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.0.i90 = phi i64 [ %i.mm, %bb.ad ], [ %i.mk, %bb.ac ], [ %i.lz, %bb.aa ], [ %i.mf, %bb.ab ], [ %i.lr, %bb.w ], [ %i.lt, %bb.x ], [ %i.lv, %bb.y ], [ %i.lx, %bb.z ] ; 2 uses
  %i.mn = trunc i64 %.0.i90 to i32
  store i32 %i.mn, ptr %i.ld, align 4, !tbaa !22
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %.0.i90
  tail call void @llvm.prefetch.p0(ptr %i.mo, i32 0, i32 3, i32 1)
  br i1 %5, label %bb.ae, label %.thread298

.thread298:                                       ; preds = %ZL_hashPtr.exit101
  %i.mp = xor i64 %i.lc, 8
  br label %ZS_HashCache_update.exit

bb.ae:                                            ; preds = %ZL_hashPtr.exit101
  switch i32 %.0.i68, label %bb.al [
    i32 16, label %bb.ak
    i32 2, label %bb.af
    i32 12, label %bb.aj
    i32 4, label %bb.ag
    i32 8, label %bb.ai
    i32 6, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %.val.i113 = load i16, ptr %i.lo, align 1
  %i.mq = zext i16 %.val.i113 to i32
  %i.mr = mul i32 %i.mq, -1480785920
  %i.ms = lshr i32 %i.mr, %i.ki
  %i.mt = zext i32 %i.ms to i64
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  %.val23.i111 = load i32, ptr %i.lo, align 1
  %i.mu = mul i32 %.val23.i111, -1640531535
  %i.mv = lshr i32 %i.mu, %i.ki
  %i.mw = zext i32 %i.mv to i64
  br label %.thread

bb.ah:                                            ; preds = %bb.ae
  %.val25.i109 = load i64, ptr %i.lo, align 1
  %i.mx = mul i64 %.val25.i109, -3523014627193847808
  %i.my = lshr i64 %i.mx, %i.kh
  br label %.thread

bb.ai:                                            ; preds = %bb.ae
  %.val28.i107 = load i64, ptr %i.lo, align 1
  %i.mz = mul i64 %.val28.i107, -3523014627327384477
  %i.na = lshr i64 %i.mz, %i.kh
  br label %.thread

bb.aj:                                            ; preds = %bb.ae
  %i.nb = getelementptr inbounds nuw i8, ptr %.1135.i, i64 %i.kc
  %.val29.i105 = load i64, ptr %i.lo, align 1
  %i.nc = getelementptr i8, ptr %i.nb, i64 8
  %.val30.i106 = load i32, ptr %i.nc, align 1
  %i.nd = zext i32 %.val30.i106 to i64
  %i.ne = xor i64 %.val29.i105, %i.nd
  %i.nf = mul i64 %i.ne, -3523014627327384477
  %i.ng = lshr i64 %i.nf, %i.kh
  br label %.thread

bb.ak:                                            ; preds = %bb.ae
  %i.nh = getelementptr inbounds nuw i8, ptr %.1135.i, i64 %i.kc
  %.val31.i102 = load i64, ptr %i.lo, align 1
  %i.ni = getelementptr i8, ptr %i.nh, i64 8
  %.val32.i103 = load i64, ptr %i.ni, align 1
  %i.nj = xor i64 %.val32.i103, %.val31.i102
  %i.nk = mul i64 %i.nj, -3523014627327384477
  %i.nl = lshr i64 %i.nk, %i.kh
  br label %.thread

bb.al:                                            ; preds = %bb.ae
  %.val27.i114 = load i64, ptr %i.lo, align 1
  %i.nm = mul i64 %.val27.i114, -3523014627327384477
  %i.nn = lshr i64 %i.nm, %i.kh
  br label %.thread

.thread:                                          ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.0.i104 = phi i64 [ %i.nn, %bb.al ], [ %i.nl, %bb.ak ], [ %i.mt, %bb.af ], [ %i.ng, %bb.aj ], [ %i.mw, %bb.ag ], [ %i.na, %bb.ai ], [ %i.my, %bb.ah ] ; 2 uses
  %i.no = trunc i64 %.0.i104 to i32
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.lc
  store i32 %i.no, ptr %i.np, align 4, !tbaa !22
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %.0.i104
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  br label %bb.am

bb.am:                                            ; preds = %bb.u, %.thread
  %.sroa.2.0.insert.ext.i302 = phi i64 [ %.sroa.2.0.insert.ext.i304, %.thread ], [ %i.li, %bb.u ]
  %i.nr = xor i64 %i.lc, 8                        ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !22
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !22
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  br label %ZS_HashCache_update.exit

ZS_HashCache_update.exit:                         ; preds = %.thread305, %.thread298, %bb.am
  %.sroa.2.0.insert.ext.i301 = phi i64 [ 0, %.thread305 ], [ %.sroa.2.0.insert.ext.i302, %bb.am ], [ %.sroa.2.0.insert.ext.i304, %.thread298 ] ; 2 uses
  %i.nz = phi i64 [ %i.ln, %.thread305 ], [ %i.nr, %bb.am ], [ %i.mp, %.thread298 ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !22
end_hunk_1
begin_hunk_2_@ZS_tokenLzMatchFinder_parseAny:bb.a
  %.013.i.val61 = load i24, ptr %.013.i703, align 1
  %i.oq = icmp eq i24 %.0.i9.val62, %.013.i.val61
  br i1 %i.oq, label %bb.an, label %findMatchDFast.exit

.split312:                                        ; preds = %.lr.ph705
  %.0.i9.val34 = load i32, ptr %.0.i9704, align 1
  %.013.i.val33 = load i32, ptr %.013.i703, align 1
  %i.or = icmp eq i32 %.0.i9.val34, %.013.i.val33
  br i1 %i.or, label %bb.an, label %findMatchDFast.exit

.split311:                                        ; preds = %.lr.ph705
  %.0.i9.val48 = load i64, ptr %.0.i9704, align 1
  %.013.i.val47 = load i64, ptr %.013.i703, align 1
  %i.os = icmp eq i64 %.0.i9.val48, %.013.i.val47
  br i1 %i.os, label %bb.an, label %findMatchDFast.exit

ZS_checkMatch.exit.i:                             ; preds = %.lr.ph705
  %.0.i9.val = load i16, ptr %.0.i9704, align 1
  %.013.i.val = load i16, ptr %.013.i703, align 1
  %i.ot = icmp eq i16 %.0.i9.val, %.013.i.val
  br i1 %i.ot, label %bb.an, label %findMatchDFast.exit

bb.an:                                            ; preds = %.split313, %.split312, %.split311, %ZS_checkMatch.exit.i
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i9704, i64 %i.jz ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.013.i703, i64 %i.jz
  %i.ow = icmp ult ptr %i.ou, %i.kl
  br i1 %i.ow, label %.lr.ph705, label %findMatchDFast.exit, !llvm.loop !1

.split499.us:                                     ; preds = %.thread314.us526.preheader, %.thread314.preheader
  %i.ox = trunc i64 %.sroa.2.0.insert.ext.i301 to i32
  %.sroa.0.0.extract.trunc.i = or i32 %i.le, %i.ox
  br i1 %5, label %bb.ao, label %.split499.us._crit_edge

.split499.us._crit_edge:                          ; preds = %.split499.us
  %.pre.a = trunc i64 %i.la to i32
  br label %bb.ar

bb.ao:                                            ; preds = %.split499.us
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.2.0.insert.ext.i301, 32
  %i.oy = trunc i64 %i.la to i32                  ; 4 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %.sroa.2.0.extract.shift.i ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !22 ; 2 uses
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !22
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.pb ; 10 uses
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = sub i64 %i.kz, %i.pd
  %i.pf = trunc i64 %i.pe to i32                  ; 2 uses
  %i.pg = icmp uge i32 %i.pa, %i.k
  %i.ph = icmp ult i32 %i.pf, 16777215
  %or.cond.i14 = select i1 %i.pg, i1 %i.ph, i1 false
  br i1 %or.cond.i14, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  br i1 %cond1092, label %.split340, label %.split339

.split340:                                        ; preds = %bb.ap
  %.1135.i.val28 = load i32, ptr %.1135.i, align 1
  %.val27 = load i32, ptr %i.pc, align 1
  %i.pi = icmp eq i32 %.1135.i.val28, %.val27
  br i1 %i.pi, label %.critedge.i15, label %bb.ar

.split339:                                        ; preds = %bb.ap
  %.1135.i.val40 = load i64, ptr %.1135.i, align 1
  %.val39 = load i64, ptr %i.pc, align 1
  %i.pj = icmp eq i64 %.1135.i.val40, %.val39
  br i1 %i.pj, label %.critedge.i15, label %bb.ar

.critedge.i15:                                    ; preds = %.split340, %.split339
  %i.pk = lshr i32 %i.pf, %i.t                    ; 6 uses
  %i.pl = icmp ult ptr %.1135.i, %i.kl
  br i1 %i.pl, label %.lr.ph697, label %findMatchDFast.exit

.lr.ph697:                                        ; preds = %.critedge.i15, %bb.aq
  %.0.i73.i696 = phi ptr [ %i.pq, %bb.aq ], [ %.1135.i, %.critedge.i15 ] ; 9 uses
  %.013.i72.i695 = phi ptr [ %i.pr, %bb.aq ], [ %i.pc, %.critedge.i15 ] ; 5 uses
  switch i32 %4, label %.split342 [
    i32 2, label %ZS_checkMatch.exit.i74.i
    i32 3, label %.split344
    i32 4, label %.split343
  ]

.split344:                                        ; preds = %.lr.ph697
  %.0.i73.i.val56 = load i24, ptr %.0.i73.i696, align 1
  %.013.i72.i.val55 = load i24, ptr %.013.i72.i695, align 1
  %i.pm = icmp eq i24 %.0.i73.i.val56, %.013.i72.i.val55
  br i1 %i.pm, label %bb.aq, label %findMatchDFast.exit

.split343:                                        ; preds = %.lr.ph697
  %.0.i73.i.val26 = load i32, ptr %.0.i73.i696, align 1
  %.013.i72.i.val25 = load i32, ptr %.013.i72.i695, align 1
  %i.pn = icmp eq i32 %.0.i73.i.val26, %.013.i72.i.val25
  br i1 %i.pn, label %bb.aq, label %findMatchDFast.exit

.split342:                                        ; preds = %.lr.ph697
  %.0.i73.i.val42 = load i64, ptr %.0.i73.i696, align 1
  %.013.i72.i.val41 = load i64, ptr %.013.i72.i695, align 1
  %i.po = icmp eq i64 %.0.i73.i.val42, %.013.i72.i.val41
  br i1 %i.po, label %bb.aq, label %findMatchDFast.exit

ZS_checkMatch.exit.i74.i:                         ; preds = %.lr.ph697
  %.0.i73.i.val = load i16, ptr %.0.i73.i696, align 1
  %.013.i72.i.val = load i16, ptr %.013.i72.i695, align 1
  %i.pp = icmp eq i16 %.0.i73.i.val, %.013.i72.i.val
  br i1 %i.pp, label %bb.aq, label %findMatchDFast.exit

bb.aq:                                            ; preds = %.split344, %.split343, %.split342, %ZS_checkMatch.exit.i74.i
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.i73.i696, i64 %i.jz ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.013.i72.i695, i64 %i.jz
  %i.ps = icmp ult ptr %i.pq, %i.kl
  br i1 %i.ps, label %.lr.ph697, label %findMatchDFast.exit, !llvm.loop !1

bb.ar:                                            ; preds = %.split499.us._crit_edge, %.split340, %.split339, %bb.ao
  %.pre-phi = phi i32 [ %.pre.a, %.split499.us._crit_edge ], [ %i.oy, %bb.ao ], [ %i.oy, %.split340 ], [ %i.oy, %.split339 ]
  %i.pt = zext i32 %.sroa.0.0.extract.trunc.i to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !22 ; 2 uses
  store i32 %.pre-phi, ptr %i.pu, align 4, !tbaa !22
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.pw ; 10 uses
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = sub i64 %i.kz, %i.py
  %i.qa = trunc i64 %i.pz to i32                  ; 2 uses
  %i.qb = icmp uge i32 %i.pv, %i.k
  %i.qc = icmp ult i32 %i.qa, 16777215
  %or.cond4.i = select i1 %i.qb, i1 %i.qc, i1 false
  br i1 %or.cond4.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  br i1 %cond1091, label %.split346, label %.split345

.split346:                                        ; preds = %bb.as
  %.1135.i.val32 = load i32, ptr %.1135.i, align 1
  %.val31 = load i32, ptr %i.px, align 1
  %i.qd = icmp eq i32 %.1135.i.val32, %.val31
  br i1 %i.qd, label %.critedge68.i, label %bb.au

.split345:                                        ; preds = %bb.as
  %.1135.i.val44 = load i64, ptr %.1135.i, align 1
  %.val43 = load i64, ptr %i.px, align 1
  %i.qe = icmp eq i64 %.1135.i.val44, %.val43
  br i1 %i.qe, label %.critedge68.i, label %bb.au

.critedge68.i:                                    ; preds = %.split346, %.split345
  %i.qf = lshr i32 %i.qa, %i.t                    ; 6 uses
  %i.qg = icmp ult ptr %.1135.i, %i.kl
  br i1 %i.qg, label %.lr.ph689, label %findMatchDFast.exit

.lr.ph689:                                        ; preds = %.critedge68.i, %bb.at
  %.0.i71.i688 = phi ptr [ %i.ql, %bb.at ], [ %.1135.i, %.critedge68.i ] ; 9 uses
  %.013.i.i687 = phi ptr [ %i.qm, %bb.at ], [ %i.px, %.critedge68.i ] ; 5 uses
  switch i32 %4, label %.split348 [
    i32 2, label %ZS_checkMatch.exit.i.i
    i32 3, label %.split350
    i32 4, label %.split349
  ]

.split350:                                        ; preds = %.lr.ph689
  %.0.i71.i.val60 = load i24, ptr %.0.i71.i688, align 1
  %.013.i.i.val59 = load i24, ptr %.013.i.i687, align 1
  %i.qh = icmp eq i24 %.0.i71.i.val60, %.013.i.i.val59
  br i1 %i.qh, label %bb.at, label %findMatchDFast.exit

.split349:                                        ; preds = %.lr.ph689
  %.0.i71.i.val30 = load i32, ptr %.0.i71.i688, align 1
  %.013.i.i.val29 = load i32, ptr %.013.i.i687, align 1
  %i.qi = icmp eq i32 %.0.i71.i.val30, %.013.i.i.val29
  br i1 %i.qi, label %bb.at, label %findMatchDFast.exit

.split348:                                        ; preds = %.lr.ph689
  %.0.i71.i.val46 = load i64, ptr %.0.i71.i688, align 1
  %.013.i.i.val45 = load i64, ptr %.013.i.i687, align 1
  %i.qj = icmp eq i64 %.0.i71.i.val46, %.013.i.i.val45
  br i1 %i.qj, label %bb.at, label %findMatchDFast.exit

ZS_checkMatch.exit.i.i:                           ; preds = %.lr.ph689
  %.0.i71.i.val = load i16, ptr %.0.i71.i688, align 1
  %.013.i.i.val = load i16, ptr %.013.i.i687, align 1
  %i.qk = icmp eq i16 %.0.i71.i.val, %.013.i.i.val
  br i1 %i.qk, label %bb.at, label %findMatchDFast.exit

bb.at:                                            ; preds = %.split350, %.split349, %.split348, %ZS_checkMatch.exit.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i71.i688, i64 %i.jz ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.013.i.i687, i64 %i.jz
  %i.qn = icmp ult ptr %i.ql, %i.kl
  br i1 %i.qn, label %.lr.ph689, label %findMatchDFast.exit, !llvm.loop !1

bb.au:                                            ; preds = %bb.ar, %.split345, %.split346
  %i.qo = icmp ult ptr %i.oh, %i.f
  br i1 %i.qo, label %bb.t, label %bb.av, !llvm.loop !2

bb.av:                                            ; preds = %bb.au
  br label %ZS_HashCache_skip.exit, !llvm.loop !3

findMatchDFast.exit:                              ; preds = %.split350, %.split349, %.split348, %ZS_checkMatch.exit.i.i, %bb.at, %.split344, %.split343, %.split342, %ZS_checkMatch.exit.i74.i, %bb.aq, %ZS_checkMatch.exit.i, %bb.an, %.split311, %.split312, %.split313, %.critedge68.i, %.critedge.i15, %.split489
  %i.qp = phi i1 [ false, %.critedge.i15 ], [ true, %.split489 ], [ true, %ZS_checkMatch.exit.i ], [ false, %.critedge68.i ], [ false, %.split344 ], [ true, %.split313 ], [ true, %.split312 ], [ true, %.split311 ], [ true, %bb.an ], [ false, %bb.aq ], [ false, %ZS_checkMatch.exit.i74.i ], [ false, %.split342 ], [ false, %.split343 ], [ false, %bb.at ], [ false, %ZS_checkMatch.exit.i.i ], [ false, %.split348 ], [ false, %.split349 ], [ false, %.split350 ]
  %.sroa.29.3 = phi i32 [ 0, %.critedge.i15 ], [ 1, %.split489 ], [ 1, %ZS_checkMatch.exit.i ], [ 0, %.critedge68.i ], [ 0, %.split344 ], [ 1, %.split313 ], [ 1, %.split312 ], [ 1, %.split311 ], [ 1, %bb.an ], [ 0, %bb.aq ], [ 0, %ZS_checkMatch.exit.i74.i ], [ 0, %.split342 ], [ 0, %.split343 ], [ 0, %bb.at ], [ 0, %ZS_checkMatch.exit.i.i ], [ 0, %.split348 ], [ 0, %.split349 ], [ 0, %.split350 ] ; 2 uses
  %.pn.in = phi ptr [ %.1135.i, %.critedge.i15 ], [ %.1135.i, %.split489 ], [ %.0.i9704, %ZS_checkMatch.exit.i ], [ %.1135.i, %.critedge68.i ], [ %.0.i73.i696, %.split344 ], [ %i.ou, %bb.an ], [ %.0.i9704, %.split311 ], [ %.0.i9704, %.split312 ], [ %.0.i9704, %.split313 ], [ %.0.i73.i696, %.split343 ], [ %.0.i73.i696, %.split342 ], [ %.0.i73.i696, %ZS_checkMatch.exit.i74.i ], [ %i.pq, %bb.aq ], [ %.0.i71.i688, %.split350 ], [ %.0.i71.i688, %.split349 ], [ %.0.i71.i688, %.split348 ], [ %.0.i71.i688, %ZS_checkMatch.exit.i.i ], [ %i.ql, %bb.at ]
  %.sroa.12.3 = phi i32 [ %i.pk, %.critedge.i15 ], [ %.us-phi496, %.split489 ], [ %.us-phi496, %ZS_checkMatch.exit.i ], [ %i.qf, %.critedge68.i ], [ %i.pk, %.split344 ], [ %.us-phi496, %.split313 ], [ %.us-phi496, %.split312 ], [ %.us-phi496, %.split311 ], [ %.us-phi496, %bb.an ], [ %i.pk, %bb.aq ], [ %i.pk, %ZS_checkMatch.exit.i74.i ], [ %i.pk, %.split342 ], [ %i.pk, %.split343 ], [ %i.qf, %bb.at ], [ %i.qf, %ZS_checkMatch.exit.i.i ], [ %i.qf, %.split348 ], [ %i.qf, %.split349 ], [ %i.qf, %.split350 ] ; 5 uses
  %.3 = phi ptr [ %i.pc, %.critedge.i15 ], [ %.us-phi495, %.split489 ], [ %.us-phi495, %ZS_checkMatch.exit.i ], [ %i.px, %.critedge68.i ], [ %i.pc, %.split344 ], [ %.us-phi495, %.split313 ], [ %.us-phi495, %.split312 ], [ %.us-phi495, %.split311 ], [ %.us-phi495, %bb.an ], [ %i.pc, %bb.aq ], [ %i.pc, %ZS_checkMatch.exit.i74.i ], [ %i.pc, %.split342 ], [ %i.pc, %.split343 ], [ %i.px, %bb.at ], [ %i.px, %ZS_checkMatch.exit.i.i ], [ %i.px, %.split348 ], [ %i.px, %.split349 ], [ %i.px, %.split350 ] ; 2 uses
  %.pn442 = ptrtoint ptr %.0132.i742 to i64
  %.sroa.0.3.in = sub i64 %i.kz, %.pn442          ; 2 uses
  %.sroa.0.3 = trunc i64 %.sroa.0.3.in to i32     ; 2 uses
  %.pn = ptrtoint ptr %.pn.in to i64
  %.sroa.20.3.in = sub i64 %.pn, %i.kz
  %.sroa.20.3 = trunc i64 %.sroa.20.3.in to i32   ; 2 uses
  %i.qq = and i64 %.sroa.0.3.in, 4294967295       ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.0132.i742, i64 %i.qq ; 2 uses
  %i.qs = icmp ne i64 %i.qq, 0
  %i.qt = icmp ugt ptr %.3, %i.kn
  %or.cond711 = select i1 %i.qs, i1 %i.qt, i1 false
  br i1 %or.cond711, label %.lr.ph716, label %.critedge.i

.lr.ph716:                                        ; preds = %findMatchDFast.exit, %bb.aw
  %.4.i715 = phi ptr [ %i.qu, %bb.aw ], [ %i.qr, %findMatchDFast.exit ] ; 5 uses
  %.4714 = phi ptr [ %i.qv, %bb.aw ], [ %.3, %findMatchDFast.exit ]
  %.sroa.0.4713 = phi i32 [ %i.rb, %bb.aw ], [ %.sroa.0.3, %findMatchDFast.exit ] ; 5 uses
  %.sroa.20.4712 = phi i32 [ %i.ra, %bb.aw ], [ %.sroa.20.3, %findMatchDFast.exit ] ; 5 uses
  %i.qu = getelementptr inbounds i8, ptr %.4.i715, i64 %i.kj ; 7 uses
  %i.qv = getelementptr inbounds i8, ptr %.4714, i64 %i.kj ; 6 uses
  switch i32 %4, label %.split396 [
    i32 2, label %ZS_checkMatch.exit8
    i32 3, label %.split398
    i32 4, label %.split397
  ]

.split398:                                        ; preds = %.lr.ph716
  %.val64 = load i24, ptr %i.qu, align 1
  %.val63 = load i24, ptr %i.qv, align 1
  %i.qw = icmp eq i24 %.val64, %.val63
  br i1 %i.qw, label %bb.aw, label %.critedge.i

.split397:                                        ; preds = %.lr.ph716
  %.val36 = load i32, ptr %i.qu, align 1
  %.val35 = load i32, ptr %i.qv, align 1
  %i.qx = icmp eq i32 %.val36, %.val35
  br i1 %i.qx, label %bb.aw, label %.critedge.i

.split396:                                        ; preds = %.lr.ph716
  %.val50 = load i64, ptr %i.qu, align 1
  %.val49 = load i64, ptr %i.qv, align 1
  %i.qy = icmp eq i64 %.val50, %.val49
  br i1 %i.qy, label %bb.aw, label %.critedge.i

ZS_checkMatch.exit8:                              ; preds = %.lr.ph716
  %.val22 = load i16, ptr %i.qu, align 1
  %.val21 = load i16, ptr %i.qv, align 1
  %i.qz = icmp eq i16 %.val22, %.val21
  br i1 %i.qz, label %bb.aw, label %.critedge.i

bb.aw:                                            ; preds = %.split398, %.split397, %.split396, %ZS_checkMatch.exit8
  %i.ra = add i32 %.sroa.20.4712, %4              ; 2 uses
  %i.rb = sub i32 %.sroa.0.4713, %4               ; 2 uses
  %i.rc = icmp ugt ptr %i.qu, %.0132.i742
  %i.rd = icmp ugt ptr %i.qv, %i.kn
  %or.cond = select i1 %i.rc, i1 %i.rd, i1 false
  br i1 %or.cond, label %.lr.ph716, label %.critedge.i, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.aw, %ZS_checkMatch.exit8, %.split396, %.split397, %.split398, %findMatchDFast.exit
  %.sroa.20.4.lcssa = phi i32 [ %.sroa.20.3, %findMatchDFast.exit ], [ %.sroa.20.4712, %.split398 ], [ %.sroa.20.4712, %.split397 ], [ %.sroa.20.4712, %.split396 ], [ %.sroa.20.4712, %ZS_checkMatch.exit8 ], [ %i.ra, %bb.aw ] ; 4 uses
  %.sroa.0.4.lcssa = phi i32 [ %.sroa.0.3, %findMatchDFast.exit ], [ %.sroa.0.4713, %.split398 ], [ %.sroa.0.4713, %.split397 ], [ %.sroa.0.4713, %.split396 ], [ %.sroa.0.4713, %ZS_checkMatch.exit8 ], [ %i.rb, %bb.aw ] ; 4 uses
  %.4.i.lcssa = phi ptr [ %i.qr, %findMatchDFast.exit ], [ %.4.i715, %.split398 ], [ %.4.i715, %.split397 ], [ %.4.i715, %.split396 ], [ %.4.i715, %ZS_checkMatch.exit8 ], [ %i.qu, %bb.aw ] ; 3 uses
  br i1 %i.qp, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge.i
  store i32 %7, ptr %i.u, align 4
  %i.re = shl i32 %.sroa.12.3, %i.t
  br label %.sink.split

bb.ay:                                            ; preds = %.critedge.i
  %.not = icmp eq i32 %.sroa.12.3, 0
  br i1 %.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rf = zext nneg i32 %.sroa.12.3 to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !22
  %i.ri = shl nuw nsw i32 %.sroa.12.3, 2
  %i.rj = zext nneg i32 %i.ri to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull align 4 %i.a, i64 %i.rj, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ax, %bb.az
  %.sink = phi i32 [ %i.rh, %bb.az ], [ %i.re, %bb.ax ]
  %.sroa.12.4.ph = phi i32 [ 1, %bb.az ], [ %.sroa.12.3, %bb.ax ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !22
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %bb.ay
  %.sroa.12.4 = phi i32 [ 0, %bb.ay ], [ %.sroa.12.4.ph, %.sink.split ] ; 2 uses
  %i.rk = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !22
  %i.rl = icmp sgt i32 %i.rk, 1023
  br i1 %i.rl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_seqStore_store, i32 noundef 71, ptr noundef nonnull @.str.2, i32 noundef %.sroa.29.3, i32 noundef %.sroa.0.4.lcssa, i32 noundef %.sroa.20.4.lcssa, i32 noundef %.sroa.12.4) #7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.rm = zext i32 %.sroa.0.4.lcssa to i64        ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.0132.i742, i64 %i.rm
  %i.ro = icmp ult ptr %i.rn, %i.ko
  %i.rp = load ptr, ptr %i.kp, align 8, !tbaa !42 ; 4 uses
  br i1 %i.ro, label %bb.bd, label %bb.be, !prof !43

bb.bd:                                            ; preds = %bb.bc
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.rp, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0132.i742, i64 16, i1 false)
  %.not.i.i = icmp ugt i32 %.sroa.0.4.lcssa, 16
  br i1 %.not.i.i, label %.preheader.preheader.i, label %ZS_seqStore_store.exit

.preheader.preheader.i:                           ; preds = %bb.bd
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.012.i.i = phi ptr [ %i.ru, %.preheader.i ], [ %i.rr, %.preheader.preheader.i ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.rt, %.preheader.i ], [ %.0132.i742, %.preheader.preheader.i ] ; 2 uses
  %.0.i.i131 = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.012.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i.i131, i64 16, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16
  %i.rt = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.rs, ptr noundef nonnull align 1 dereferenceable(16) %i.rt, i64 16, i1 false)
  %i.ru = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32 ; 2 uses
  %i.rv = icmp ult ptr %i.ru, %i.rq
  br i1 %i.rv, label %.preheader.i, label %ZS_seqStore_store.exit, !llvm.loop !5

bb.be:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rp, ptr readonly align 1 %.0132.i742, i64 %i.rm, i1 false)
  br label %ZS_seqStore_store.exit

ZS_seqStore_store.exit:                           ; preds = %.preheader.i, %bb.bd, %bb.be
  %i.rw = load ptr, ptr %i.kp, align 8, !tbaa !42
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rm
  store ptr %i.rx, ptr %i.kp, align 8, !tbaa !42
  %i.ry = load ptr, ptr %i.kq, align 8, !tbaa !44 ; 5 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store ptr %i.rz, ptr %i.kq, align 8, !tbaa !44
  store i32 %.sroa.0.4.lcssa, ptr %i.ry, align 4, !tbaa !22
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  store i32 %.sroa.12.4, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !22
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i32 %.sroa.20.4.lcssa, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !22
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  store i32 %.sroa.29.3, ptr %.sroa.29.0..sroa_idx, align 4, !tbaa !22
  %i.sa = zext i32 %.sroa.20.4.lcssa to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %.4.i.lcssa, i64 %i.sa ; 33 uses
  %.not.i = icmp ugt ptr %i.sb, %i.f
  br i1 %.not.i, label %ZS_HashCache_skip.exit, label %bb.bf

bb.bf:                                            ; preds = %ZS_seqStore_store.exit
  %i.sc = ptrtoint ptr %i.sb to i64               ; 2 uses
  %i.sd = sub i64 %i.sc, %i.ac                    ; 2 uses
  %i.se = trunc i64 %i.sd to i32                  ; 2 uses
  %i.sf = icmp ugt i32 %.sroa.20.4.lcssa, %4
  br i1 %i.sf, label %bb.bg, label %ZS_HashCache_skip.exit

bb.bg:                                            ; preds = %bb.bf
  %i.sg = ptrtoint ptr %.4.i.lcssa to i64
  %i.sh = sub i64 %i.sg, %i.ac
  %i.si = trunc i64 %i.sh to i32
  %i.sj = getelementptr inbounds nuw i8, ptr %.4.i.lcssa, i64 %i.jz ; 19 uses
  %i.sk = add i32 %4, %i.si                       ; 15 uses
  switch i32 %.0.i67, label %ZL_hashPtr.exit145 [
    i32 16, label %ZL_hashPtr.exit145.thread416
    i32 12, label %ZL_hashPtr.exit145.thread414
    i32 8, label %ZL_hashPtr.exit145.thread412
    i32 4, label %ZL_hashPtr.exit145.thread404
    i32 5, label %ZL_hashPtr.exit145.thread406
    i32 6, label %ZL_hashPtr.exit145.thread408
    i32 7, label %ZL_hashPtr.exit145.thread410
  ]

ZL_hashPtr.exit145.thread404:                     ; preds = %bb.bg
  %.val23.i141 = load i32, ptr %i.sj, align 1
  %i.sl = mul i32 %.val23.i141, -1640531535
  %i.sm = lshr i32 %i.sl, %i.kf
  %i.sn = zext i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.sn
  store i32 %i.sk, ptr %i.so, align 4, !tbaa !22
  %i.sp = getelementptr inbounds i8, ptr %i.sb, i64 %i.kj
  %.val23.i155 = load i32, ptr %i.sp, align 1
  %i.sq = mul i32 %.val23.i155, -1640531535
  %i.sr = lshr i32 %i.sq, %i.kf
  %i.ss = zext i32 %i.sr to i64
  br label %ZL_hashPtr.exit159

ZL_hashPtr.exit145.thread406:                     ; preds = %bb.bg
  %.val24.i140 = load i64, ptr %i.sj, align 1
  %i.st = mul i64 %.val24.i140, -3523014627271114752
  %i.su = lshr i64 %i.st, %i.ke
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.su
  store i32 %i.sk, ptr %i.sv, align 4, !tbaa !22
  %i.sw = getelementptr inbounds i8, ptr %i.sb, i64 %i.kj
  %.val24.i154 = load i64, ptr %i.sw, align 1
  %i.sx = mul i64 %.val24.i154, -3523014627271114752
  %i.sy = lshr i64 %i.sx, %i.ke
  br label %ZL_hashPtr.exit159

ZL_hashPtr.exit145.thread408:                     ; preds = %bb.bg
  %.val25.i139 = load i64, ptr %i.sj, align 1
  %i.sz = mul i64 %.val25.i139, -3523014627193847808
  %i.ta = lshr i64 %i.sz, %i.ke
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.ta
  store i32 %i.sk, ptr %i.tb, align 4, !tbaa !22
  %i.tc = getelementptr inbounds i8, ptr %i.sb, i64 %i.kj
  %.val25.i153 = load i64, ptr %i.tc, align 1
  %i.td = mul i64 %.val25.i153, -3523014627193847808
  %i.te = lshr i64 %i.td, %i.ke
  br label %ZL_hashPtr.exit159

ZL_hashPtr.exit145.thread410:                     ; preds = %bb.bg
  %.val26.i138 = load i64, ptr %i.sj, align 1
  %i.tf = mul i64 %.val26.i138, -3523014627193167104
  %i.tg = lshr i64 %i.tf, %i.ke
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.tg
  store i32 %i.sk, ptr %i.th, align 4, !tbaa !22
  %i.ti = getelementptr inbounds i8, ptr %i.sb, i64 %i.kj
  %.val26.i152 = load i64, ptr %i.ti, align 1
  %i.tj = mul i64 %.val26.i152, -3523014627193167104
  %i.tk = lshr i64 %i.tj, %i.ke
  br label %ZL_hashPtr.exit159

ZL_hashPtr.exit145.thread412:                     ; preds = %bb.bg
  %.val28.i137 = load i64, ptr %i.sj, align 1
  %i.tl = mul i64 %.val28.i137, -3523014627327384477
  %i.tm = lshr i64 %i.tl, %i.ke
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.tm
  store i32 %i.sk, ptr %i.tn, align 4, !tbaa !22
  %i.to = getelementptr inbounds i8, ptr %i.sb, i64 %i.kj
  %.val28.i151 = load i64, ptr %i.to, align 1
  %i.tp = mul i64 %.val28.i151, -3523014627327384477
  %i.tq = lshr i64 %i.tp, %i.ke
  br label %ZL_hashPtr.exit159

ZL_hashPtr.exit145.thread414:                     ; preds = %bb.bg
  %.val29.i135 = load i64, ptr %i.sj, align 1
  %i.tr = getelementptr i8, ptr %i.sj, i64 8
  %.val30.i136 = load i32, ptr %i.tr, align 1
  %i.ts = zext i32 %.val30.i136 to i64
  %i.tt = xor i64 %.val29.i135, %i.ts
  %i.tu = mul i64 %i.tt, -3523014627327384477
  %i.tv = lshr i64 %i.tu, %i.ke
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.tv
  store i32 %i.sk, ptr %i.tw, align 4, !tbaa !22
  %i.tx = getelementptr inbounds i8, ptr %i.sb, i64 %i.kj ; 2 uses
  %.val29.i149 = load i64, ptr %i.tx, align 1
  %i.ty = getelementptr i8, ptr %i.tx, i64 8
  %.val30.i150 = load i32, ptr %i.ty, align 1
  %i.tz = zext i32 %.val30.i150 to i64
  %i.ua = xor i64 %.val29.i149, %i.tz
  %i.ub = mul i64 %i.ua, -3523014627327384477
  %i.uc = lshr i64 %i.ub, %i.ke
  br label %ZL_hashPtr.exit159

ZL_hashPtr.exit145.thread416:                     ; preds = %bb.bg
  %.val31.i132 = load i64, ptr %i.sj, align 1
  %i.ud = getelementptr i8, ptr %i.sj, i64 8
  %.val32.i133 = load i64, ptr %i.ud, align 1
  %i.ue = xor i64 %.val32.i133, %.val31.i132
  %i.uf = mul i64 %i.ue, -3523014627327384477
  %i.ug = lshr i64 %i.uf, %i.ke
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.ug
  store i32 %i.sk, ptr %i.uh, align 4, !tbaa !22
  %i.ui = getelementptr inbounds i8, ptr %i.sb, i64 %i.kj ; 2 uses
  %.val31.i146 = load i64, ptr %i.ui, align 1
  %i.uj = getelementptr i8, ptr %i.ui, i64 8
  %.val32.i147 = load i64, ptr %i.uj, align 1
  %i.uk = xor i64 %.val32.i147, %.val31.i146
  %i.ul = mul i64 %i.uk, -3523014627327384477
  %i.um = lshr i64 %i.ul, %i.ke
  br label %ZL_hashPtr.exit159

ZL_hashPtr.exit145:                               ; preds = %bb.bg
  %.val27.i144 = load i64, ptr %i.sj, align 1
  %i.un = mul i64 %.val27.i144, -3523014627327384477
  %i.uo = lshr i64 %i.un, %i.ke
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.uo
  store i32 %i.sk, ptr %i.up, align 4, !tbaa !22
  %i.uq = getelementptr inbounds i8, ptr %i.sb, i64 %i.kj
  %.val27.i158 = load i64, ptr %i.uq, align 1
  %i.ur = mul i64 %.val27.i158, -3523014627327384477
  %i.us = lshr i64 %i.ur, %i.ke
  br label %ZL_hashPtr.exit159

ZL_hashPtr.exit159:                               ; preds = %ZL_hashPtr.exit145.thread404, %ZL_hashPtr.exit145.thread406, %ZL_hashPtr.exit145.thread408, %ZL_hashPtr.exit145.thread410, %ZL_hashPtr.exit145.thread412, %ZL_hashPtr.exit145.thread414, %ZL_hashPtr.exit145.thread416, %ZL_hashPtr.exit145
  %.0.i148 = phi i64 [ %i.us, %ZL_hashPtr.exit145 ], [ %i.um, %ZL_hashPtr.exit145.thread416 ], [ %i.uc, %ZL_hashPtr.exit145.thread414 ], [ %i.tq, %ZL_hashPtr.exit145.thread412 ], [ %i.ss, %ZL_hashPtr.exit145.thread404 ], [ %i.sy, %ZL_hashPtr.exit145.thread406 ], [ %i.te, %ZL_hashPtr.exit145.thread408 ], [ %i.tk, %ZL_hashPtr.exit145.thread410 ]
  %i.ut = sub i32 %i.se, %4
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %.0.i148
  store i32 %i.ut, ptr %i.uu, align 4, !tbaa !22
  br i1 %5, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %ZL_hashPtr.exit159
  switch i32 %.0.i68, label %ZL_hashPtr.exit173 [
    i32 16, label %ZL_hashPtr.exit173.thread435
    i32 2, label %ZL_hashPtr.exit173.thread419
    i32 12, label %ZL_hashPtr.exit173.thread433
    i32 4, label %ZL_hashPtr.exit173.thread423
    i32 8, label %ZL_hashPtr.exit173.thread431
    i32 6, label %ZL_hashPtr.exit173.thread427
  ]

ZL_hashPtr.exit173.thread419:                     ; preds = %bb.bh
  %.val.i171 = load i16, ptr %i.sj, align 1
  %i.uv = zext i16 %.val.i171 to i32
  %i.uw = mul i32 %i.uv, -1480785920
  %i.ux = lshr i32 %i.uw, %i.ki
  %i.uy = zext i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %i.uy
  store i32 %i.sk, ptr %i.uz, align 4, !tbaa !22
  %i.va = getelementptr inbounds i8, ptr %i.sb, i64 %i.kr
  %.val.i185 = load i16, ptr %i.va, align 1
  %i.vb = zext i16 %.val.i185 to i32
  %i.vc = mul i32 %i.vb, -1480785920
  %i.vd = lshr i32 %i.vc, %i.ki
  %i.ve = zext i32 %i.vd to i64
  br label %ZL_hashPtr.exit187

ZL_hashPtr.exit173.thread423:                     ; preds = %bb.bh
  %.val23.i169 = load i32, ptr %i.sj, align 1
  %i.vf = mul i32 %.val23.i169, -1640531535
  %i.vg = lshr i32 %i.vf, %i.ki
  %i.vh = zext i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %i.vh
  store i32 %i.sk, ptr %i.vi, align 4, !tbaa !22
  %i.vj = getelementptr inbounds i8, ptr %i.sb, i64 %i.kr
  %.val23.i183 = load i32, ptr %i.vj, align 1
  %i.vk = mul i32 %.val23.i183, -1640531535
  %i.vl = lshr i32 %i.vk, %i.ki
end_hunk_2
begin_hunk_3_@ZS_tokenLzMatchFinder_parseAny:bb.a
.lr.ph740:                                        ; preds = %.preheader, %ZS_HashCache_update.exit.i
  %.0.i18737 = phi ptr [ %i.ajv, %ZS_HashCache_update.exit.i ], [ %i.oh, %.preheader ] ; 7 uses
  %i.agv = ptrtoint ptr %.0.i18737 to i64
  %i.agw = sub i64 %i.agv, %i.ac
  %i.agx = lshr i64 %i.agw, %i.ae
  %i.agy = and i64 %i.agx, 15                     ; 5 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.agy
  %i.aha = getelementptr inbounds nuw i8, ptr %.0.i18737, i64 %i.kc ; 16 uses
  %i.ahb = icmp ult ptr %i.aha, %i.aa             ; 2 uses
  br i1 %5, label %bb.cd, label %.thread439

bb.cd:                                            ; preds = %.lr.ph740
  br i1 %i.ahb, label %bb.ce, label %bb.cv

.thread439:                                       ; preds = %.lr.ph740
  br i1 %i.ahb, label %bb.ce, label %.thread441

.thread441:                                       ; preds = %.thread439
  %i.ahc = xor i64 %i.agy, 8
  br label %ZS_HashCache_update.exit.i

bb.ce:                                            ; preds = %.thread439, %bb.cd
  switch i32 %.0.i67, label %bb.cm [
    i32 16, label %bb.cl
    i32 12, label %bb.ck
    i32 8, label %bb.cj
    i32 4, label %bb.cf
    i32 5, label %bb.cg
    i32 6, label %bb.ch
    i32 7, label %bb.ci
  ]

bb.cf:                                            ; preds = %bb.ce
  %.val23.i229 = load i32, ptr %i.aha, align 1
  %i.ahd = mul i32 %.val23.i229, -1640531535
  %i.ahe = lshr i32 %i.ahd, %i.kf
  %i.ahf = zext i32 %i.ahe to i64
  br label %ZL_hashPtr.exit233

bb.cg:                                            ; preds = %bb.ce
  %.val24.i228 = load i64, ptr %i.aha, align 1
  %i.ahg = mul i64 %.val24.i228, -3523014627271114752
  %i.ahh = lshr i64 %i.ahg, %i.ke
  br label %ZL_hashPtr.exit233

bb.ch:                                            ; preds = %bb.ce
  %.val25.i227 = load i64, ptr %i.aha, align 1
  %i.ahi = mul i64 %.val25.i227, -3523014627193847808
  %i.ahj = lshr i64 %i.ahi, %i.ke
  br label %ZL_hashPtr.exit233

bb.ci:                                            ; preds = %bb.ce
  %.val26.i226 = load i64, ptr %i.aha, align 1
  %i.ahk = mul i64 %.val26.i226, -3523014627193167104
  %i.ahl = lshr i64 %i.ahk, %i.ke
  br label %ZL_hashPtr.exit233

bb.cj:                                            ; preds = %bb.ce
  %.val28.i225 = load i64, ptr %i.aha, align 1
  %i.ahm = mul i64 %.val28.i225, -3523014627327384477
  %i.ahn = lshr i64 %i.ahm, %i.ke
  br label %ZL_hashPtr.exit233

bb.ck:                                            ; preds = %bb.ce
  %i.aho = getelementptr inbounds nuw i8, ptr %.0.i18737, i64 %i.kc
  %.val29.i223 = load i64, ptr %i.aha, align 1
  %i.ahp = getelementptr i8, ptr %i.aho, i64 8
  %.val30.i224 = load i32, ptr %i.ahp, align 1
  %i.ahq = zext i32 %.val30.i224 to i64
  %i.ahr = xor i64 %.val29.i223, %i.ahq
  %i.ahs = mul i64 %i.ahr, -3523014627327384477
  %i.aht = lshr i64 %i.ahs, %i.ke
  br label %ZL_hashPtr.exit233

bb.cl:                                            ; preds = %bb.ce
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0.i18737, i64 %i.kc
  %.val31.i220 = load i64, ptr %i.aha, align 1
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 8
  %.val32.i221 = load i64, ptr %i.ahv, align 1
  %i.ahw = xor i64 %.val32.i221, %.val31.i220
  %i.ahx = mul i64 %i.ahw, -3523014627327384477
  %i.ahy = lshr i64 %i.ahx, %i.ke
  br label %ZL_hashPtr.exit233

bb.cm:                                            ; preds = %bb.ce
  %.val27.i232 = load i64, ptr %i.aha, align 1
  %i.ahz = mul i64 %.val27.i232, -3523014627327384477
  %i.aia = lshr i64 %i.ahz, %i.ke
  br label %ZL_hashPtr.exit233

ZL_hashPtr.exit233:                               ; preds = %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm
  %.0.i222 = phi i64 [ %i.aia, %bb.cm ], [ %i.ahy, %bb.cl ], [ %i.ahn, %bb.cj ], [ %i.aht, %bb.ck ], [ %i.ahf, %bb.cf ], [ %i.ahh, %bb.cg ], [ %i.ahj, %bb.ch ], [ %i.ahl, %bb.ci ] ; 2 uses
  %i.aib = trunc i64 %.0.i222 to i32
  store i32 %i.aib, ptr %i.agz, align 4, !tbaa !22
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %.0.i222
  tail call void @llvm.prefetch.p0(ptr %i.aic, i32 0, i32 3, i32 1)
  br i1 %5, label %bb.cn, label %.thread438

.thread438:                                       ; preds = %ZL_hashPtr.exit233
  %i.aid = xor i64 %i.agy, 8
  br label %ZS_HashCache_update.exit.i

bb.cn:                                            ; preds = %ZL_hashPtr.exit233
  switch i32 %.0.i68, label %bb.cu [
    i32 16, label %bb.ct
    i32 2, label %bb.co
    i32 12, label %bb.cs
    i32 4, label %bb.cp
    i32 8, label %bb.cr
    i32 6, label %bb.cq
  ]

bb.co:                                            ; preds = %bb.cn
  %.val.i245 = load i16, ptr %i.aha, align 1
  %i.aie = zext i16 %.val.i245 to i32
  %i.aif = mul i32 %i.aie, -1480785920
  %i.aig = lshr i32 %i.aif, %i.ki
  %i.aih = zext i32 %i.aig to i64
  br label %.thread437

bb.cp:                                            ; preds = %bb.cn
  %.val23.i243 = load i32, ptr %i.aha, align 1
  %i.aii = mul i32 %.val23.i243, -1640531535
  %i.aij = lshr i32 %i.aii, %i.ki
  %i.aik = zext i32 %i.aij to i64
  br label %.thread437

bb.cq:                                            ; preds = %bb.cn
  %.val25.i241 = load i64, ptr %i.aha, align 1
  %i.ail = mul i64 %.val25.i241, -3523014627193847808
  %i.aim = lshr i64 %i.ail, %i.kh
  br label %.thread437

bb.cr:                                            ; preds = %bb.cn
  %.val28.i239 = load i64, ptr %i.aha, align 1
  %i.ain = mul i64 %.val28.i239, -3523014627327384477
  %i.aio = lshr i64 %i.ain, %i.kh
  br label %.thread437

bb.cs:                                            ; preds = %bb.cn
  %i.aip = getelementptr inbounds nuw i8, ptr %.0.i18737, i64 %i.kc
  %.val29.i237 = load i64, ptr %i.aha, align 1
  %i.aiq = getelementptr i8, ptr %i.aip, i64 8
  %.val30.i238 = load i32, ptr %i.aiq, align 1
  %i.air = zext i32 %.val30.i238 to i64
  %i.ais = xor i64 %.val29.i237, %i.air
  %i.ait = mul i64 %i.ais, -3523014627327384477
  %i.aiu = lshr i64 %i.ait, %i.kh
  br label %.thread437

bb.ct:                                            ; preds = %bb.cn
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0.i18737, i64 %i.kc
  %.val31.i234 = load i64, ptr %i.aha, align 1
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 8
  %.val32.i235 = load i64, ptr %i.aiw, align 1
  %i.aix = xor i64 %.val32.i235, %.val31.i234
  %i.aiy = mul i64 %i.aix, -3523014627327384477
  %i.aiz = lshr i64 %i.aiy, %i.kh
  br label %.thread437

bb.cu:                                            ; preds = %bb.cn
  %.val27.i246 = load i64, ptr %i.aha, align 1
  %i.aja = mul i64 %.val27.i246, -3523014627327384477
  %i.ajb = lshr i64 %i.aja, %i.kh
  br label %.thread437

.thread437:                                       ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %.0.i236 = phi i64 [ %i.ajb, %bb.cu ], [ %i.aiz, %bb.ct ], [ %i.aih, %bb.co ], [ %i.aiu, %bb.cs ], [ %i.aik, %bb.cp ], [ %i.aio, %bb.cr ], [ %i.aim, %bb.cq ] ; 2 uses
  %i.ajc = trunc i64 %.0.i236 to i32
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.agy
  store i32 %i.ajc, ptr %i.ajd, align 4, !tbaa !22
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %.0.i236
  tail call void @llvm.prefetch.p0(ptr %i.aje, i32 0, i32 3, i32 1)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cd, %.thread437
  %i.ajf = xor i64 %i.agy, 8                      ; 2 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ajf
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !22
  %i.aji = zext i32 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0.copyload, i64 %i.aji
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !22
  %i.ajl = zext i32 %i.ajk to i64
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ajl
  tail call void @llvm.prefetch.p0(ptr %i.ajm, i32 0, i32 3, i32 1)
  br label %ZS_HashCache_update.exit.i

ZS_HashCache_update.exit.i:                       ; preds = %.thread441, %.thread438, %bb.cv
  %i.ajn = phi i64 [ %i.ajf, %bb.cv ], [ %i.ahc, %.thread441 ], [ %i.aid, %.thread438 ]
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ajn
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !22
  %i.ajq = zext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0.copyload, i64 %i.ajq
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !22
  %i.ajt = zext i32 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ajt
  tail call void @llvm.prefetch.p0(ptr %i.aju, i32 0, i32 3, i32 1)
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0.i18737, i64 %i.jz ; 3 uses
  store ptr %i.ajv, ptr %i.ka, align 8, !tbaa !37
  %i.ajw = icmp ult ptr %i.ajv, %i.sb
  br i1 %i.ajw, label %.lr.ph740, label %ZS_HashCache_skip.exit, !llvm.loop !6

ZS_HashCache_skip.exit:                           ; preds = %ZS_HashCache_update.exit.i, %bb.cc, %bb.cb, %.preheader, %ZS_seqStore_store.exit, %bb.bf, %bb.av
  %.5.i = phi ptr [ %i.oh, %bb.av ], [ %i.sb, %ZS_seqStore_store.exit ], [ %i.sb, %.preheader ], [ %i.sb, %bb.bf ], [ %i.sb, %bb.cc ], [ %i.sb, %bb.cb ], [ %i.sb, %ZS_HashCache_update.exit.i ] ; 2 uses
  %.1133.i = phi ptr [ %.0132.i742, %bb.av ], [ %i.sb, %ZS_seqStore_store.exit ], [ %i.sb, %.preheader ], [ %i.sb, %bb.bf ], [ %i.sb, %bb.cc ], [ %i.sb, %bb.cb ], [ %i.sb, %ZS_HashCache_update.exit.i ] ; 2 uses
  %i.ajx = icmp ult ptr %.5.i, %i.f
  br i1 %i.ajx, label %.preheader447, label %ZS_tokenLzMatchFinder_parseT.exit

ZS_tokenLzMatchFinder_parseT.exit:                ; preds = %ZS_HashCache_skip.exit, %ZS_HashCache_init.exit.preheader
  %.0132.i.lcssa = phi ptr [ %2, %ZS_HashCache_init.exit.preheader ], [ %.1133.i, %ZS_HashCache_skip.exit ] ; 2 uses
  %i.ajy = ptrtoint ptr %i.b to i64
  %i.ajz = ptrtoint ptr %.0132.i.lcssa to i64
  %i.aka = sub i64 %i.ajy, %i.ajz                 ; 3 uses
  %i.akb = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !22
  %i.akc = icmp sgt i32 %i.akb, 8191
  br i1 %i.akc, label %bb.cw, label %ZS_seqStore_storeLastLiterals.exit

bb.cw:                                            ; preds = %ZS_tokenLzMatchFinder_parseT.exit
  %i.akd = trunc i64 %i.aka to i32
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_seqStore_storeLastLiterals, i32 noundef 98, ptr noundef nonnull @.str.3, i32 noundef %i.akd) #7
  br label %ZS_seqStore_storeLastLiterals.exit

ZS_seqStore_storeLastLiterals.exit:               ; preds = %ZS_tokenLzMatchFinder_parseT.exit, %bb.cw
  %i.ake = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.akf, ptr readonly align 1 %.0132.i.lcssa, i64 %i.aka, i1 false)
  %i.akg = load ptr, ptr %i.ake, align 8, !tbaa !42
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 %i.aka
  store ptr %i.akh, ptr %i.ake, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #5

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !35}
!1 = distinct !{!1, !35}
!2 = distinct !{!2, !35}
!3 = distinct !{!3, !35}
!4 = distinct !{!4, !35}
!5 = distinct !{!5, !35}
!6 = distinct !{!6, !35}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"_Bool", !14, i64 0}
!19 = !{!"any pointer", !14, i64 0}
!20 = !{!"", !19, i64 0, !19, i64 8}
!21 = !{!"", !18, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !18, i64 24, !18, i64 25, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !18, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !20, i64 96}
!22 = !{!15, !15, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!"", !19, i64 0}
!26 = !{!"p1 int", !19, i64 0}
!27 = !{!"", !26, i64 0, !15, i64 8, !15, i64 12}
!28 = !{!"", !25, i64 0, !27, i64 8, !27, i64 24, !21, i64 40}
!29 = !{!25, !19, i64 0}
!30 = !{!"p1 omnipotent char", !19, i64 0}
!31 = !{!"", !30, i64 0, !30, i64 8, !30, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!32 = !{!31, !30, i64 8}
!33 = !{!31, !15, i64 28}
!34 = !{!26, !26, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"", !14, i64 0, !14, i64 64, !30, i64 128}
!37 = !{!36, !30, i64 128}
!38 = !{!"", !30, i64 0, !30, i64 8, !30, i64 16}
!39 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!40 = !{!"long", !14, i64 0}
!41 = !{!"", !38, i64 0, !39, i64 24, !40, i64 48}
!42 = !{!41, !30, i64 8}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = !{!41, !19, i64 32}
!45 = !{!21, !15, i64 76}
!46 = !{!21, !19, i64 96}
!47 = !{!21, !19, i64 104}
!48 = !{!18, !18, i64 0}
!49 = !{!19, !19, i64 0}
!50 = !{i64 0, i64 1, !48, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 1, !48, i64 25, i64 1, !48, i64 28, i64 4, !22, i64 32, i64 4, !22, i64 36, i64 4, !22, i64 40, i64 4, !22, i64 44, i64 4, !22, i64 48, i64 4, !22, i64 52, i64 4, !22, i64 56, i64 1, !48, i64 60, i64 4, !22, i64 64, i64 4, !22, i64 68, i64 4, !22, i64 72, i64 4, !22, i64 76, i64 4, !22, i64 80, i64 4, !22, i64 84, i64 4, !22, i64 88, i64 4, !22, i64 96, i64 8, !49, i64 104, i64 8, !49}
!51 = !{!21, !15, i64 48}
!52 = !{!21, !18, i64 56}
!53 = !{!28, !19, i64 0}
!54 = !{!28, !15, i64 116}
!55 = !{!28, !18, i64 96}
end_hunk_3

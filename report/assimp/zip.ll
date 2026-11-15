Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 56
begin_hunk_0_@tdefl_compress_block:bb.a
bb.en:                                            ; preds = %.lr.ph139.i
  %i.aou = trunc i32 %i.aoq to i8
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 1
  store ptr %i.aov, ptr %i.aki, align 8
  store i8 %i.aou, ptr %i.aos, align 1
  %.pre175.i = load ptr, ptr %i.aki, align 8
  %.pre177.i = load ptr, ptr %i.akj, align 8
  %.pre179.i = load i32, ptr %i.akh, align 8
  %.pre180.i = load i32, ptr %i.akg, align 4
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.lr.ph139.i
  %i.aow = phi i32 [ %.pre180.i, %bb.en ], [ %i.aop, %.lr.ph139.i ]
  %i.aox = phi i32 [ %.pre179.i, %bb.en ], [ %i.aoq, %.lr.ph139.i ]
  %i.aoy = phi ptr [ %.pre177.i, %bb.en ], [ %i.aor, %.lr.ph139.i ]
  %i.aoz = phi ptr [ %.pre175.i, %bb.en ], [ %i.aos, %.lr.ph139.i ]
  %i.apa = lshr i32 %i.aox, 8                     ; 3 uses
  store i32 %i.apa, ptr %i.akh, align 8
  %i.apb = add i32 %i.aow, -8                     ; 4 uses
  store i32 %i.apb, ptr %i.akg, align 4
  %i.apc = icmp ugt i32 %i.apb, 7
  br i1 %i.apc, label %.lr.ph139.i, label %.loopexit.i8

bb.ep:                                            ; preds = %bb.ef
  %i.apd = getelementptr inbounds nuw i8, ptr %.1.i5, i64 1 ; 2 uses
  %i.ape = load i8, ptr %.1.i5, align 1
  %i.apf = zext i8 %i.ape to i64                  ; 2 uses
  %i.apg = getelementptr inbounds nuw [2 x i8], ptr %i.ake, i64 %i.apf
  %i.aph = load i16, ptr %i.apg, align 2
  %i.api = zext i16 %i.aph to i32
  %i.apj = getelementptr inbounds nuw i8, ptr %i.akf, i64 %i.apf
  %i.apk = load i8, ptr %i.apj, align 1
  %i.apl = zext i8 %i.apk to i32
  %i.apm = shl i32 %i.api, %i.akn
  %i.apn = or i32 %i.akm, %i.apm                  ; 3 uses
  store i32 %i.apn, ptr %i.akh, align 8
  %i.apo = add i32 %i.akn, %i.apl                 ; 4 uses
  store i32 %i.apo, ptr %i.akg, align 4
  %i.app = icmp ugt i32 %i.apo, 7
  br i1 %i.app, label %.lr.ph141.preheader.i, label %.loopexit.i8

.lr.ph141.preheader.i:                            ; preds = %bb.ep
  %.pre182.i = load ptr, ptr %i.aki, align 8
  %.pre184.i = load ptr, ptr %i.akj, align 8
  br label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %bb.er, %.lr.ph141.preheader.i
  %i.apq = phi i32 [ %i.apo, %.lr.ph141.preheader.i ], [ %i.aqc, %bb.er ]
  %i.apr = phi i32 [ %i.apn, %.lr.ph141.preheader.i ], [ %i.aqb, %bb.er ] ; 2 uses
  %i.aps = phi ptr [ %.pre184.i, %.lr.ph141.preheader.i ], [ %i.apz, %bb.er ] ; 2 uses
  %i.apt = phi ptr [ %.pre182.i, %.lr.ph141.preheader.i ], [ %i.aqa, %bb.er ] ; 4 uses
  %i.apu = icmp ult ptr %i.apt, %i.aps
  br i1 %i.apu, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.lr.ph141.i
  %i.apv = trunc i32 %i.apr to i8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apt, i64 1
  store ptr %i.apw, ptr %i.aki, align 8
  store i8 %i.apv, ptr %i.apt, align 1
  %.pre181.i = load ptr, ptr %i.aki, align 8
  %.pre183.i = load ptr, ptr %i.akj, align 8
  %.pre185.i = load i32, ptr %i.akh, align 8
  %.pre186.i = load i32, ptr %i.akg, align 4
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.lr.ph141.i
  %i.apx = phi i32 [ %.pre186.i, %bb.eq ], [ %i.apq, %.lr.ph141.i ]
  %i.apy = phi i32 [ %.pre185.i, %bb.eq ], [ %i.apr, %.lr.ph141.i ]
  %i.apz = phi ptr [ %.pre183.i, %bb.eq ], [ %i.aps, %.lr.ph141.i ]
  %i.aqa = phi ptr [ %.pre181.i, %bb.eq ], [ %i.apt, %.lr.ph141.i ]
  %i.aqb = lshr i32 %i.apy, 8                     ; 3 uses
  store i32 %i.aqb, ptr %i.akh, align 8
  %i.aqc = add i32 %i.apx, -8                     ; 4 uses
  store i32 %i.aqc, ptr %i.akg, align 4
  %i.aqd = icmp ugt i32 %i.aqc, 7
  br i1 %i.aqd, label %.lr.ph141.i, label %.loopexit.i8

.loopexit.i8:                                     ; preds = %bb.eo, %bb.er, %bb.ep, %._crit_edge136.i
  %i.aqe = phi i32 [ %i.apn, %bb.ep ], [ %i.aom, %._crit_edge136.i ], [ %i.aqb, %bb.er ], [ %i.apa, %bb.eo ] ; 2 uses
  %i.aqf = phi i32 [ %i.apo, %bb.ep ], [ %i.aon, %._crit_edge136.i ], [ %i.aqc, %bb.er ], [ %i.apb, %bb.eo ] ; 2 uses
  %.2.i = phi ptr [ %i.apd, %bb.ep ], [ %i.alb, %._crit_edge136.i ], [ %i.apd, %bb.er ], [ %i.alb, %bb.eo ] ; 2 uses
  %i.aqg = lshr i32 %.1113.i, 1
  %i.aqh = load ptr, ptr %i.akb, align 8
  %i.aqi = icmp ult ptr %.2.i, %i.aqh
  br i1 %i.aqi, label %bb.ed, label %._crit_edge146.i

._crit_edge146.i:                                 ; preds = %.loopexit.i8, %tdefl_start_static_block.exit
  %i.aqj = phi i32 [ %.pre189.i, %tdefl_start_static_block.exit ], [ %i.aqe, %.loopexit.i8 ]
  %i.aqk = phi i32 [ %.pre187.i, %tdefl_start_static_block.exit ], [ %i.aqf, %.loopexit.i8 ] ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 35466
  %i.aqm = load i16, ptr %i.aql, align 2
  %i.aqn = zext i16 %i.aqm to i32
  %i.aqo = getelementptr inbounds nuw i8, ptr %0, i64 36938
  %i.aqp = load i8, ptr %i.aqo, align 2
  %i.aqq = zext i8 %i.aqp to i32                  ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.aqs = shl nuw nsw i32 %i.aqn, %i.aqk
  %i.aqt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aqu = or i32 %i.aqs, %i.aqj                  ; 3 uses
  store i32 %i.aqu, ptr %i.aqt, align 8
  %i.aqv = add nuw nsw i32 %i.aqk, %i.aqq         ; 5 uses
  store i32 %i.aqv, ptr %i.aqr, align 4
  %i.aqw = icmp samesign ugt i32 %i.aqv, 7
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %i.aqw, label %.lr.ph148.i, label %._crit_edge146.._crit_edge149_crit_edge.i

._crit_edge146.._crit_edge149_crit_edge.i:        ; preds = %._crit_edge146.i
  %.pre197.i = load ptr, ptr %i.aqx, align 8
  %.phi.trans.insert198.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre199.i = load ptr, ptr %.phi.trans.insert198.i, align 8
  br label %tdefl_compress_lz_codes.exit

.lr.ph148.i:                                      ; preds = %._crit_edge146.i
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aqz = load ptr, ptr %i.aqx, align 8          ; 3 uses
  %i.ara = load ptr, ptr %i.aqy, align 8          ; 3 uses
  %i.arb = icmp ult ptr %i.aqz, %i.ara
  br i1 %i.arb, label %.lr.ph148.split.i, label %.lr.ph148.split.us.i.preheader

.lr.ph148.split.us.i.preheader:                   ; preds = %.lr.ph148.i
  %i.arc = add i32 %i.aqk, %i.aqq
  %i.ard = add i32 %i.arc, -8                     ; 2 uses
  %i.are = lshr i32 %i.ard, 3
  %i.arf = add nuw nsw i32 %i.are, 1
  %xtraiter359 = and i32 %i.arf, 7                ; 2 uses
  %lcmp.mod360.not = icmp eq i32 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %.lr.ph148.split.us.i.prol.loopexit, label %.lr.ph148.split.us.i.prol

.lr.ph148.split.us.i.prol:                        ; preds = %.lr.ph148.split.us.i.preheader, %.lr.ph148.split.us.i.prol
  %i.arg = phi i32 [ %i.arj, %.lr.ph148.split.us.i.prol ], [ %i.aqv, %.lr.ph148.split.us.i.preheader ]
  %i.arh = phi i32 [ %i.ari, %.lr.ph148.split.us.i.prol ], [ %i.aqu, %.lr.ph148.split.us.i.preheader ]
  %prol.iter361 = phi i32 [ %prol.iter361.next, %.lr.ph148.split.us.i.prol ], [ 0, %.lr.ph148.split.us.i.preheader ]
  %i.ari = lshr i32 %i.arh, 8                     ; 2 uses
  %i.arj = add i32 %i.arg, -8                     ; 3 uses
  %prol.iter361.next = add i32 %prol.iter361, 1   ; 2 uses
  %prol.iter361.cmp.not = icmp eq i32 %prol.iter361.next, %xtraiter359
  br i1 %prol.iter361.cmp.not, label %.lr.ph148.split.us.i.prol.loopexit, label %.lr.ph148.split.us.i.prol, !llvm.loop !319

.lr.ph148.split.us.i.prol.loopexit:               ; preds = %.lr.ph148.split.us.i.prol, %.lr.ph148.split.us.i.preheader
  %.unr362 = phi i32 [ %i.aqv, %.lr.ph148.split.us.i.preheader ], [ %i.arj, %.lr.ph148.split.us.i.prol ]
  %.lcssa295.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.ari, %.lr.ph148.split.us.i.prol ]
  %.lcssa294.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.arj, %.lr.ph148.split.us.i.prol ]
  %i.ark = icmp ult i32 %i.ard, 56
  br i1 %i.ark, label %._crit_edge149.split.us.i, label %.lr.ph148.split.us.i

.lr.ph148.split.us.i:                             ; preds = %.lr.ph148.split.us.i.prol.loopexit, %.lr.ph148.split.us.i
  %i.arl = phi i32 [ %i.arm, %.lr.ph148.split.us.i ], [ %.unr362, %.lr.ph148.split.us.i.prol.loopexit ]
  %i.arm = add i32 %i.arl, -64                    ; 3 uses
  %i.arn = icmp ugt i32 %i.arm, 7
  br i1 %i.arn, label %.lr.ph148.split.us.i, label %._crit_edge149.split.us.i

._crit_edge149.split.us.i:                        ; preds = %.lr.ph148.split.us.i, %.lr.ph148.split.us.i.prol.loopexit
  %.lcssa295 = phi i32 [ %.lcssa295.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ 0, %.lr.ph148.split.us.i ]
  %.lcssa294 = phi i32 [ %.lcssa294.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ %i.arm, %.lr.ph148.split.us.i ]
  store i32 %.lcssa295, ptr %i.aqt, align 8
  store i32 %.lcssa294, ptr %i.aqr, align 4
  br label %tdefl_compress_lz_codes.exit

.lr.ph148.split.i:                                ; preds = %.lr.ph148.i, %bb.et
  %i.aro = phi i32 [ %i.asa, %bb.et ], [ %i.aqv, %.lr.ph148.i ]
  %i.arp = phi i32 [ %i.arz, %bb.et ], [ %i.aqu, %.lr.ph148.i ] ; 2 uses
  %i.arq = phi ptr [ %i.arx, %bb.et ], [ %i.ara, %.lr.ph148.i ] ; 2 uses
  %i.arr = phi ptr [ %i.ary, %bb.et ], [ %i.aqz, %.lr.ph148.i ] ; 4 uses
  %i.ars = icmp ult ptr %i.arr, %i.arq
  br i1 %i.ars, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.lr.ph148.split.i
  %i.art = trunc i32 %i.arp to i8
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 1
  store ptr %i.aru, ptr %i.aqx, align 8
  store i8 %i.art, ptr %i.arr, align 1
  %.pre190.i = load ptr, ptr %i.aqx, align 8
  %.pre192.i = load ptr, ptr %i.aqy, align 8
  %.pre194.i = load i32, ptr %i.aqt, align 8
  %.pre195.i = load i32, ptr %i.aqr, align 4
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.lr.ph148.split.i
  %i.arv = phi i32 [ %.pre195.i, %bb.es ], [ %i.aro, %.lr.ph148.split.i ]
  %i.arw = phi i32 [ %.pre194.i, %bb.es ], [ %i.arp, %.lr.ph148.split.i ]
  %i.arx = phi ptr [ %.pre192.i, %bb.es ], [ %i.arq, %.lr.ph148.split.i ] ; 2 uses
  %i.ary = phi ptr [ %.pre190.i, %bb.es ], [ %i.arr, %.lr.ph148.split.i ] ; 2 uses
  %i.arz = lshr i32 %i.arw, 8                     ; 2 uses
  store i32 %i.arz, ptr %i.aqt, align 8
  %i.asa = add i32 %i.arv, -8                     ; 3 uses
  store i32 %i.asa, ptr %i.aqr, align 4
  %i.asb = icmp ugt i32 %i.asa, 7
  br i1 %i.asb, label %.lr.ph148.split.i, label %tdefl_compress_lz_codes.exit, !llvm.loop !320

tdefl_compress_lz_codes.exit:                     ; preds = %bb.et, %._crit_edge146.._crit_edge149_crit_edge.i, %._crit_edge149.split.us.i
  %i.asc = phi ptr [ %.pre199.i, %._crit_edge146.._crit_edge149_crit_edge.i ], [ %i.ara, %._crit_edge149.split.us.i ], [ %i.arx, %bb.et ]
  %i.asd = phi ptr [ %.pre197.i, %._crit_edge146.._crit_edge149_crit_edge.i ], [ %i.aqz, %._crit_edge149.split.us.i ], [ %i.ary, %bb.et ]
  %i.ase = icmp ult ptr %i.asd, %i.asc
  %i.asf = zext i1 %i.ase to i32
  ret i32 %i.asf
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tdefl_optimize_huffman_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 19, 289) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #22 !guid !331 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 16 uses
  %i.b = alloca [256 x i32], align 16             ; 15 uses
  %i.c = alloca [33 x i32], align 16              ; 32 uses
  %i.d = alloca [33 x i32], align 16              ; 9 uses
  %5 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 9 uses
  %6 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.new, label %.preheader97

.preheader97:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %i.f ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 508
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader97
  %indvars.iv = phi i64 [ 0, %.preheader97 ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader97 ], [ %niter.next.3, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.aj = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds nuw [576 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %wide.trip.count128 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter195 = and i64 %wide.trip.count128, 1
  %unroll_iter200 = and i64 %wide.trip.count128, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %indvars.iv125 = phi i64 [ 0, %.new ], [ %indvars.iv.next126.1, %bb.g ] ; 4 uses
  %.068104 = phi i32 [ 0, %.new ], [ %.1.1, %bb.g ] ; 3 uses
  %niter201 = phi i64 [ 0, %.new ], [ %niter201.next.1, %bb.g ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv125
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.068104 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4
  %i.ap = trunc i64 %indvars.iv125 to i16
  %i.aq = add nsw i32 %.068104, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.aq, %bb.d ], [ %.068104, %bb.c ] ; 3 uses
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next126
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.1 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4
  %i.aw = trunc i64 %indvars.iv.next126 to i16
  %i.ax = add nsw i32 %.1, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.ax, %bb.f ], [ %.1, %bb.e ] ; 5 uses
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 3 uses
  %niter201.next.1 = add nuw nsw i64 %niter201, 2 ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %.unr-lcssa, label %bb.c

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %.epilog-lcssa, label %.epil.preheader194

.epil.preheader194:                               ; preds = %.unr-lcssa
  %lcmp.mod199 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next126.1
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader194
  %i.bb = sext i32 %.1.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4
  %i.bd = trunc i64 %indvars.iv.next126.1 to i16
  %i.be = add nsw i32 %.1.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader194, %bb.h, %.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.1.1, %.epil.preheader194 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.epilog-lcssa
  %wide.trip.count.i = zext i32 %.1.lcssa to i64  ; 7 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter202 = and i64 %wide.trip.count.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter206 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader45.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod204.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod204.not, label %.preheader45.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader45.i.unr-lcssa ]
  %lcmp.mod205 = trunc i32 %.1.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod205)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.bj = load i16, ptr %i.bi, align 4
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16
  %i.bw = freeze i32 %.pre.i
  %7 = icmp eq i32 %.1.lcssa, %i.bw
  %spec.select.i = select i1 %7, i64 1, i64 2
  %xtraiter208 = and i64 %wide.trip.count.i, 1
  %8 = icmp eq i64 %i.bg, 0
  %unroll_iter212 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod210.not.a = icmp eq i64 %xtraiter208, 0
  %lcmp.mod211 = trunc i32 %.1.lcssa to i1
  br label %.critedge.preheader.split.split.us.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter207 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter207.next.1, %.lr.ph.i ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = zext i16 %i.by to i32                   ; 2 uses
  %i.ca = and i32 %i.bz, 255
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4
  %i.cf = lshr i32 %i.bz, 8
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1024 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i16, ptr %i.cm, align 4
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  %i.cp = and i32 %i.co, 255
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4
  %i.cu = lshr i32 %i.co, 8
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1024 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter207.next.1 = add i64 %niter207, 2         ; 2 uses
  %niter207.ncmp.1 = icmp eq i64 %niter207.next.1, %unroll_iter206
  br i1 %niter207.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i

.critedge.preheader.split.split.us.i:             ; preds = %._crit_edge.us.i.a, %.preheader45.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next69.i, %._crit_edge.us.i.a ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %19, %._crit_edge.us.i.a ] ; 4 uses
  %.03953.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i.a ] ; 47 uses
  %.04052.us.i = phi ptr [ %5, %.preheader45.i ], [ %.03953.us.i, %._crit_edge.us.i.a ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv68.i, 10
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split.split.us.i
  %indvars.iv59.i.a = phi i64 [ 0, %.critedge.preheader.split.split.us.i ], [ %indvars.iv.next60.i.3.a, %bb.i ] ; 6 uses
  %.03748.us.i.a = phi i32 [ 0, %.critedge.preheader.split.split.us.i ], [ %i.dp, %bb.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv59.i.a
  store i32 %.03748.us.i.a, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv59.i.a
  %i.dc = load i32, ptr %i.db, align 16
  %i.dd = add i32 %i.dc, %.03748.us.i.a           ; 2 uses
  %indvars.iv.next60.i.a = or disjoint i64 %indvars.iv59.i.a, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i.a
  store i32 %i.dd, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next60.i.a
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = add i32 %i.dg, %i.dd                    ; 2 uses
  %indvars.iv.next60.i.1.a = or disjoint i64 %indvars.iv59.i.a, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i.1.a
  store i32 %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next60.i.1.a
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = add i32 %i.dk, %i.dh                    ; 2 uses
  %indvars.iv.next60.i.2.a = or disjoint i64 %indvars.iv59.i.a, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i.2.a
  store i32 %i.dl, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next60.i.2.a
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = add i32 %i.do, %i.dl
  %indvars.iv.next60.i.3.a = add nuw nsw i64 %indvars.iv59.i.a, 4 ; 2 uses
  %exitcond62.not.i.3.a = icmp eq i64 %indvars.iv.next60.i.3.a, 256
  br i1 %exitcond62.not.i.3.a, label %.preheader.us.i.preheader.a, label %bb.i

.preheader.us.i.preheader.a:                      ; preds = %bb.i
  br i1 %8, label %.preheader.us.i.epil.preheader, label %.preheader.us.i.a

.preheader.us.i.a:                                ; preds = %.preheader.us.i.preheader.a, %.preheader.us.i.a
  %indvars.iv63.i.a = phi i64 [ %indvars.iv.next64.i.1.a, %.preheader.us.i.a ], [ 0, %.preheader.us.i.preheader.a ] ; 3 uses
  %niter213.a = phi i64 [ %niter213.next.1.a, %.preheader.us.i.a ], [ 0, %.preheader.us.i.preheader.a ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i.a ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 8
  %10 = zext i16 %i.dr to i32
  %11 = lshr i32 %10, %.03854.us.i
  %12 = and i32 %11, 255
  %i.ds = zext nneg i32 %12 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4            ; 2 uses
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.dw
  %i.dy = load i32, ptr %i.dq, align 8
  store i32 %i.dy, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 4
  %13 = zext i16 %i.eb to i32
  %14 = lshr i32 %13, %.03854.us.i
  %15 = and i32 %14, 255
  %i.ec = zext nneg i32 %15 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 4
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.eg
  %i.ei = load i32, ptr %i.ea, align 4
  store i32 %i.ei, ptr %i.eh, align 4
  %indvars.iv.next64.i.1.a = add nuw nsw i64 %indvars.iv63.i.a, 2 ; 2 uses
  %niter213.next.1.a = add i64 %niter213.a, 2     ; 2 uses
  %niter213.ncmp.1.a = icmp eq i64 %niter213.next.1.a, %unroll_iter212
  br i1 %niter213.ncmp.1.a, label %._crit_edge.us.i.unr-lcssa.a, label %.preheader.us.i.a

._crit_edge.us.i.unr-lcssa.a:                     ; preds = %.preheader.us.i.a
  br i1 %lcmp.mod210.not.a, label %._crit_edge.us.i.a, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa.a, %.preheader.us.i.preheader.a
  %indvars.iv63.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader.a ], [ %indvars.iv.next64.i.1.a, %._crit_edge.us.i.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod211)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i.epil.init ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 4
  %16 = zext i16 %i.ek to i32
  %17 = lshr i32 %16, %.03854.us.i
  %18 = and i32 %17, 255
  %i.el = zext nneg i32 %18 to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ep
  %i.er = load i32, ptr %i.ej, align 4
  store i32 %i.er, ptr %i.eq, align 4
  br label %._crit_edge.us.i.a

._crit_edge.us.i.a:                               ; preds = %._crit_edge.us.i.unr-lcssa.a, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %19 = add nuw nsw i32 %.03854.us.i, 8
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %spec.select.i
  br i1 %exitcond72.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split.split.us.i

.critedge.preheader.split.split.i:                ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  br label %bb.j

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split.split.i
  %indvars.iv73.i = phi i64 [ 0, %.critedge.preheader.split.split.i ], [ %indvars.iv.next74.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split.split.i ], [ %i.fh, %bb.j ] ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv73.i
  store i32 %.03748.i, ptr %i.es, align 16
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv73.i
  %i.eu = load i32, ptr %i.et, align 16
  %i.ev = add i32 %i.eu, %.03748.i                ; 2 uses
  %indvars.iv.next74.i = or disjoint i64 %indvars.iv73.i, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i
  store i32 %i.ev, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = add i32 %i.ey, %i.ev                    ; 2 uses
  %indvars.iv.next74.i.1 = or disjoint i64 %indvars.iv73.i, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.1
  store i32 %i.ez, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.1
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = add i32 %i.fc, %i.ez                    ; 2 uses
  %indvars.iv.next74.i.2 = or disjoint i64 %indvars.iv73.i, 3 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.2
  store i32 %i.fd, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.2
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = add i32 %i.fg, %i.fd
  %indvars.iv.next74.i.3 = add nuw nsw i64 %indvars.iv73.i, 4 ; 2 uses
  %exitcond76.not.i.3 = icmp eq i64 %indvars.iv.next74.i.3, 256
  br i1 %exitcond76.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  switch i32 %.1.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread168
  ]

tdefl_calculate_minimum_redundancy.exit.thread168: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.03953.us.i, align 2
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %20 = getelementptr inbounds nuw i8, ptr %.03953.us.i, i64 4
  %i.fi = load i16, ptr %20, align 2
  %i.fj = load i16, ptr %.03953.us.i, align 2
  %i.fk = add i16 %i.fj, %i.fi
  store i16 %i.fk, ptr %.03953.us.i, align 2
  %i.fl = add i32 %.1.lcssa, -1                   ; 2 uses
  %i.fm = icmp sgt i32 %.1.lcssa, 2
  br i1 %i.fm, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.fn = add nsw i32 %.1.lcssa, -2               ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.fo
  store i16 0, ptr %i.fp, align 2
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fl to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.1.lcssa
  %i.fq = sext i32 %.08291.i to i64               ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.fq ; 2 uses
  %i.fs = load i16, ptr %i.fr, align 2            ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.ft = sext i32 %.07992.i to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2            ; 2 uses
  %i.fw = icmp ult i16 %i.fs, %i.fv
  br i1 %i.fw, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.fs, ptr %i.fx, align 2
  %i.fy = trunc i64 %indvars.iv.i85 to i16
  %i.fz = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.fy, ptr %i.fr, align 2
  %.pre = sext i32 %i.fz to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ga = add nsw i32 %.07992.i, 1
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.fv, ptr %i.gb, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.fq, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.fz, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.ga, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.1.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gc = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gc, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gd = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.ge = load i16, ptr %i.gd, align 2            ; 2 uses
  %i.gf = sext i32 %.180.i to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2            ; 2 uses
  %i.gi = icmp ult i16 %i.ge, %i.gh
  br i1 %i.gi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gj = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.ge, %bb.p ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2
  %i.gm = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.gn = add i16 %i.gl, %i.gj
  store i16 %i.gn, ptr %i.gk, align 2
  %i.go = trunc i64 %indvars.iv.i85 to i16
  %i.gp = add nsw i32 %.183.i, 1
  store i16 %i.go, ptr %i.gm, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.gq = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gh, %bb.p ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = add nsw i32 %.180.i, 1
  %i.gu = add i16 %i.gs, %i.gq
  store i16 %i.gu, ptr %i.gr, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.gp, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.gt, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84

._crit_edge.i:                                    ; preds = %bb.s
  %i.gv = add nsw i32 %.1.lcssa, -2               ; 3 uses
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.gw
  store i16 0, ptr %i.gx, align 2
  %i.gy = add nsw i32 %.1.lcssa, -3               ; 2 uses
  %i.gz = zext i32 %i.gy to i64                   ; 3 uses
  %i.ha = add nuw nsw i64 %i.gz, 1
  %xtraiter214 = and i64 %i.ha, 3                 ; 2 uses
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod215.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.gz, %._crit_edge.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2
  %i.hd = zext i16 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2
  %i.hg = add i16 %i.hf, 1
  store i16 %i.hg, ptr %i.hb, align 2
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter214
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !322

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.gz, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hh = icmp ult i32 %i.gy, 3
  br i1 %i.hh, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hj = load i16, ptr %i.hi, align 2
  %i.hk = zext i16 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2
  %i.hn = add i16 %i.hm, 1
  store i16 %i.hn, ptr %i.hi, align 2
  %i.ho = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.hp = getelementptr i8, ptr %i.ho, i64 -4     ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2
  %i.hv = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.hw = getelementptr i8, ptr %i.hv, i64 -8     ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2
  %i.ie = zext i16 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2
  %i.ih = add i16 %i.ig, 1
  store i16 %i.ih, ptr %i.ic, align 2
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.fn, %._crit_edge.thread.i ], [ %i.gv, %.lr.ph96.i ], [ %i.gv, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jk, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.jj, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
  %.2111.i = phi i32 [ %.3.lcssa.i, %._crit_edge108.i ], [ %i.fl, %.preheader.i81.preheader ] ; 2 uses
  %.385110.i = phi i32 [ %.4.lcssa.i, %._crit_edge108.i ], [ %.385110.i.ph, %.preheader.i81.preheader ] ; 5 uses
  %i.ii = icmp sgt i32 %.385110.i, -1
  br i1 %i.ii, label %.lr.ph99.preheader.i, label %.critedge.i

.lr.ph99.preheader.i:                             ; preds = %.preheader.i81
  %i.ij = add nuw i32 %.385110.i, 1
  br label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.t, %.lr.ph99.preheader.i
  %.198.i = phi i32 [ %i.ip, %bb.t ], [ 0, %.lr.ph99.preheader.i ] ; 3 uses
  %.497.i = phi i32 [ %i.iq, %bb.t ], [ %.385110.i, %.lr.ph99.preheader.i ] ; 3 uses
  %i.ik = zext nneg i32 %.497.i to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ik
  %i.im = load i16, ptr %i.il, align 2
  %i.in = zext i16 %i.im to i32
  %i.io = icmp eq i32 %.0113.i, %i.in
  br i1 %i.io, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph99.i
  %i.ip = add nuw i32 %.198.i, 1
  %i.iq = add nsw i32 %.497.i, -1
  %exitcond118.not.i = icmp eq i32 %.198.i, %.385110.i
  br i1 %exitcond118.not.i, label %.critedge.i, label %.lr.ph99.i

.critedge.i:                                      ; preds = %bb.t, %.lr.ph99.i, %.preheader.i81
  %.4.lcssa.i = phi i32 [ %.385110.i, %.preheader.i81 ], [ %.497.i, %.lr.ph99.i ], [ -1, %bb.t ]
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i81 ], [ %.198.i, %.lr.ph99.i ], [ %i.ij, %bb.t ] ; 6 uses
  %i.ir = icmp sgt i32 %.075112.i, %.1.lcssa.i
  br i1 %i.ir, label %.lr.ph107.i, label %._crit_edge108.i

.lr.ph107.i:                                      ; preds = %.critedge.i
  %i.is = trunc i32 %.0113.i to i16               ; 5 uses
  %i.it = sext i32 %.2111.i to i64                ; 2 uses
  %i.iu = sub i32 %.075112.i, %.1.lcssa.i
  %xtraiter216 = and i32 %i.iu, 3                 ; 2 uses
  %lcmp.mod217.not = icmp eq i32 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph107.i, %.prol.preheader
  %indvars.iv119.i.prol = phi i64 [ %indvars.iv.next120.i.prol, %.prol.preheader ], [ %i.it, %.lr.ph107.i ] ; 2 uses
  %.176106.i.prol = phi i32 [ %i.iw, %.prol.preheader ], [ %.075112.i, %.lr.ph107.i ]
  %prol.iter218 = phi i32 [ %prol.iter218.next, %.prol.preheader ], [ 0, %.lr.ph107.i ]
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv119.i.prol, -1 ; 3 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i.prol
  store i16 %i.is, ptr %i.iv, align 2
  %i.iw = add nsw i32 %.176106.i.prol, -1         ; 2 uses
  %prol.iter218.next = add i32 %prol.iter218, 1   ; 2 uses
  %prol.iter218.cmp.not = icmp eq i32 %prol.iter218.next, %xtraiter216
  br i1 %prol.iter218.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !323

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph107.i
  %indvars.iv119.i.unr = phi i64 [ %i.it, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %.176106.i.unr = phi i32 [ %.075112.i, %.lr.ph107.i ], [ %i.iw, %.prol.preheader ]
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %i.ix = sub i32 %.1.lcssa.i, %.075112.i
  %i.iy = icmp ugt i32 %i.ix, -4
  br i1 %i.iy, label %._crit_edge108.loopexit.i, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph107.i.new
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ], [ %indvars.iv119.i.unr, %.prol.loopexit ] ; 5 uses
  %.176106.i = phi i32 [ %i.jg, %.lr.ph107.i.new ], [ %.176106.i.unr, %.prol.loopexit ]
  %i.iz = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  store i16 %i.is, ptr %i.iz, align 2
  %i.ja = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jb = getelementptr i8, ptr %i.ja, i64 -4
  store i16 %i.is, ptr %i.jb, align 2
  %i.jc = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jd = getelementptr i8, ptr %i.jc, i64 -8
  store i16 %i.is, ptr %i.jd, align 2
  %indvars.iv.next120.i.3 = add nsw i64 %indvars.iv119.i, -4 ; 2 uses
  %i.je = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jf = getelementptr i8, ptr %i.je, i64 -12
  store i16 %i.is, ptr %i.jf, align 2
  %i.jg = add nsw i32 %.176106.i, -4              ; 2 uses
  %i.jh = icmp sgt i32 %i.jg, %.1.lcssa.i
  br i1 %i.jh, label %.lr.ph107.i.new, label %._crit_edge108.loopexit.i

._crit_edge108.loopexit.i:                        ; preds = %.lr.ph107.i.new, %.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ]
  %i.ji = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge108.i

._crit_edge108.i:                                 ; preds = %._crit_edge108.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.2111.i, %.critedge.i ], [ %i.ji, %._crit_edge108.loopexit.i ]
  %i.jj = shl nuw nsw i32 %.1.lcssa.i, 1
  %i.jk = add nuw nsw i32 %.0113.i, 1
  %.not89.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not89.i, label %tdefl_calculate_minimum_redundancy.exit, label %.preheader.i81

tdefl_calculate_minimum_redundancy.exit:          ; preds = %._crit_edge108.i
  %i.jl = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.jl, label %.lr.ph.preheader, label %tdefl_huffman_enforce_max_code_size.exit

.lr.ph.preheader:                                 ; preds = %tdefl_calculate_minimum_redundancy.exit.thread168, %tdefl_calculate_minimum_redundancy.exit
  %xtraiter219 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.jm = icmp ult i32 %.1.lcssa, 4
  br i1 %i.jm, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter223 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv130 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next131.3, %.lr.ph ] ; 5 uses
  %niter224 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter224.next.3, %.lr.ph ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv130
  %i.jo = load i16, ptr %i.jn, align 2
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jp ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = add nsw i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv130
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jv = load i16, ptr %i.ju, align 2
  %i.jw = zext i16 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jw ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jx, align 4
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv130
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = zext i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv130
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = zext i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4
  %indvars.iv.next131.3 = add nuw nsw i64 %indvars.iv130, 4 ; 2 uses
  %niter224.next.3 = add i64 %niter224, 4         ; 2 uses
  %niter224.ncmp.3 = icmp eq i64 %niter224.next.3, %unroll_iter223
  br i1 %niter224.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod221.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod221.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv130.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next131.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod222 = icmp ne i64 %xtraiter219, 0
  tail call void @llvm.assume(i1 %lcmp.mod222)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv130.epil = phi i64 [ %indvars.iv130.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next131.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter220 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter220.next, %.lr.ph.epil ]
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv130.epil
  %i.kp = load i16, ptr %i.ko, align 2
  %i.kq = zext i16 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kq ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4
  %i.kt = add nsw i32 %i.ks, 1
  store i32 %i.kt, ptr %i.kr, align 4
  %indvars.iv.next131.epil = add nuw nsw i64 %indvars.iv130.epil, 1
  %epil.iter220.next = add i64 %epil.iter220, 1   ; 2 uses
  %epil.iter220.cmp.not = icmp eq i64 %epil.iter220.next, %xtraiter219
  br i1 %epil.iter220.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !324

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.ku = icmp eq i32 %.1.lcssa, 1
  br i1 %i.ku, label %tdefl_huffman_enforce_max_code_size.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.kv = zext nneg i32 %3 to i64                 ; 11 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kv ; 5 uses
  %i.kx = sub nuw nsw i64 32, %i.kv               ; 2 uses
  %n.vec = and i64 %i.kx, 56                      ; 4 uses
  %i.ky = add nuw nsw i64 %n.vec, %i.kv
  %.promoted.i = load i32, ptr %i.kw, align 4
  %i.kz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kv ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 20
  %wide.load = load <4 x i32>, ptr %i.lb, align 4
  %wide.load184 = load <4 x i32>, ptr %i.lc, align 4 ; 2 uses
  %i.ld = add <4 x i32> %wide.load, %i.kz         ; 2 uses
  %i.le = icmp eq i64 %n.vec, 8
  br i1 %i.le, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.kv ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lh, align 4
  %wide.load184.1 = load <4 x i32>, ptr %i.li, align 4
  %i.lj = add <4 x i32> %wide.load.1, %i.ld       ; 2 uses
  %i.lk = add <4 x i32> %wide.load184.1, %wide.load184 ; 2 uses
  %i.ll = icmp eq i64 %n.vec, 16
  br i1 %i.ll, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.kv ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.lo, align 4
  %wide.load184.2 = load <4 x i32>, ptr %i.lp, align 4
  %i.lq = add <4 x i32> %wide.load.2, %i.lj
  %i.lr = add <4 x i32> %wide.load184.2, %i.lk
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa192 = phi <4 x i32> [ %i.ld, %.preheader35.i ], [ %i.lj, %vector.body.1 ], [ %i.lq, %vector.body.2 ]
  %.lcssa191 = phi <4 x i32> [ %wide.load184, %.preheader35.i ], [ %i.lk, %vector.body.1 ], [ %i.lr, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa191, %.lcssa192
  %i.ls = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.ls, ptr %i.kw, align 4
  %cmp.n = icmp eq i64 %i.kx, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.ky, %middle.block ]
  %i.lt = phi i32 [ %i.lw, %scalar.ph ], [ %i.ls, %middle.block ]
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i90
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = add nsw i32 %i.lv, %i.lt                ; 3 uses
  store i32 %i.lw, ptr %i.kw, align 4
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, 32
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !325

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %.lcssa181 = phi i32 [ %i.ls, %middle.block ], [ %i.lw, %scalar.ph ]
  %xtraiter225 = and i64 %i.kv, 3                 ; 3 uses
  %unroll_iter230 = and i64 %i.kv, 12
  br label %.preheader34.i

.preheader.i92.unr-lcssa:                         ; preds = %.preheader34.i
  %lcmp.mod227.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod227.not, label %.preheader.i92, label %.preheader34.i.epil.preheader

.preheader34.i.epil.preheader:                    ; preds = %.preheader.i92.unr-lcssa
  %lcmp.mod229 = icmp ne i64 %xtraiter225, 0
  tail call void @llvm.assume(i1 %lcmp.mod229)
  br label %.preheader34.i.epil

.preheader34.i.epil:                              ; preds = %.preheader34.i.epil, %.preheader34.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader34.i.epil ], [ %indvars.iv.next49.i.3, %.preheader34.i.epil.preheader ] ; 3 uses
  %.040.i.epil = phi i32 [ %i.mc, %.preheader34.i.epil ], [ %i.nc, %.preheader34.i.epil.preheader ]
  %epil.iter226 = phi i64 [ %epil.iter226.next, %.preheader34.i.epil ], [ 0, %.preheader34.i.epil.preheader ]
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i.epil
  %i.ly = load i32, ptr %i.lx, align 4
  %i.lz = trunc i64 %indvars.iv48.i.epil to i32
  %i.ma = sub i32 %3, %i.lz
  %i.mb = shl i32 %i.ly, %i.ma
  %i.mc = add i32 %i.mb, %.040.i.epil             ; 2 uses
  %indvars.iv.next49.i.epil = add nsw i64 %indvars.iv48.i.epil, -1
  %epil.iter226.next = add i64 %epil.iter226, 1   ; 2 uses
  %epil.iter226.cmp.not = icmp eq i64 %epil.iter226.next, %xtraiter225
  br i1 %epil.iter226.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !326

.preheader.i92:                                   ; preds = %.preheader34.i.epil, %.preheader.i92.unr-lcssa
  %.lcssa189 = phi i32 [ %i.nc, %.preheader.i92.unr-lcssa ], [ %i.mc, %.preheader34.i.epil ] ; 2 uses
  %i.md = shl nuw nsw i64 1, %i.kv                ; 2 uses
  %i.me = zext i32 %.lcssa189 to i64
  %.not42.i = icmp eq i64 %i.md, %i.me
  br i1 %.not42.i, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

.preheader34.i:                                   ; preds = %.preheader34.i, %.preheader34.i.preheader
  %indvars.iv48.i = phi i64 [ %i.kv, %.preheader34.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader34.i ] ; 6 uses
  %.040.i = phi i32 [ 0, %.preheader34.i.preheader ], [ %i.nc, %.preheader34.i ]
  %niter231 = phi i64 [ 0, %.preheader34.i.preheader ], [ %niter231.next.3, %.preheader34.i ]
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i
  %i.mg = load i32, ptr %i.mf, align 4
  %i.mh = trunc i64 %indvars.iv48.i to i32
  %i.mi = sub nsw i32 %3, %i.mh
  %i.mj = shl i32 %i.mg, %i.mi
  %i.mk = add i32 %i.mj, %.040.i
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, -1 ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = trunc i64 %indvars.iv.next49.i to i32
  %i.mo = sub nsw i32 %3, %i.mn
  %i.mp = shl i32 %i.mm, %i.mo
  %i.mq = add i32 %i.mp, %i.mk
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, -2 ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.1
  %i.ms = load i32, ptr %i.mr, align 4
  %i.mt = trunc i64 %indvars.iv.next49.i.1 to i32
  %i.mu = sub nsw i32 %3, %i.mt
  %i.mv = shl i32 %i.ms, %i.mu
  %i.mw = add i32 %i.mv, %i.mq
  %indvars.iv.next49.i.2 = add nsw i64 %indvars.iv48.i, -3 ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.2
  %i.my = load i32, ptr %i.mx, align 4
  %i.mz = trunc i64 %indvars.iv.next49.i.2 to i32
  %i.na = sub nsw i32 %3, %i.mz
  %i.nb = shl i32 %i.my, %i.na
  %i.nc = add i32 %i.nb, %i.mw                    ; 3 uses
  %indvars.iv.next49.i.3 = add nsw i64 %indvars.iv48.i, -4 ; 2 uses
  %niter231.next.3 = add nuw nsw i64 %niter231, 4 ; 2 uses
  %niter231.ncmp.3.not = icmp eq i64 %niter231.next.3, %unroll_iter230
  br i1 %niter231.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %i.nd = phi i32 [ %i.nn, %.loopexit.i ], [ %.lcssa181, %.preheader.i92 ]
  %.143.i = phi i32 [ %i.no, %.loopexit.i ], [ %.lcssa189, %.preheader.i92 ]
  %i.ne = add nsw i32 %i.nd, -1                   ; 2 uses
  store i32 %i.ne, ptr %i.kw, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nf = icmp sgt i64 %indvars.iv51.i182, 2
  br i1 %i.nf, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i182 = phi i64 [ %i.kv, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i182, -1 ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nh = load i32, ptr %i.ng, align 4            ; 2 uses
  %.not32.i = icmp eq i32 %i.nh, 0
  br i1 %.not32.i, label %bb.u, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nj = add nsw i32 %i.nh, -1
  store i32 %i.nj, ptr %i.ni, align 4
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv51.i182 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4
  %i.nm = add nsw i32 %i.nl, 2
  store i32 %i.nm, ptr %i.nk, align 4
  %.pre.i95 = load i32, ptr %i.kw, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.w
  %i.nn = phi i32 [ %.pre.i95, %bb.w ], [ %i.ne, %bb.u ]
  %i.no = add i32 %.143.i, -1                     ; 2 uses
  %i.np = zext i32 %i.no to i64
  %.not.i94 = icmp eq i64 %i.md, %i.np
  br i1 %.not.i94, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

tdefl_huffman_enforce_max_code_size.exit:         ; preds = %.loopexit.i, %tdefl_radix_sort_syms.exit, %tdefl_radix_sort_syms.exit.thread, %tdefl_calculate_minimum_redundancy.exit, %._crit_edge, %.preheader.i92
  %.us-phi.i165167172 = phi ptr [ %6, %tdefl_radix_sort_syms.exit.thread ], [ %.03953.us.i, %.preheader.i92 ], [ %.03953.us.i, %._crit_edge ], [ %.03953.us.i, %tdefl_calculate_minimum_redundancy.exit ], [ %.03953.us.i, %tdefl_radix_sort_syms.exit ], [ %.03953.us.i, %.loopexit.i ] ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.nr = getelementptr inbounds nuw [288 x i8], ptr %i.nq, i64 %i.aj ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(288) %i.nr, i8 0, i64 288, i1 false)
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.nt = getelementptr inbounds nuw [576 x i8], ptr %i.ns, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(576) %i.nt, i8 0, i64 576, i1 false)
  %i.nu = add nuw nsw i32 %3, 1
  %wide.trip.count142 = zext nneg i32 %i.nu to i64 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %tdefl_huffman_enforce_max_code_size.exit, %._crit_edge110
  %indvars.iv139 = phi i64 [ 1, %tdefl_huffman_enforce_max_code_size.exit ], [ %indvars.iv.next140, %._crit_edge110 ] ; 3 uses
  %.071112 = phi i32 [ %.1.lcssa, %tdefl_huffman_enforce_max_code_size.exit ], [ %.172.lcssa, %._crit_edge110 ] ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv139
  %i.nw = load i32, ptr %i.nv, align 4            ; 5 uses
  %i.nx = icmp sgt i32 %i.nw, 0
  br i1 %i.nx, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.x
  %i.ny = trunc i64 %indvars.iv139 to i8          ; 5 uses
  %i.nz = sext i32 %.071112 to i64                ; 2 uses
  %xtraiter234 = and i32 %i.nw, 3                 ; 2 uses
  %lcmp.mod235.not = icmp eq i32 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %.prol.loopexit233, label %.prol.preheader232

.prol.preheader232:                               ; preds = %.lr.ph109, %.prol.preheader232
  %indvars.iv136.prol = phi i64 [ %indvars.iv.next137.prol, %.prol.preheader232 ], [ %i.nz, %.lr.ph109 ]
  %.069107.prol = phi i32 [ %i.of, %.prol.preheader232 ], [ %i.nw, %.lr.ph109 ]
  %prol.iter236 = phi i32 [ %prol.iter236.next, %.prol.preheader232 ], [ 0, %.lr.ph109 ]
  %indvars.iv.next137.prol = add nsw i64 %indvars.iv136.prol, -1 ; 4 uses
  %i.oa = getelementptr inbounds [4 x i8], ptr %.us-phi.i165167172, i64 %indvars.iv.next137.prol
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 2
  %i.oc = load i16, ptr %i.ob, align 2
  %i.od = zext i16 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.od
  store i8 %i.ny, ptr %i.oe, align 1
  %i.of = add nsw i32 %.069107.prol, -1           ; 2 uses
  %prol.iter236.next = add i32 %prol.iter236, 1   ; 2 uses
  %prol.iter236.cmp.not = icmp eq i32 %prol.iter236.next, %xtraiter234
  br i1 %prol.iter236.cmp.not, label %.prol.loopexit233, label %.prol.preheader232, !llvm.loop !327

.prol.loopexit233:                                ; preds = %.prol.preheader232, %.lr.ph109
  %indvars.iv136.unr = phi i64 [ %i.nz, %.lr.ph109 ], [ %indvars.iv.next137.prol, %.prol.preheader232 ]
  %.069107.unr = phi i32 [ %i.nw, %.lr.ph109 ], [ %i.of, %.prol.preheader232 ]
  %indvars.iv.next137.lcssa.unr = phi i64 [ poison, %.lr.ph109 ], [ %indvars.iv.next137.prol, %.prol.preheader232 ]
  %i.og = icmp ult i32 %i.nw, 4
  br i1 %i.og, label %._crit_edge110.loopexit, label %.lr.ph109.new

.lr.ph109.new:                                    ; preds = %.prol.loopexit233, %.lr.ph109.new
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.3, %.lr.ph109.new ], [ %indvars.iv136.unr, %.prol.loopexit233 ] ; 4 uses
  %.069107 = phi i32 [ %i.pb, %.lr.ph109.new ], [ %.069107.unr, %.prol.loopexit233 ] ; 2 uses
  %i.oh = getelementptr [4 x i8], ptr %.us-phi.i165167172, i64 %indvars.iv136
  %i.oi = getelementptr i8, ptr %i.oh, i64 -2
  %i.oj = load i16, ptr %i.oi, align 2
  %i.ok = zext i16 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ok
  store i8 %i.ny, ptr %i.ol, align 1
  %i.om = getelementptr [4 x i8], ptr %.us-phi.i165167172, i64 %indvars.iv136
  %i.on = getelementptr i8, ptr %i.om, i64 -6
  %i.oo = load i16, ptr %i.on, align 2
  %i.op = zext i16 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.op
  store i8 %i.ny, ptr %i.oq, align 1
  %i.or = getelementptr [4 x i8], ptr %.us-phi.i165167172, i64 %indvars.iv136
  %i.os = getelementptr i8, ptr %i.or, i64 -10
  %i.ot = load i16, ptr %i.os, align 2
  %i.ou = zext i16 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ou
  store i8 %i.ny, ptr %i.ov, align 1
  %indvars.iv.next137.3 = add nsw i64 %indvars.iv136, -4 ; 3 uses
  %i.ow = getelementptr inbounds [4 x i8], ptr %.us-phi.i165167172, i64 %indvars.iv.next137.3
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 2
  %i.oy = load i16, ptr %i.ox, align 2
  %i.oz = zext i16 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.oz
  store i8 %i.ny, ptr %i.pa, align 1
  %i.pb = add nsw i32 %.069107, -4
  %i.pc = icmp sgt i32 %.069107, 4
  br i1 %i.pc, label %.lr.ph109.new, label %._crit_edge110.loopexit

._crit_edge110.loopexit:                          ; preds = %.lr.ph109.new, %.prol.loopexit233
  %indvars.iv.next137.lcssa = phi i64 [ %indvars.iv.next137.lcssa.unr, %.prol.loopexit233 ], [ %indvars.iv.next137.3, %.lr.ph109.new ]
  %i.pd = trunc nsw i64 %indvars.iv.next137.lcssa to i32
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit, %bb.x
  %.172.lcssa = phi i32 [ %.071112, %bb.x ], [ %i.pd, %._crit_edge110.loopexit ]
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %bb.y, label %bb.x

bb.y:                                             ; preds = %._crit_edge110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod193 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.pe = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.pf = load i8, ptr %i.pe, align 1
  %i.pg = zext i8 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pg ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4
  %i.pj = add nsw i32 %i.pi, 1
  store i32 %i.pj, ptr %i.ph, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.z, !llvm.loop !328

.loopexit.loopexit:                               ; preds = %bb.z, %.loopexit.loopexit.unr-lcssa
  %.pre154 = add nuw nsw i32 %3, 1
  %.pre156 = zext nneg i32 %.pre154 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %wide.trip.count147.pre-phi = phi i64 [ %.pre156, %.loopexit.loopexit ], [ %wide.trip.count142, %bb.y ] ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.pk, align 4
  %i.pl = add nsw i64 %wide.trip.count147.pre-phi, -2 ; 2 uses
  %i.pm = add nsw i64 %wide.trip.count147.pre-phi, -3
  %xtraiter238 = and i64 %i.pl, 3                 ; 3 uses
  %i.pn = icmp ult i64 %i.pm, 3
  br i1 %i.pn, label %.epil.preheader237, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter242 = and i64 %i.pl, -4
  br label %bb.ab

.preheader.unr-lcssa:                             ; preds = %bb.ab
  %lcmp.mod240.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod240.not, label %.preheader, label %.epil.preheader237

.epil.preheader237:                               ; preds = %.preheader.unr-lcssa, %.loopexit
  %indvars.iv144.epil.init = phi i64 [ 2, %.loopexit ], [ %indvars.iv.next145.3, %.preheader.unr-lcssa ]
  %.2114.epil.init = phi i32 [ 0, %.loopexit ], [ %i.qv, %.preheader.unr-lcssa ]
  %lcmp.mod241 = icmp ne i64 %xtraiter238, 0
  tail call void @llvm.assume(i1 %lcmp.mod241)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader237
  %indvars.iv144.epil = phi i64 [ %indvars.iv144.epil.init, %.epil.preheader237 ], [ %indvars.iv.next145.epil, %bb.aa ] ; 3 uses
  %.2114.epil = phi i32 [ %.2114.epil.init, %.epil.preheader237 ], [ %i.ps, %bb.aa ]
  %epil.iter239 = phi i64 [ 0, %.epil.preheader237 ], [ %epil.iter239.next, %bb.aa ]
  %i.po = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv144.epil
  %i.pp = getelementptr i8, ptr %i.po, i64 -4
  %i.pq = load i32, ptr %i.pp, align 4
  %i.pr = add nsw i32 %i.pq, %.2114.epil
  %i.ps = shl i32 %i.pr, 1                        ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv144.epil
  store i32 %i.ps, ptr %i.pt, align 4
  %indvars.iv.next145.epil = add nuw nsw i64 %indvars.iv144.epil, 1
  %epil.iter239.next = add i64 %epil.iter239, 1   ; 2 uses
  %epil.iter239.cmp.not = icmp eq i64 %epil.iter239.next, %xtraiter238
  br i1 %epil.iter239.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !329

.preheader:                                       ; preds = %bb.aa, %.preheader.unr-lcssa
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.pv = zext nneg i32 %1 to i64                 ; 2 uses
  %i.pw = getelementptr inbounds nuw [288 x i8], ptr %i.pu, i64 %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.py = getelementptr inbounds nuw [576 x i8], ptr %i.px, i64 %i.pv
  %wide.trip.count152 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.loopexit.new
  %indvars.iv144 = phi i64 [ 2, %.loopexit.new ], [ %indvars.iv.next145.3, %bb.ab ] ; 6 uses
  %.2114 = phi i32 [ 0, %.loopexit.new ], [ %i.qv, %bb.ab ]
  %niter243 = phi i64 [ 0, %.loopexit.new ], [ %niter243.next.3, %bb.ab ]
  %i.pz = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv144
  %i.qa = getelementptr i8, ptr %i.pz, i64 -4
  %i.qb = load i32, ptr %i.qa, align 4
  %i.qc = add nsw i32 %i.qb, %.2114
  %i.qd = shl i32 %i.qc, 1                        ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv144
  store i32 %i.qd, ptr %i.qe, align 8
  %indvars.iv.next145 = or disjoint i64 %indvars.iv144, 1 ; 2 uses
  %i.qf = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next145
  %i.qg = getelementptr i8, ptr %i.qf, i64 -4
  %i.qh = load i32, ptr %i.qg, align 8
  %i.qi = add nsw i32 %i.qh, %i.qd
  %i.qj = shl i32 %i.qi, 1                        ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next145
  store i32 %i.qj, ptr %i.qk, align 4
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %i.ql = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next145.1
  %i.qm = getelementptr i8, ptr %i.ql, i64 -4
  %i.qn = load i32, ptr %i.qm, align 4
  %i.qo = add nsw i32 %i.qn, %i.qj
  %i.qp = shl i32 %i.qo, 1                        ; 2 uses
end_hunk_0

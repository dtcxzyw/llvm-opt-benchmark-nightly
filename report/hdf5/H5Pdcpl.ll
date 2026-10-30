Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Pdcpl?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@H5Pset_virtual:bb.a
  store i32 -1609490463, ptr %i.bio, align 8, !tbaa !68
  %.not2145 = icmp eq ptr %calloc2964, null
  br i1 %.not2145, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  call void @free(ptr noundef nonnull %i.bij) #14
  br label %.critedge2218

bb.gj:                                            ; preds = %bb.gh
  store ptr %i.avn, ptr %i.ga, align 8, !tbaa !33
  br label %.critedge2219

bb.gk:                                            ; preds = %bb.gf
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bih, i64 240
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !46
  store ptr %i.biq, ptr %i.bid, align 8, !tbaa !46
  %i.bir = getelementptr inbounds nuw i8, ptr %i.avn, i64 256
  store ptr null, ptr %i.bir, align 8, !tbaa !64
  %i.bis = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 240
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !46 ; 2 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biu, i64 24
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !49
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biu, i64 32
  %i.biy = load i64, ptr %i.bix, align 8, !tbaa !67
  %i.biz = sub i64 0, %i.biy
  %i.bja = getelementptr inbounds i8, ptr %i.biw, i64 %i.biz
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.avn, i64 248
  store ptr %i.bja, ptr %i.bjb, align 8, !tbaa !65
  %i.bjc = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjc, i64 240
  %i.bje = load ptr, ptr %i.bjd, align 8, !tbaa !46
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 24
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !49
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 16
  store ptr %i.avn, ptr %i.bjh, align 8, !tbaa !55
  %i.bji = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 240
  %i.bjk = load ptr, ptr %i.bjj, align 8, !tbaa !46
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 24
  store ptr %i.bid, ptr %i.bjl, align 8, !tbaa !49
  %.pre2767 = load ptr, ptr %i.ga, align 8, !tbaa !33
  br label %.critedge2219

.critedge2219:                                    ; preds = %bb.gj, %bb.gk
  %i.bjm = phi ptr [ %i.avn, %bb.gj ], [ %.pre2767, %bb.gk ]
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 240
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !46
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 16 ; 2 uses
  %i.bjq = load i32, ptr %i.bjp, align 8, !tbaa !69
  %i.bjr = add i32 %i.bjq, 1
  store i32 %i.bjr, ptr %i.bjp, align 8, !tbaa !69
  %i.bjs = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 240
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !46 ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 8
  %i.bjw = load i32, ptr %i.bjv, align 8, !tbaa !50
  %i.bjx = add i32 %i.bjw, -1
  %i.bjy = and i32 %i.bjx, %i.bic
  %i.bjz = load ptr, ptr %i.bju, align 8, !tbaa !51
  %i.bka = zext i32 %i.bjy to i64                 ; 2 uses
  %i.bkb = getelementptr inbounds nuw [16 x i8], ptr %i.bjz, i64 %i.bka ; 4 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 8 ; 2 uses
  %i.bkd = load i32, ptr %i.bkc, align 8, !tbaa !70
  %i.bke = add i32 %i.bkd, 1                      ; 2 uses
  store i32 %i.bke, ptr %i.bkc, align 8, !tbaa !70
  %i.bkf = load ptr, ptr %i.bkb, align 8, !tbaa !53 ; 6 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.avn, i64 272 ; 3 uses
  store ptr %i.bkf, ptr %i.bkg, align 8, !tbaa !71
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.avn, i64 264 ; 4 uses
  store ptr null, ptr %i.bkh, align 8, !tbaa !72
  %.not2148 = icmp eq ptr %i.bkf, null
  br i1 %.not2148, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %.critedge2219
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkf, i64 24
  store ptr %i.bid, ptr %i.bki, align 8, !tbaa !56
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %.critedge2219
  store ptr %i.bid, ptr %i.bkb, align 8, !tbaa !53
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkb, i64 12
  %i.bkk = load i32, ptr %i.bkj, align 4, !tbaa !73
  %i.bkl = mul i32 %i.bkk, 10
  %i.bkm = add i32 %i.bkl, 10
  %.not2149 = icmp ult i32 %i.bke, %i.bkm
  br i1 %.not2149, label %bb.hv, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bkn = load ptr, ptr %i.bid, align 8, !tbaa !46 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 52
  %i.bkp = load i32, ptr %i.bko, align 4, !tbaa !74
  %.not2150 = icmp eq i32 %i.bkp, 0
  br i1 %.not2150, label %bb.go, label %bb.hv

bb.go:                                            ; preds = %bb.gn
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkn, i64 8
  %i.bkr = load i32, ptr %i.bkq, align 8, !tbaa !50
  %i.bks = zext i32 %i.bkr to i64
  %i.bkt = shl nuw nsw i64 %i.bks, 5
  %calloc2963 = call ptr @calloc(i64 1, i64 %i.bkt) ; 3 uses
  %.not2151.not = icmp eq ptr %calloc2963, null
  br i1 %.not2151.not, label %.critedge2221, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bku = load ptr, ptr %i.bid, align 8, !tbaa !46 ; 6 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 16
  %i.bkw = load i32, ptr %i.bkv, align 8, !tbaa !69 ; 2 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bku, i64 12
  %i.bky = load i32, ptr %i.bkx, align 4, !tbaa !66
  %i.bkz = add i32 %i.bky, 1
  %i.bla = lshr i32 %i.bkw, %i.bkz
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  %i.blc = load i32, ptr %i.blb, align 8, !tbaa !50 ; 3 uses
  %i.bld = shl i32 %i.blc, 1
  %i.ble = add i32 %i.bld, -1                     ; 2 uses
  %i.blf = and i32 %i.ble, %i.bkw
  %.not2152 = icmp ne i32 %i.blf, 0
  %i.blg = zext i1 %.not2152 to i32
  %i.blh = add i32 %i.bla, %i.blg                 ; 3 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bku, i64 40
  store i32 %i.blh, ptr %i.bli, align 8, !tbaa !75
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bku, i64 44 ; 2 uses
  store i32 0, ptr %i.blj, align 4, !tbaa !76
  %.not2683 = icmp eq i32 %i.blc, 0
  %.pre2768 = load ptr, ptr %i.bku, align 8, !tbaa !51 ; 2 uses
  br i1 %.not2683, label %._crit_edge2634, label %.lr.ph2633

.lr.ph2633:                                       ; preds = %bb.gp
  %wide.trip.count = zext i32 %i.blc to i64
  br label %bb.gq

bb.gq:                                            ; preds = %.lr.ph2633, %._crit_edge2630
  %i.blk = phi i32 [ 0, %.lr.ph2633 ], [ %i.bmj, %._crit_edge2630 ] ; 2 uses
  %indvars.iv2729 = phi i64 [ 0, %.lr.ph2633 ], [ %indvars.iv.next2730, %._crit_edge2630 ] ; 2 uses
  %i.bll = getelementptr inbounds nuw [16 x i8], ptr %.pre2768, i64 %indvars.iv2729
  %i.blm = load ptr, ptr %i.bll, align 8, !tbaa !53 ; 2 uses
  %.not21562626 = icmp eq ptr %i.blm, null
  br i1 %.not21562626, label %._crit_edge2630, label %.lr.ph2629

.lr.ph2629:                                       ; preds = %bb.gq, %bb.gv
  %i.bln = phi i32 [ %i.bmf, %bb.gv ], [ %i.blk, %bb.gq ] ; 2 uses
  %.018192627 = phi ptr [ %i.blp, %bb.gv ], [ %i.blm, %bb.gq ] ; 5 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %.018192627, i64 32 ; 2 uses
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !57 ; 2 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %.018192627, i64 52
  %i.blr = load i32, ptr %i.blq, align 4, !tbaa !77
  %i.bls = and i32 %i.blr, %i.ble
  %i.blt = zext i32 %i.bls to i64
  %i.blu = getelementptr inbounds nuw [16 x i8], ptr %calloc2963, i64 %i.blt ; 4 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 8 ; 2 uses
  %i.blw = load i32, ptr %i.blv, align 8, !tbaa !70
  %i.blx = add i32 %i.blw, 1                      ; 3 uses
  store i32 %i.blx, ptr %i.blv, align 8, !tbaa !70
  %i.bly = icmp ugt i32 %i.blx, %i.blh
  br i1 %i.bly, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %.lr.ph2629
  %i.blz = add i32 %i.bln, 1                      ; 3 uses
  store i32 %i.blz, ptr %i.blj, align 4, !tbaa !76
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blu, i64 12 ; 2 uses
  %i.bmb = load i32, ptr %i.bma, align 4, !tbaa !73 ; 2 uses
  %i.bmc = mul i32 %i.bmb, %i.blh
  %i.bmd = icmp ugt i32 %i.blx, %i.bmc
  br i1 %i.bmd, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bme = add i32 %i.bmb, 1
  store i32 %i.bme, ptr %i.bma, align 4, !tbaa !73
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gr, %bb.gs, %.lr.ph2629
  %i.bmf = phi i32 [ %i.blz, %bb.gr ], [ %i.blz, %bb.gs ], [ %i.bln, %.lr.ph2629 ] ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %.018192627, i64 24
  store ptr null, ptr %i.bmg, align 8, !tbaa !56
  %i.bmh = load ptr, ptr %i.blu, align 8, !tbaa !53 ; 3 uses
  store ptr %i.bmh, ptr %i.blo, align 8, !tbaa !57
  %.not2157 = icmp eq ptr %i.bmh, null
  br i1 %.not2157, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 24
  store ptr %.018192627, ptr %i.bmi, align 8, !tbaa !56
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  store ptr %.018192627, ptr %i.blu, align 8, !tbaa !53
  %.not2156 = icmp eq ptr %i.blp, null
  br i1 %.not2156, label %._crit_edge2630, label %.lr.ph2629, !llvm.loop !140

._crit_edge2630:                                  ; preds = %bb.gv, %bb.gq
  %i.bmj = phi i32 [ %i.blk, %bb.gq ], [ %i.bmf, %bb.gv ]
  %indvars.iv.next2730 = add nuw nsw i64 %indvars.iv2729, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2730, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge2634, label %bb.gq, !llvm.loop !141

._crit_edge2634:                                  ; preds = %._crit_edge2630, %bb.gp
  call void @free(ptr noundef %.pre2768) #14
  %i.bmk = load ptr, ptr %i.bid, align 8, !tbaa !46 ; 6 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8 ; 2 uses
  %i.bmm = load <2 x i32>, ptr %i.bml, align 8, !tbaa !28 ; 2 uses
  %i.bmn = insertelement <2 x i32> %i.bmm, i32 1, i64 1
  %i.bmo = add <2 x i32> %i.bmm, %i.bmn
  store <2 x i32> %i.bmo, ptr %i.bml, align 8, !tbaa !28
  store ptr %calloc2963, ptr %i.bmk, align 8, !tbaa !51
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmk, i64 44
  %i.bmq = load i32, ptr %i.bmp, align 4, !tbaa !76
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmk, i64 16
  %i.bms = load i32, ptr %i.bmr, align 8, !tbaa !69
  %i.bmt = lshr i32 %i.bms, 1
  %i.bmu = icmp ugt i32 %i.bmq, %i.bmt
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmk, i64 48 ; 3 uses
  br i1 %i.bmu, label %bb.gw, label %.thread2237

.thread2237:                                      ; preds = %._crit_edge2634
  store i32 0, ptr %i.bmv, align 8, !tbaa !78
  br label %bb.hv

bb.gw:                                            ; preds = %._crit_edge2634
  %i.bmw = load i32, ptr %i.bmv, align 8, !tbaa !78
  %i.bmx = add i32 %i.bmw, 1                      ; 2 uses
  store i32 %i.bmx, ptr %i.bmv, align 8, !tbaa !78
  %i.bmy = icmp ugt i32 %i.bmx, 1
  br i1 %i.bmy, label %bb.gx, label %bb.hv

bb.gx:                                            ; preds = %bb.gw
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmk, i64 52
  store i32 1, ptr %i.bmz, align 4, !tbaa !74
  br label %bb.hv

.critedge2221:                                    ; preds = %bb.go
  %i.bna = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 240
  %i.bnc = load ptr, ptr %i.bnb, align 8, !tbaa !46
  %i.bnd = load ptr, ptr %i.bnc, align 8, !tbaa !51
  %i.bne = getelementptr inbounds nuw [16 x i8], ptr %i.bnd, i64 %i.bka ; 3 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 8 ; 2 uses
  %i.bng = load i32, ptr %i.bnf, align 8, !tbaa !70
  %i.bnh = add i32 %i.bng, -1
  store i32 %i.bnh, ptr %i.bnf, align 8, !tbaa !70
  %i.bni = load ptr, ptr %i.bne, align 8, !tbaa !53
  %i.bnj = icmp eq ptr %i.bni, %i.bid
  br i1 %i.bnj, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %.critedge2221
  store ptr %i.bkf, ptr %i.bne, align 8, !tbaa !53
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.critedge2221
  %i.bnk = load ptr, ptr %i.bkh, align 8, !tbaa !72 ; 3 uses
  %.not2154 = icmp eq ptr %i.bnk, null
  br i1 %.not2154, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnk, i64 32
  store ptr %i.bkf, ptr %i.bnl, align 8, !tbaa !57
  %.pre2769 = load ptr, ptr %i.bkg, align 8, !tbaa !71
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.bnm = phi ptr [ %.pre2769, %bb.ha ], [ %i.bkf, %bb.gz ] ; 2 uses
  %.not2155 = icmp eq ptr %i.bnm, null
  br i1 %.not2155, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 24
  store ptr %i.bnk, ptr %i.bnn, align 8, !tbaa !56
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.bno = load i32, ptr %i.bie, align 4, !tbaa !77
  %i.bnp = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 240
  %i.bnr = load ptr, ptr %i.bnq, align 8, !tbaa !46 ; 2 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnr, i64 8
  %i.bnt = load i32, ptr %i.bns, align 8, !tbaa !50
  %i.bnu = add i32 %i.bnt, -1
  %i.bnv = and i32 %i.bnu, %i.bno
  %i.bnw = load ptr, ptr %i.bnr, align 8, !tbaa !51
  %i.bnx = zext i32 %i.bnv to i64
  %i.bny = getelementptr inbounds nuw [16 x i8], ptr %i.bnw, i64 %i.bnx
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 8 ; 2 uses
  %i.boa = load i32, ptr %i.bnz, align 8, !tbaa !70
  %i.bob = add i32 %i.boa, 1
  store i32 %i.bob, ptr %i.bnz, align 8, !tbaa !70
  %i.boc = getelementptr inbounds nuw i8, ptr %i.avn, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bkh, i8 0, i64 16, i1 false)
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !54 ; 3 uses
  %i.boe = icmp eq ptr %i.bod, null               ; 2 uses
  br i1 %i.boe, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.bof = getelementptr inbounds nuw i8, ptr %i.avn, i64 256
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !55
  %i.boh = icmp eq ptr %i.bog, null
  br i1 %i.boh, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.boi = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 240
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !46
  %i.bol = load ptr, ptr %i.bok, align 8, !tbaa !51
  call void @free(ptr noundef %i.bol) #14
  %i.bom = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 240
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !46
  call void @free(ptr noundef %i.boo) #14
  store ptr null, ptr %i.ga, align 8, !tbaa !33
  br label %bb.hu

bb.hg:                                            ; preds = %bb.he, %bb.hd
  %i.bop = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 240
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !46 ; 2 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 24 ; 2 uses
  %i.bot = load ptr, ptr %i.bos, align 8, !tbaa !49
  %i.bou = icmp eq ptr %i.bid, %i.bot
  br i1 %i.bou, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bor, i64 32
  %i.bow = load i64, ptr %i.bov, align 8, !tbaa !67
  %i.box = getelementptr inbounds i8, ptr %i.bod, i64 %i.bow
  store ptr %i.box, ptr %i.bos, align 8, !tbaa !49
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.boy = getelementptr inbounds nuw i8, ptr %i.avn, i64 256
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !55 ; 5 uses
  br i1 %i.boe, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bpa = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 240
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !46
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 32
  %i.bpe = load i64, ptr %i.bpd, align 8, !tbaa !67
  %i.bpf = getelementptr inbounds i8, ptr %i.bod, i64 %i.bpe
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 16
  store ptr %i.boz, ptr %i.bpg, align 8, !tbaa !55
  %.pre2771.pre = load ptr, ptr %i.ga, align 8, !tbaa !33
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  store ptr %i.boz, ptr %i.ga, align 8, !tbaa !33
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.pre2771 = phi ptr [ %i.boz, %bb.hk ], [ %.pre2771.pre, %bb.hj ] ; 2 uses
  %.not2160 = icmp eq ptr %i.boz, null
  br i1 %.not2160, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bph = load ptr, ptr %i.boc, align 8, !tbaa !54
  %i.bpi = getelementptr inbounds nuw i8, ptr %.pre2771, i64 240
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !46
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 32
  %i.bpl = load i64, ptr %i.bpk, align 8, !tbaa !67
  %i.bpm = getelementptr inbounds i8, ptr %i.boz, i64 %i.bpl
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 8
  store ptr %i.bph, ptr %i.bpn, align 8, !tbaa !54
  %.pre2770 = load ptr, ptr %i.ga, align 8, !tbaa !33
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hl, %bb.hm
  %i.bpo = phi ptr [ %.pre2771, %bb.hl ], [ %.pre2770, %bb.hm ]
  %i.bpp = load i32, ptr %i.bie, align 4, !tbaa !77
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpo, i64 240
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !46 ; 2 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpr, i64 8
  %i.bpt = load i32, ptr %i.bps, align 8, !tbaa !50
  %i.bpu = add i32 %i.bpt, -1
  %i.bpv = and i32 %i.bpu, %i.bpp
  %i.bpw = load ptr, ptr %i.bpr, align 8, !tbaa !51
  %i.bpx = zext i32 %i.bpv to i64
  %i.bpy = getelementptr inbounds nuw [16 x i8], ptr %i.bpw, i64 %i.bpx ; 3 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 8 ; 2 uses
  %i.bqa = load i32, ptr %i.bpz, align 8, !tbaa !70
  %i.bqb = add i32 %i.bqa, -1
  store i32 %i.bqb, ptr %i.bpz, align 8, !tbaa !70
  %i.bqc = load ptr, ptr %i.bpy, align 8, !tbaa !53
  %i.bqd = icmp eq ptr %i.bqc, %i.bid
  %.pre2772.pre = load ptr, ptr %i.bkg, align 8, !tbaa !57 ; 4 uses
  br i1 %i.bqd, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  store ptr %.pre2772.pre, ptr %i.bpy, align 8, !tbaa !53
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.bqe = load ptr, ptr %i.bkh, align 8, !tbaa !56 ; 3 uses
  %.not2161 = icmp eq ptr %i.bqe, null
  br i1 %.not2161, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 32
  store ptr %.pre2772.pre, ptr %i.bqf, align 8, !tbaa !57
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.not2162 = icmp eq ptr %.pre2772.pre, null
  br i1 %.not2162, label %bb.ht, label %bb.hs

end_hunk_0
begin_hunk_1_@H5Pset_virtual:bb.a
  store i32 -1609490463, ptr %i.cdn, align 8, !tbaa !68
  %.not2172 = icmp eq ptr %calloc2961, null
  br i1 %.not2172, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  call void @free(ptr noundef nonnull %i.cdi) #14
  br label %.critedge2225

bb.jg:                                            ; preds = %bb.je
  store ptr %i.avn, ptr %i.cdf, align 8, !tbaa !33
  br label %.critedge2226

bb.jh:                                            ; preds = %bb.jc
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdg, i64 296
  %i.cdp = load ptr, ptr %i.cdo, align 8, !tbaa !58
  store ptr %i.cdp, ptr %i.cdb, align 8, !tbaa !58
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.avn, i64 312
  store ptr null, ptr %i.cdq, align 8, !tbaa !84
  %i.cdr = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 296
  %i.cdt = load ptr, ptr %i.cds, align 8, !tbaa !58 ; 2 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 24
  %i.cdv = load ptr, ptr %i.cdu, align 8, !tbaa !49
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdt, i64 32
  %i.cdx = load i64, ptr %i.cdw, align 8, !tbaa !67
  %i.cdy = sub i64 0, %i.cdx
  %i.cdz = getelementptr inbounds i8, ptr %i.cdv, i64 %i.cdy
  %i.cea = getelementptr inbounds nuw i8, ptr %i.avn, i64 304
  store ptr %i.cdz, ptr %i.cea, align 8, !tbaa !85
  %i.ceb = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ceb, i64 296
  %i.ced = load ptr, ptr %i.cec, align 8, !tbaa !58
  %i.cee = getelementptr inbounds nuw i8, ptr %i.ced, i64 24
  %i.cef = load ptr, ptr %i.cee, align 8, !tbaa !49
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.cef, i64 16
  store ptr %i.avn, ptr %i.ceg, align 8, !tbaa !55
  %i.ceh = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ceh, i64 296
  %i.cej = load ptr, ptr %i.cei, align 8, !tbaa !58
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cej, i64 24
  store ptr %i.cdb, ptr %i.cek, align 8, !tbaa !49
  %.pre2773 = load ptr, ptr %i.cdf, align 8, !tbaa !33
  br label %.critedge2226

.critedge2226:                                    ; preds = %bb.jg, %bb.jh
  %i.cel = phi ptr [ %i.avn, %bb.jg ], [ %.pre2773, %bb.jh ]
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cel, i64 296
  %i.cen = load ptr, ptr %i.cem, align 8, !tbaa !58
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 16 ; 2 uses
  %i.cep = load i32, ptr %i.ceo, align 8, !tbaa !69
  %i.ceq = add i32 %i.cep, 1
  store i32 %i.ceq, ptr %i.ceo, align 8, !tbaa !69
  %i.cer = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.ces = getelementptr inbounds nuw i8, ptr %i.cer, i64 296
  %i.cet = load ptr, ptr %i.ces, align 8, !tbaa !58 ; 2 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cet, i64 8
  %i.cev = load i32, ptr %i.ceu, align 8, !tbaa !50
  %i.cew = add i32 %i.cev, -1
  %i.cex = and i32 %i.cew, %i.cda
  %i.cey = load ptr, ptr %i.cet, align 8, !tbaa !51
  %i.cez = zext i32 %i.cex to i64                 ; 2 uses
  %i.cfa = getelementptr inbounds nuw [16 x i8], ptr %i.cey, i64 %i.cez ; 4 uses
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8 ; 2 uses
  %i.cfc = load i32, ptr %i.cfb, align 8, !tbaa !70
  %i.cfd = add i32 %i.cfc, 1                      ; 2 uses
  store i32 %i.cfd, ptr %i.cfb, align 8, !tbaa !70
  %i.cfe = load ptr, ptr %i.cfa, align 8, !tbaa !53 ; 6 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %i.avn, i64 328 ; 3 uses
  store ptr %i.cfe, ptr %i.cff, align 8, !tbaa !86
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.avn, i64 320 ; 4 uses
  store ptr null, ptr %i.cfg, align 8, !tbaa !87
  %.not2175 = icmp eq ptr %i.cfe, null
  br i1 %.not2175, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %.critedge2226
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfe, i64 24
  store ptr %i.cdb, ptr %i.cfh, align 8, !tbaa !56
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %.critedge2226
  store ptr %i.cdb, ptr %i.cfa, align 8, !tbaa !53
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfa, i64 12
  %i.cfj = load i32, ptr %i.cfi, align 4, !tbaa !73
  %i.cfk = mul i32 %i.cfj, 10
  %i.cfl = add i32 %i.cfk, 10
  %.not2176 = icmp ult i32 %i.cfd, %i.cfl
  br i1 %.not2176, label %bb.ks, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.cfm = load ptr, ptr %i.cdb, align 8, !tbaa !58 ; 2 uses
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfm, i64 52
  %i.cfo = load i32, ptr %i.cfn, align 4, !tbaa !74
  %.not2177 = icmp eq i32 %i.cfo, 0
  br i1 %.not2177, label %bb.jl, label %bb.ks

bb.jl:                                            ; preds = %bb.jk
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8
  %i.cfq = load i32, ptr %i.cfp, align 8, !tbaa !50
  %i.cfr = zext i32 %i.cfq to i64
  %i.cfs = shl nuw nsw i64 %i.cfr, 5
  %calloc = call ptr @calloc(i64 1, i64 %i.cfs)   ; 3 uses
  %.not2178.not = icmp eq ptr %calloc, null
  br i1 %.not2178.not, label %.critedge2228, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.cft = load ptr, ptr %i.cdb, align 8, !tbaa !58 ; 6 uses
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cft, i64 16
  %i.cfv = load i32, ptr %i.cfu, align 8, !tbaa !69 ; 2 uses
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cft, i64 12
  %i.cfx = load i32, ptr %i.cfw, align 4, !tbaa !66
  %i.cfy = add i32 %i.cfx, 1
  %i.cfz = lshr i32 %i.cfv, %i.cfy
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cft, i64 8
  %i.cgb = load i32, ptr %i.cga, align 8, !tbaa !50 ; 3 uses
  %i.cgc = shl i32 %i.cgb, 1
  %i.cgd = add i32 %i.cgc, -1                     ; 2 uses
  %i.cge = and i32 %i.cgd, %i.cfv
  %.not2179 = icmp ne i32 %i.cge, 0
  %i.cgf = zext i1 %.not2179 to i32
  %i.cgg = add i32 %i.cfz, %i.cgf                 ; 3 uses
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cft, i64 40
  store i32 %i.cgg, ptr %i.cgh, align 8, !tbaa !75
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cft, i64 44 ; 2 uses
  store i32 0, ptr %i.cgi, align 4, !tbaa !76
  %.not2684 = icmp eq i32 %i.cgb, 0
  %.pre2774 = load ptr, ptr %i.cft, align 8, !tbaa !51 ; 2 uses
  br i1 %.not2684, label %._crit_edge2673, label %.lr.ph2672

.lr.ph2672:                                       ; preds = %bb.jm
  %wide.trip.count2735 = zext i32 %i.cgb to i64
  br label %bb.jn

bb.jn:                                            ; preds = %.lr.ph2672, %._crit_edge2669
  %i.cgj = phi i32 [ 0, %.lr.ph2672 ], [ %i.chi, %._crit_edge2669 ] ; 2 uses
  %indvars.iv2732 = phi i64 [ 0, %.lr.ph2672 ], [ %indvars.iv.next2733, %._crit_edge2669 ] ; 2 uses
  %i.cgk = getelementptr inbounds nuw [16 x i8], ptr %.pre2774, i64 %indvars.iv2732
  %i.cgl = load ptr, ptr %i.cgk, align 8, !tbaa !53 ; 2 uses
  %.not21832665 = icmp eq ptr %i.cgl, null
  br i1 %.not21832665, label %._crit_edge2669, label %.lr.ph2668

.lr.ph2668:                                       ; preds = %bb.jn, %bb.js
  %i.cgm = phi i32 [ %i.che, %bb.js ], [ %i.cgj, %bb.jn ] ; 2 uses
  %.017632666 = phi ptr [ %i.cgo, %bb.js ], [ %i.cgl, %bb.jn ] ; 5 uses
  %i.cgn = getelementptr inbounds nuw i8, ptr %.017632666, i64 32 ; 2 uses
  %i.cgo = load ptr, ptr %i.cgn, align 8, !tbaa !57 ; 2 uses
  %i.cgp = getelementptr inbounds nuw i8, ptr %.017632666, i64 52
  %i.cgq = load i32, ptr %i.cgp, align 4, !tbaa !77
  %i.cgr = and i32 %i.cgq, %i.cgd
  %i.cgs = zext i32 %i.cgr to i64
  %i.cgt = getelementptr inbounds nuw [16 x i8], ptr %calloc, i64 %i.cgs ; 4 uses
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgt, i64 8 ; 2 uses
  %i.cgv = load i32, ptr %i.cgu, align 8, !tbaa !70
  %i.cgw = add i32 %i.cgv, 1                      ; 3 uses
  store i32 %i.cgw, ptr %i.cgu, align 8, !tbaa !70
  %i.cgx = icmp ugt i32 %i.cgw, %i.cgg
  br i1 %i.cgx, label %bb.jo, label %bb.jq

bb.jo:                                            ; preds = %.lr.ph2668
  %i.cgy = add i32 %i.cgm, 1                      ; 3 uses
  store i32 %i.cgy, ptr %i.cgi, align 4, !tbaa !76
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgt, i64 12 ; 2 uses
  %i.cha = load i32, ptr %i.cgz, align 4, !tbaa !73 ; 2 uses
  %i.chb = mul i32 %i.cha, %i.cgg
  %i.chc = icmp ugt i32 %i.cgw, %i.chb
  br i1 %i.chc, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.chd = add i32 %i.cha, 1
  store i32 %i.chd, ptr %i.cgz, align 4, !tbaa !73
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jo, %bb.jp, %.lr.ph2668
  %i.che = phi i32 [ %i.cgy, %bb.jo ], [ %i.cgy, %bb.jp ], [ %i.cgm, %.lr.ph2668 ] ; 2 uses
  %i.chf = getelementptr inbounds nuw i8, ptr %.017632666, i64 24
  store ptr null, ptr %i.chf, align 8, !tbaa !56
  %i.chg = load ptr, ptr %i.cgt, align 8, !tbaa !53 ; 3 uses
  store ptr %i.chg, ptr %i.cgn, align 8, !tbaa !57
  %.not2184 = icmp eq ptr %i.chg, null
  br i1 %.not2184, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.chh = getelementptr inbounds nuw i8, ptr %i.chg, i64 24
  store ptr %.017632666, ptr %i.chh, align 8, !tbaa !56
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  store ptr %.017632666, ptr %i.cgt, align 8, !tbaa !53
  %.not2183 = icmp eq ptr %i.cgo, null
  br i1 %.not2183, label %._crit_edge2669, label %.lr.ph2668, !llvm.loop !145

._crit_edge2669:                                  ; preds = %bb.js, %bb.jn
  %i.chi = phi i32 [ %i.cgj, %bb.jn ], [ %i.che, %bb.js ]
  %indvars.iv.next2733 = add nuw nsw i64 %indvars.iv2732, 1 ; 2 uses
  %exitcond2736.not = icmp eq i64 %indvars.iv.next2733, %wide.trip.count2735
  br i1 %exitcond2736.not, label %._crit_edge2673, label %bb.jn, !llvm.loop !146

._crit_edge2673:                                  ; preds = %._crit_edge2669, %bb.jm
  call void @free(ptr noundef %.pre2774) #14
  %i.chj = load ptr, ptr %i.cdb, align 8, !tbaa !58 ; 6 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chj, i64 8 ; 2 uses
  %i.chl = load <2 x i32>, ptr %i.chk, align 8, !tbaa !28 ; 2 uses
  %i.chm = insertelement <2 x i32> %i.chl, i32 1, i64 1
  %i.chn = add <2 x i32> %i.chl, %i.chm
  store <2 x i32> %i.chn, ptr %i.chk, align 8, !tbaa !28
  store ptr %calloc, ptr %i.chj, align 8, !tbaa !51
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chj, i64 44
  %i.chp = load i32, ptr %i.cho, align 4, !tbaa !76
  %i.chq = getelementptr inbounds nuw i8, ptr %i.chj, i64 16
  %i.chr = load i32, ptr %i.chq, align 8, !tbaa !69
  %i.chs = lshr i32 %i.chr, 1
  %i.cht = icmp ugt i32 %i.chp, %i.chs
  %i.chu = getelementptr inbounds nuw i8, ptr %i.chj, i64 48 ; 3 uses
  br i1 %i.cht, label %bb.jt, label %.thread2247

.thread2247:                                      ; preds = %._crit_edge2673
  store i32 0, ptr %i.chu, align 8, !tbaa !78
  br label %bb.ks

bb.jt:                                            ; preds = %._crit_edge2673
  %i.chv = load i32, ptr %i.chu, align 8, !tbaa !78
  %i.chw = add i32 %i.chv, 1                      ; 2 uses
  store i32 %i.chw, ptr %i.chu, align 8, !tbaa !78
  %i.chx = icmp ugt i32 %i.chw, 1
  br i1 %i.chx, label %bb.ju, label %bb.ks

bb.ju:                                            ; preds = %bb.jt
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chj, i64 52
  store i32 1, ptr %i.chy, align 4, !tbaa !74
  br label %bb.ks

.critedge2228:                                    ; preds = %bb.jl
  %i.chz = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.cia = getelementptr inbounds nuw i8, ptr %i.chz, i64 296
  %i.cib = load ptr, ptr %i.cia, align 8, !tbaa !58
  %i.cic = load ptr, ptr %i.cib, align 8, !tbaa !51
  %i.cid = getelementptr inbounds nuw [16 x i8], ptr %i.cic, i64 %i.cez ; 3 uses
  %i.cie = getelementptr inbounds nuw i8, ptr %i.cid, i64 8 ; 2 uses
  %i.cif = load i32, ptr %i.cie, align 8, !tbaa !70
  %i.cig = add i32 %i.cif, -1
  store i32 %i.cig, ptr %i.cie, align 8, !tbaa !70
  %i.cih = load ptr, ptr %i.cid, align 8, !tbaa !53
  %i.cii = icmp eq ptr %i.cih, %i.cdb
  br i1 %i.cii, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %.critedge2228
  store ptr %i.cfe, ptr %i.cid, align 8, !tbaa !53
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %.critedge2228
  %i.cij = load ptr, ptr %i.cfg, align 8, !tbaa !87 ; 3 uses
  %.not2181 = icmp eq ptr %i.cij, null
  br i1 %.not2181, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cij, i64 32
  store ptr %i.cfe, ptr %i.cik, align 8, !tbaa !57
  %.pre2775 = load ptr, ptr %i.cff, align 8, !tbaa !86
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %i.cil = phi ptr [ %.pre2775, %bb.jx ], [ %i.cfe, %bb.jw ] ; 2 uses
  %.not2182 = icmp eq ptr %i.cil, null
  br i1 %.not2182, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cil, i64 24
  store ptr %i.cij, ptr %i.cim, align 8, !tbaa !56
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %i.cin = load i32, ptr %i.cdc, align 4, !tbaa !77
  %i.cio = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 296
  %i.ciq = load ptr, ptr %i.cip, align 8, !tbaa !58 ; 2 uses
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 8
  %i.cis = load i32, ptr %i.cir, align 8, !tbaa !50
  %i.cit = add i32 %i.cis, -1
  %i.ciu = and i32 %i.cit, %i.cin
  %i.civ = load ptr, ptr %i.ciq, align 8, !tbaa !51
  %i.ciw = zext i32 %i.ciu to i64
  %i.cix = getelementptr inbounds nuw [16 x i8], ptr %i.civ, i64 %i.ciw
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cix, i64 8 ; 2 uses
  %i.ciz = load i32, ptr %i.ciy, align 8, !tbaa !70
  %i.cja = add i32 %i.ciz, 1
  store i32 %i.cja, ptr %i.ciy, align 8, !tbaa !70
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.avn, i64 304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cfg, i8 0, i64 16, i1 false)
  %i.cjc = load ptr, ptr %i.cjb, align 8, !tbaa !54 ; 3 uses
  %i.cjd = icmp eq ptr %i.cjc, null               ; 2 uses
  br i1 %i.cjd, label %bb.kb, label %bb.kd

bb.kb:                                            ; preds = %bb.ka
  %i.cje = getelementptr inbounds nuw i8, ptr %i.avn, i64 312
  %i.cjf = load ptr, ptr %i.cje, align 8, !tbaa !55
  %i.cjg = icmp eq ptr %i.cjf, null
  br i1 %i.cjg, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.cjh = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cjh, i64 296
  %i.cjj = load ptr, ptr %i.cji, align 8, !tbaa !58
  %i.cjk = load ptr, ptr %i.cjj, align 8, !tbaa !51
  call void @free(ptr noundef %i.cjk) #14
  %i.cjl = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cjl, i64 296
  %i.cjn = load ptr, ptr %i.cjm, align 8, !tbaa !58
  call void @free(ptr noundef %i.cjn) #14
  store ptr null, ptr %i.cdf, align 8, !tbaa !33
  br label %bb.kr

bb.kd:                                            ; preds = %bb.kb, %bb.ka
  %i.cjo = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 296
  %i.cjq = load ptr, ptr %i.cjp, align 8, !tbaa !58 ; 2 uses
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjq, i64 24 ; 2 uses
  %i.cjs = load ptr, ptr %i.cjr, align 8, !tbaa !49
  %i.cjt = icmp eq ptr %i.cdb, %i.cjs
  br i1 %i.cjt, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjq, i64 32
  %i.cjv = load i64, ptr %i.cju, align 8, !tbaa !67
  %i.cjw = getelementptr inbounds i8, ptr %i.cjc, i64 %i.cjv
  store ptr %i.cjw, ptr %i.cjr, align 8, !tbaa !49
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.avn, i64 312
  %i.cjy = load ptr, ptr %i.cjx, align 8, !tbaa !55 ; 5 uses
  br i1 %i.cjd, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.cjz = load ptr, ptr %i.cdf, align 8, !tbaa !33
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 296
  %i.ckb = load ptr, ptr %i.cka, align 8, !tbaa !58
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 32
  %i.ckd = load i64, ptr %i.ckc, align 8, !tbaa !67
  %i.cke = getelementptr inbounds i8, ptr %i.cjc, i64 %i.ckd
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 16
  store ptr %i.cjy, ptr %i.ckf, align 8, !tbaa !55
  %.pre2777.pre = load ptr, ptr %i.cdf, align 8, !tbaa !33
  br label %bb.ki

bb.kh:                                            ; preds = %bb.kf
  store ptr %i.cjy, ptr %i.cdf, align 8, !tbaa !33
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %.pre2777 = phi ptr [ %i.cjy, %bb.kh ], [ %.pre2777.pre, %bb.kg ] ; 2 uses
  %.not2187 = icmp eq ptr %i.cjy, null
  br i1 %.not2187, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ckg = load ptr, ptr %i.cjb, align 8, !tbaa !54
  %i.ckh = getelementptr inbounds nuw i8, ptr %.pre2777, i64 296
  %i.cki = load ptr, ptr %i.ckh, align 8, !tbaa !58
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.cki, i64 32
  %i.ckk = load i64, ptr %i.ckj, align 8, !tbaa !67
  %i.ckl = getelementptr inbounds i8, ptr %i.cjy, i64 %i.ckk
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 8
  store ptr %i.ckg, ptr %i.ckm, align 8, !tbaa !54
  %.pre2776 = load ptr, ptr %i.cdf, align 8, !tbaa !33
  br label %bb.kk

bb.kk:                                            ; preds = %bb.ki, %bb.kj
  %i.ckn = phi ptr [ %.pre2777, %bb.ki ], [ %.pre2776, %bb.kj ]
  %i.cko = load i32, ptr %i.cdc, align 4, !tbaa !77
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.ckn, i64 296
  %i.ckq = load ptr, ptr %i.ckp, align 8, !tbaa !58 ; 2 uses
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckq, i64 8
  %i.cks = load i32, ptr %i.ckr, align 8, !tbaa !50
  %i.ckt = add i32 %i.cks, -1
  %i.cku = and i32 %i.ckt, %i.cko
  %i.ckv = load ptr, ptr %i.ckq, align 8, !tbaa !51
  %i.ckw = zext i32 %i.cku to i64
  %i.ckx = getelementptr inbounds nuw [16 x i8], ptr %i.ckv, i64 %i.ckw ; 3 uses
  %i.cky = getelementptr inbounds nuw i8, ptr %i.ckx, i64 8 ; 2 uses
  %i.ckz = load i32, ptr %i.cky, align 8, !tbaa !70
  %i.cla = add i32 %i.ckz, -1
  store i32 %i.cla, ptr %i.cky, align 8, !tbaa !70
  %i.clb = load ptr, ptr %i.ckx, align 8, !tbaa !53
  %i.clc = icmp eq ptr %i.clb, %i.cdb
  %.pre2778.pre = load ptr, ptr %i.cff, align 8, !tbaa !57 ; 4 uses
  br i1 %i.clc, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  store ptr %.pre2778.pre, ptr %i.ckx, align 8, !tbaa !53
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %i.cld = load ptr, ptr %i.cfg, align 8, !tbaa !56 ; 3 uses
  %.not2188 = icmp eq ptr %i.cld, null
  br i1 %.not2188, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.cle = getelementptr inbounds nuw i8, ptr %i.cld, i64 32
  store ptr %.pre2778.pre, ptr %i.cle, align 8, !tbaa !57
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %.not2189 = icmp eq ptr %.pre2778.pre, null
  br i1 %.not2189, label %bb.kq, label %bb.kp

end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tiff?download=true
inline.NumInlined: 40
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6LibRaw14parse_tiff_ifdEx:bb.a
    i32 61448, label %bb.fr
    i32 61454, label %.preheader1182.preheader
    i32 305, label %bb.fs
    i32 306, label %bb.fy
    i32 315, label %bb.fz
    i32 317, label %bb.ga
    i32 322, label %bb.gb
    i32 323, label %bb.gc
    i32 324, label %bb.gd
    i32 325, label %bb.gi
    i32 330, label %bb.gm
    i32 339, label %bb.gw
    i32 400, label %bb.gx
    i32 700, label %bb.gy
    i32 28672, label %bb.ha
    i32 28688, label %.preheader1186.preheader
    i32 29184, label %bb.hb
    i32 29185, label %bb.hc
    i32 29217, label %bb.hd
    i32 29264, label %bb.he
    i32 29443, label %.preheader1187.preheader
    i32 29459, label %.preheader1189.preheader
    i32 29456, label %.preheader1192.preheader
    i32 33405, label %bb.hf
    i32 33421, label %bb.hg
    i32 33422, label %bb.hj
    i32 64777, label %bb.hk
    i32 33424, label %bb.ht
    i32 65024, label %bb.ht
    i32 33434, label %bb.hu
    i32 33437, label %bb.hv
    i32 37888, label %bb.hw
    i32 37889, label %bb.hz
    i32 37890, label %bb.ia
    i32 37891, label %bb.ib
    i32 37892, label %bb.ic
    i32 37893, label %bb.id
    i32 41989, label %bb.ie
    i32 42033, label %bb.if
    i32 50735, label %bb.if
    i32 42034, label %bb.ig
    i32 42037, label %bb.ih
    i32 50736, label %bb.ii
    i32 42016, label %bb.ij
    i32 50781, label %bb.ik
    i32 42035, label %bb.il
    i32 42036, label %bb.im
    i32 37381, label %bb.io
    i32 34306, label %.preheader1196.preheader
    i32 34307, label %bb.iu
    i32 34310, label %bb.iv
    i32 34303, label %bb.iw
    i32 34665, label %bb.ix
    i32 34853, label %bb.iy
    i32 34675, label %bb.iz
    i32 50831, label %bb.iz
    i32 37122, label %bb.ja
    i32 37386, label %bb.jb
    i32 37393, label %bb.jc
    i32 37397, label %bb.jd
    i32 37400, label %.thread1155.loopexit1502
    i32 40976, label %bb.je
    i32 46275, label %bb.ji
    i32 46279, label %bb.jj
    i32 46274, label %bb.jl
    i32 50454, label %bb.jy
    i32 50455, label %bb.jy
    i32 50458, label %bb.ke
    i32 50459, label %bb.kg
    i32 50706, label %bb.ki
    i32 50708, label %bb.kl
    i32 50710, label %bb.ko
    i32 50711, label %bb.kt
    i32 291, label %bb.kv
    i32 50712, label %bb.kv
    i32 50713, label %bb.kw
    i32 61452, label %bb.ky
    i32 61453, label %bb.mz
    i32 50709, label %bb.na
    i32 61450, label %bb.nb
    i32 50714, label %._crit_edge1840
    i32 50715, label %bb.np
    i32 50716, label %bb.np
    i32 50717, label %bb.nr
    i32 50718, label %bb.ns
    i32 50719, label %bb.nu
    i32 50720, label %bb.nx
    i32 51125, label %bb.oa
    i32 29895, label %bb.ol
    i32 29896, label %bb.oo
    i32 50778, label %bb.or
    i32 50779, label %bb.os
    i32 50721, label %bb.ot
    i32 50722, label %bb.ot
    i32 50964, label %bb.ou
    i32 50965, label %bb.ou
    i32 50723, label %bb.oy
    i32 50724, label %bb.oy
    i32 50727, label %bb.pb
    i32 50728, label %bb.pf
    i32 50729, label %.thread1155.loopexit1513
    i32 50730, label %bb.pj
    i32 50734, label %bb.pk
    i32 50740, label %bb.pl
    i32 50752, label %bb.qq
    i32 50827, label %bb.qr
    i32 50829, label %bb.qs
    i32 50830, label %.preheader1221
    i32 50970, label %bb.qt
    i32 51008, label %bb.qu
    i32 51009, label %bb.qw
    i32 51022, label %bb.qy
    i32 64772, label %bb.ra
    i32 65026, label %bb.rc
  ]

._crit_edge1840:                                  ; preds = %bb.es
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.nc

.preheader1196.preheader:                         ; preds = %bb.es
  %i.adn = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %.not1099 = icmp eq i16 %i.adn, 0
  br i1 %.not1099, label %.preheader1196.1, label %bb.iq

.preheader1192.preheader:                         ; preds = %bb.es
  %i.ado = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adp = zext i16 %i.ado to i32
  store i32 %i.adp, ptr %i.da, align 8, !tbaa !74
  %i.adq = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adr = zext i16 %i.adq to i32
  store i32 %i.adr, ptr %i.hm, align 4, !tbaa !74
  %i.ads = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adt = zext i16 %i.ads to i32
  store i32 %i.adt, ptr %i.hn, align 4, !tbaa !74
  %i.adu = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adv = zext i16 %i.adu to i32                 ; 2 uses
  %i.adw = load i32, ptr %i.dc, align 4, !tbaa !74 ; 2 uses
  %i.adx = load i32, ptr %i.da, align 8, !tbaa !74 ; 2 uses
  %spec.select1126 = call i32 @llvm.smin.i32(i32 %i.adw, i32 %i.adx)
  %i.ady = load i32, ptr %i.hm, align 4, !tbaa !74 ; 2 uses
  %spec.select1126.1 = call i32 @llvm.smin.i32(i32 %spec.select1126, i32 %i.ady)
  %spec.select1126.2 = call i32 @llvm.smin.i32(i32 %spec.select1126.1, i32 %i.adv) ; 5 uses
  %i.adz = sub i32 %i.adx, %spec.select1126.2
  store i32 %i.adz, ptr %i.da, align 8, !tbaa !74
  %i.aea = sub i32 %i.ady, %spec.select1126.2
  store i32 %i.aea, ptr %i.hm, align 4, !tbaa !74
  %i.aeb = sub i32 %i.adv, %spec.select1126.2
  store i32 %i.aeb, ptr %i.ho, align 8, !tbaa !74
  %i.aec = sub i32 %i.adw, %spec.select1126.2
  store i32 %i.aec, ptr %i.hn, align 4, !tbaa !74
  store i32 %spec.select1126.2, ptr %i.dj, align 8, !tbaa !217
  br label %.thread1155

.preheader1189.preheader:                         ; preds = %bb.es
  %i.aed = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aee = uitofp i16 %i.aed to float
  store float %i.aee, ptr %i.bd, align 4, !tbaa !213
  %i.aef = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeg = uitofp i16 %i.aef to float
  store float %i.aeg, ptr %i.hp, align 8, !tbaa !213
  %i.aeh = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aei = uitofp i16 %i.aeh to float
  store float %i.aei, ptr %i.hq, align 8, !tbaa !213
  %i.aej = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aek = uitofp i16 %i.aej to float
  store float %i.aek, ptr %i.hr, align 4, !tbaa !213
  br label %.thread1155

.preheader1187.preheader:                         ; preds = %bb.es
  %i.ael = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aem = uitofp i16 %i.ael to float
  store float %i.aem, ptr %i.hs, align 8, !tbaa !213
  %i.aen = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeo = uitofp i16 %i.aen to float
  store float %i.aeo, ptr %i.bd, align 4, !tbaa !213
  %i.aep = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeq = uitofp i16 %i.aep to float
  store float %i.aeq, ptr %i.ht, align 4, !tbaa !213
  %i.aer = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aes = uitofp i16 %i.aer to float
  store float %i.aes, ptr %i.hu, align 8, !tbaa !213
  br label %.thread1155

.preheader1186.preheader:                         ; preds = %bb.es
  %i.aet = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeu = lshr i16 %i.aet, 2
  %i.aev = and i16 %i.aeu, 4095                   ; 6 uses
  %i.aew = zext nneg i16 %i.aev to i32            ; 12 uses
  %i.aex = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aey = lshr i16 %i.aex, 2
  %i.aez = and i16 %i.aey, 4095                   ; 4 uses
  %i.afa = zext nneg i16 %i.aez to i32            ; 8 uses
  %i.afb = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afc = lshr i16 %i.afb, 2
  %i.afd = and i16 %i.afc, 4095                   ; 4 uses
  %i.afe = zext nneg i16 %i.afd to i32            ; 8 uses
  %i.aff = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afg = lshr i16 %i.aff, 2
  %i.afh = and i16 %i.afg, 4095                   ; 4 uses
  %i.afi = zext nneg i16 %i.afh to i32            ; 9 uses
  %.not11051408 = icmp eq i16 %i.aev, 0
  br i1 %.not11051408, label %.loopexit1172, label %iter.check2199

.preheader1182.preheader:                         ; preds = %bb.es
  %i.afj = load i32, ptr %i.b, align 4, !tbaa !74
  %i.afk = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.afj)
  %i.afl = uitofp i32 %i.afk to float
  store float %i.afl, ptr %i.hv, align 8, !tbaa !213
  %i.afm = load i32, ptr %i.b, align 4, !tbaa !74
  %i.afn = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.afm)
  %i.afo = uitofp i32 %i.afn to float
  store float %i.afo, ptr %i.bd, align 4, !tbaa !213
  %i.afp = load i32, ptr %i.b, align 4, !tbaa !74
  %i.afq = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.afp)
  %i.afr = uitofp i32 %i.afq to float
  store float %i.afr, ptr %i.hw, align 4, !tbaa !213
  br label %.thread1155

.preheader1221:                                   ; preds = %bb.es
  %i.afs = load i32, ptr %i.c, align 4, !tbaa !74
  %i.aft = icmp sgt i32 %i.afs, 0
  br i1 %i.aft, label %.lr.ph1297, label %._crit_edge1298

bb.et:                                            ; preds = %bb.es
  %i.afu = load ptr, ptr %i.r, align 8, !tbaa !71 ; 2 uses
  %i.afv = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afw = zext i32 %i.afv to i64
  %i.afx = add nsw i64 %1, %i.afw
  %i.afy = load ptr, ptr %i.afu, align 8, !tbaa !73
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 32
  %i.aga = load ptr, ptr %i.afz, align 8
  %i.agb = call noundef i32 %i.aga(ptr noundef nonnull align 8 dereferenceable(8) %i.afu, i64 noundef %i.afx, i32 noundef 0) ; 0 uses
  %i.agc = call noundef i32 @_ZN6LibRaw14parse_tiff_ifdEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1) ; 0 uses
  br label %.thread1155

bb.eu:                                            ; preds = %bb.es
  %i.agd = load i32, ptr %i.b, align 4, !tbaa !74
  %i.age = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.agd)
  %i.agf = fptosi double %i.age to i32
  %i.agg = sext i32 %.08611430 to i64
  %i.agh = getelementptr [33472 x i8], ptr %0, i64 %i.agg
  %i.agi = getelementptr i8, ptr %i.agh, i64 466976
  store i32 %i.agf, ptr %i.agi, align 8, !tbaa !99
  br label %.thread1155

bb.ev:                                            ; preds = %bb.es, %bb.es
  %i.agj = load i32, ptr %i.b, align 4, !tbaa !74
  %i.agk = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.agj)
  %i.agl = sext i32 %.08611430 to i64
  %i.agm = getelementptr inbounds [33472 x i8], ptr %i.au, i64 %i.agl
  store i32 %i.agk, ptr %i.agm, align 8, !tbaa !91
  br label %.thread1155

bb.ew:                                            ; preds = %bb.es, %bb.es
  %i.agn = load i32, ptr %i.b, align 4, !tbaa !74
  %i.ago = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.agn)
  %i.agp = sext i32 %.08611430 to i64
  %i.agq = getelementptr [33472 x i8], ptr %0, i64 %i.agp
  %i.agr = getelementptr i8, ptr %i.agq, i64 433516
  store i32 %i.ago, ptr %i.agr, align 4, !tbaa !92
  br label %.thread1155

bb.ex:                                            ; preds = %bb.es, %bb.es
  %i.ags = sext i32 %.08611430 to i64
  %i.agt = getelementptr inbounds [33472 x i8], ptr %i.au, i64 %i.ags ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 24 ; 2 uses
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !90
  %i.agw = icmp eq i32 %i.agv, 0
  %i.agx = icmp ne i32 %i.adm, 258
  %or.cond47 = or i1 %i.agx, %i.agw
  br i1 %or.cond47, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.agy = load i32, ptr %i.c, align 4, !tbaa !74
  %i.agz = and i32 %i.agy, 7
  store i32 %i.agz, ptr %i.agu, align 8, !tbaa !90
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey
  %i.aha = load i32, ptr %i.b, align 4, !tbaa !74
  %i.ahb = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.aha) ; 3 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  store i32 %i.ahb, ptr %i.ahc, align 8, !tbaa !84
  %i.ahd = load i32, ptr %i.gf, align 4, !tbaa !100
  %i.ahe = icmp ult i32 %i.ahd, %i.ahb
  br i1 %i.ahe, label %bb.fa, label %.thread1155

bb.fa:                                            ; preds = %bb.ez
  store i32 %i.ahb, ptr %i.gf, align 4, !tbaa !100
  br label %.thread1155

bb.fb:                                            ; preds = %bb.es
  store i16 0, ptr %i.ek, align 8, !tbaa !101
  %i.ahf = sext i32 %.08611430 to i64
  %i.ahg = getelementptr [33472 x i8], ptr %0, i64 %i.ahf
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 433520
  %i.ahi = load i32, ptr %i.ahh, align 8, !tbaa !84
  %i.ahj = icmp sgt i32 %i.ahi, 12
  br i1 %i.ahj, label %.thread1155, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i64 ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), ptr %i.as, align 8, !tbaa !97
  store i64 0, ptr %.repack998, align 8, !tbaa !97
  %i.ahk = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.not1122 = icmp eq i32 %i.ahk, 0
  %i.ahl = select i1 %.not1122, i32 80, i32 24
  store i32 %i.ahl, ptr %i.at, align 4, !tbaa !98
  br label %.thread1155

bb.fd:                                            ; preds = %bb.es
  %i.ahm = load i32, ptr %i.b, align 4, !tbaa !74
  %i.ahn = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ahm)
  %i.aho = sext i32 %.08611430 to i64
  %i.ahp = getelementptr [33472 x i8], ptr %0, i64 %i.aho
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 433524
  store i32 %i.ahn, ptr %i.ahq, align 4, !tbaa !87
  br label %.thread1155

bb.fe:                                            ; preds = %bb.es
  %i.ahr = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahs = zext i16 %i.ahr to i32
  %i.aht = sext i32 %.08611430 to i64
  %i.ahu = getelementptr [33472 x i8], ptr %0, i64 %i.aht
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 433528
  store i32 %i.ahs, ptr %i.ahv, align 8, !tbaa !86
  br label %.thread1155

bb.ff:                                            ; preds = %bb.es
  %i.ahw = load ptr, ptr %i.r, align 8, !tbaa !71 ; 2 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !73
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 24
  %i.ahz = load ptr, ptr %i.ahy, align 8
  %i.aia = call noundef i32 %i.ahz(ptr noundef nonnull align 8 dereferenceable(8) %i.ahw, ptr noundef nonnull %i.gd, i64 noundef 512, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.ge, align 1, !tbaa !102
  br label %.thread1155

bb.fg:                                            ; preds = %bb.es
  %i.aib = load ptr, ptr %i.r, align 8, !tbaa !71 ; 2 uses
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !73
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 64
  %i.aie = load ptr, ptr %i.aid, align 8
  %i.aif = call noundef ptr %i.aie(ptr noundef nonnull align 8 dereferenceable(8) %i.aib, ptr noundef nonnull %i.cz, i32 noundef 64) ; 0 uses
  br label %.thread1155

bb.fh:                                            ; preds = %bb.es
  %i.aig = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull dereferenceable(11) @.str.6, i64 noundef 10) #15
  %.not1118 = icmp eq i32 %i.aig, 0
  br i1 %.not1118, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.aih = load i8, ptr %i.ec, align 4, !tbaa !102
  %.not1119 = icmp eq i8 %i.aih, 0
  br i1 %.not1119, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aii = load i32, ptr %i.en, align 8, !tbaa !218
  %.not1120 = icmp eq i32 %i.aii, 3
  br i1 %.not1120, label %bb.fk, label %.thread1155

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %bb.fh
  %i.aij = load ptr, ptr %i.r, align 8, !tbaa !71 ; 2 uses
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !73
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 64
  %i.aim = load ptr, ptr %i.ail, align 8
  %i.ain = call noundef ptr %i.aim(ptr noundef nonnull align 8 dereferenceable(8) %i.aij, ptr noundef nonnull %i.ec, i32 noundef 64) ; 0 uses
  br label %.thread1155

bb.fl:                                            ; preds = %bb.es
  %i.aio = load i32, ptr %i.b, align 4, !tbaa !74
  %i.aip = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.aio)
  %i.aiq = sext i32 %.08611430 to i64
  %i.air = getelementptr [33472 x i8], ptr %0, i64 %i.aiq
  %i.ais = getelementptr i8, ptr %i.air, i64 433576
  store i32 %i.aip, ptr %i.ais, align 8, !tbaa !103
  br label %.thread1155

bb.fm:                                            ; preds = %bb.es
  %i.ait = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aiu = and i16 %i.ait, 7
  %i.aiv = zext nneg i16 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr @.str.7, i64 %i.aiv
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !102
  %i.aiy = sext i8 %i.aix to i32
  %i.aiz = add nsw i32 %i.aiy, -48
  %i.aja = sext i32 %.08611430 to i64
  %i.ajb = getelementptr [33472 x i8], ptr %0, i64 %i.aja
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 433532
  store i32 %i.aiz, ptr %i.ajc, align 4, !tbaa !104
  br label %.thread1155

bb.fn:                                            ; preds = %bb.es
  %i.ajd = load i32, ptr %i.b, align 4, !tbaa !74
  %i.aje = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ajd)
  %i.ajf = and i32 %i.aje, 7
  %i.ajg = sext i32 %.08611430 to i64
  %i.ajh = getelementptr [33472 x i8], ptr %0, i64 %i.ajg
  %i.aji = getelementptr i8, ptr %i.ajh, i64 433536
  store i32 %i.ajf, ptr %i.aji, align 8, !tbaa !90
  br label %.thread1155

end_hunk_0
begin_hunk_1_@_ZN6LibRaw14parse_tiff_ifdEx:bb.a
  %i.arl = sub nsw i32 %i.afe, %i.afa             ; 7 uses
  %min.iters.check2106 = icmp ult i32 %i.arl, 4
  br i1 %min.iters.check2106, label %vec.epilog.scalar.ph2126.preheader, label %vector.main.loop.iter.check2107

vector.main.loop.iter.check2107:                  ; preds = %iter.check2125
  %min.iters.check2108 = icmp ult i32 %i.arl, 16
  br i1 %min.iters.check2108, label %vec.epilog.ph2129, label %vector.ph2109

vector.ph2109:                                    ; preds = %vector.main.loop.iter.check2107
  %i.arm = and i32 %i.arl, 12
  %n.vec2110 = and i32 %i.arl, -16                ; 5 uses
  %i.arn = trunc nsw i32 %n.vec2110 to i16
  %i.aro = shl nsw i16 %i.arn, 2
  %i.arp = add i16 %.pre1851, %i.aro              ; 2 uses
  %i.arq = add nsw i32 %n.vec2110, %i.afa
  %broadcast.splatinsert2111 = insertelement <8 x i16> poison, i16 %.pre1851, i64 0
  %broadcast.splat2112 = shufflevector <8 x i16> %broadcast.splatinsert2111, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction2113 = add <8 x i16> %broadcast.splat2112, <i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28>
  br label %vector.body2114

vector.body2114:                                  ; preds = %vector.ph2109, %vector.body2114
  %index2115 = phi i32 [ 0, %vector.ph2109 ], [ %index.next2118, %vector.body2114 ] ; 2 uses
  %vec.ind2116 = phi <8 x i16> [ %induction2113, %vector.ph2109 ], [ %vec.ind.next2119, %vector.body2114 ] ; 3 uses
  %i.arr = add nuw i32 %index2115, %i.afa
  %i.ars = add <8 x i16> %vec.ind2116, splat (i16 4)
  %i.art = add <8 x i16> %vec.ind2116, splat (i16 36)
  %i.aru = sext i32 %i.arr to i64
  %i.arv = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.aru ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 2
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arv, i64 18
  store <8 x i16> %i.ars, ptr %i.arw, align 2, !tbaa !93
  store <8 x i16> %i.art, ptr %i.arx, align 2, !tbaa !93
  %index.next2118 = add nuw i32 %index2115, 16    ; 2 uses
  %vec.ind.next2119 = add <8 x i16> %vec.ind2116, splat (i16 64)
  %i.ary = icmp eq i32 %index.next2118, %n.vec2110
  br i1 %i.ary, label %middle.block2120, label %vector.body2114, !llvm.loop !143

middle.block2120:                                 ; preds = %vector.body2114
  %cmp.n2121 = icmp eq i32 %i.arl, %n.vec2110
  br i1 %cmp.n2121, label %.loopexit1172.2, label %vec.epilog.iter.check2127

vec.epilog.iter.check2127:                        ; preds = %middle.block2120
  %min.epilog.iters.check2128 = icmp eq i32 %i.arm, 0
  br i1 %min.epilog.iters.check2128, label %vec.epilog.scalar.ph2126.preheader, label %vec.epilog.ph2129, !prof !228

vec.epilog.ph2129:                                ; preds = %vector.main.loop.iter.check2107, %vec.epilog.iter.check2127
  %vec.epilog.resume.val2122 = phi i32 [ %n.vec2110, %vec.epilog.iter.check2127 ], [ 0, %vector.main.loop.iter.check2107 ]
  %bc.resume.val2123 = phi i16 [ %i.arp, %vec.epilog.iter.check2127 ], [ %.pre1851, %vector.main.loop.iter.check2107 ]
  %n.vec2130 = and i32 %i.arl, -4                 ; 4 uses
  %i.arz = trunc nsw i32 %n.vec2130 to i16
  %i.asa = shl nsw i16 %i.arz, 2
  %i.asb = add i16 %.pre1851, %i.asa
  %i.asc = add nsw i32 %n.vec2130, %i.afa
  %broadcast.splatinsert2131 = insertelement <4 x i16> poison, i16 %bc.resume.val2123, i64 0
  %broadcast.splat2132 = shufflevector <4 x i16> %broadcast.splatinsert2131, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction2133 = add <4 x i16> %broadcast.splat2132, <i16 0, i16 4, i16 8, i16 12>
  br label %vec.epilog.vector.body2134

vec.epilog.vector.body2134:                       ; preds = %vec.epilog.vector.body2134, %vec.epilog.ph2129
  %index2135 = phi i32 [ %vec.epilog.resume.val2122, %vec.epilog.ph2129 ], [ %index.next2137, %vec.epilog.vector.body2134 ] ; 2 uses
  %vec.ind2136 = phi <4 x i16> [ %induction2133, %vec.epilog.ph2129 ], [ %vec.ind.next2138, %vec.epilog.vector.body2134 ] ; 2 uses
  %i.asd = add nuw i32 %index2135, %i.afa
  %i.ase = add <4 x i16> %vec.ind2136, splat (i16 4)
  %i.asf = sext i32 %i.asd to i64
  %i.asg = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 2
  store <4 x i16> %i.ase, ptr %i.ash, align 2, !tbaa !93
  %index.next2137 = add nuw i32 %index2135, 4     ; 2 uses
  %vec.ind.next2138 = add <4 x i16> %vec.ind2136, splat (i16 16)
  %i.asi = icmp eq i32 %index.next2137, %n.vec2130
  br i1 %i.asi, label %vec.epilog.middle.block2139, label %vec.epilog.vector.body2134, !llvm.loop !144

vec.epilog.middle.block2139:                      ; preds = %vec.epilog.vector.body2134
  %cmp.n2140 = icmp eq i32 %i.arl, %n.vec2130
  br i1 %cmp.n2140, label %.loopexit1172.2, label %vec.epilog.scalar.ph2126.preheader

vec.epilog.scalar.ph2126.preheader:               ; preds = %iter.check2125, %vec.epilog.iter.check2127, %vec.epilog.middle.block2139
  %.ph2221 = phi i16 [ %.pre1851, %iter.check2125 ], [ %i.arp, %vec.epilog.iter.check2127 ], [ %i.asb, %vec.epilog.middle.block2139 ]
  %.28781410.2.in.ph = phi i32 [ %i.afa, %iter.check2125 ], [ %i.arq, %vec.epilog.iter.check2127 ], [ %i.asc, %vec.epilog.middle.block2139 ]
  br label %vec.epilog.scalar.ph2126

vec.epilog.scalar.ph2126:                         ; preds = %vec.epilog.scalar.ph2126.preheader, %vec.epilog.scalar.ph2126
  %i.asj = phi i16 [ %i.ask, %vec.epilog.scalar.ph2126 ], [ %.ph2221, %vec.epilog.scalar.ph2126.preheader ]
  %.28781410.2.in = phi i32 [ %.28781410.2, %vec.epilog.scalar.ph2126 ], [ %.28781410.2.in.ph, %vec.epilog.scalar.ph2126.preheader ]
  %.28781410.2 = add nuw nsw i32 %.28781410.2.in, 1 ; 3 uses
  %i.ask = add i16 %i.asj, 4                      ; 2 uses
  %i.asl = zext nneg i32 %.28781410.2 to i64
  %i.asm = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.asl
  store i16 %i.ask, ptr %i.asm, align 2, !tbaa !93
  %.not1105.2.not = icmp samesign ult i32 %.28781410.2, %i.afe
  br i1 %.not1105.2.not, label %vec.epilog.scalar.ph2126, label %.loopexit1172.2, !llvm.loop !145

.loopexit1172.2:                                  ; preds = %vec.epilog.scalar.ph2126, %middle.block2120, %vec.epilog.middle.block2139, %.loopexit1172.1
  %.not11051408.3.not = icmp samesign ult i16 %i.afd, %i.afh
  br i1 %.not11051408.3.not, label %iter.check2088, label %.loopexit1172.3

iter.check2088:                                   ; preds = %.loopexit1172.2
  %.phi.trans.insert1852 = zext nneg i16 %i.afd to i64
  %.phi.trans.insert1853 = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %.phi.trans.insert1852
  %.pre1854 = load i16, ptr %.phi.trans.insert1853, align 2, !tbaa !93 ; 5 uses
  %i.asn = sub nsw i32 %i.afi, %i.afe             ; 7 uses
  %min.iters.check2069 = icmp ult i32 %i.asn, 4
  br i1 %min.iters.check2069, label %vec.epilog.scalar.ph2089.preheader, label %vector.main.loop.iter.check2070

vector.main.loop.iter.check2070:                  ; preds = %iter.check2088
  %min.iters.check2071 = icmp ult i32 %i.asn, 16
  br i1 %min.iters.check2071, label %vec.epilog.ph2092, label %vector.ph2072

vector.ph2072:                                    ; preds = %vector.main.loop.iter.check2070
  %i.aso = and i32 %i.asn, 12
  %n.vec2073 = and i32 %i.asn, -16                ; 5 uses
  %i.asp = trunc nsw i32 %n.vec2073 to i16
  %i.asq = shl i16 %i.asp, 3
  %i.asr = add i16 %.pre1854, %i.asq              ; 2 uses
  %i.ass = add nsw i32 %n.vec2073, %i.afe
  %broadcast.splatinsert2074 = insertelement <8 x i16> poison, i16 %.pre1854, i64 0
  %broadcast.splat2075 = shufflevector <8 x i16> %broadcast.splatinsert2074, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction2076 = add <8 x i16> %broadcast.splat2075, <i16 0, i16 8, i16 16, i16 24, i16 32, i16 40, i16 48, i16 56>
  br label %vector.body2077

vector.body2077:                                  ; preds = %vector.ph2072, %vector.body2077
  %index2078 = phi i32 [ 0, %vector.ph2072 ], [ %index.next2081, %vector.body2077 ] ; 2 uses
  %vec.ind2079 = phi <8 x i16> [ %induction2076, %vector.ph2072 ], [ %vec.ind.next2082, %vector.body2077 ] ; 3 uses
  %i.ast = add nuw i32 %index2078, %i.afe
  %i.asu = add <8 x i16> %vec.ind2079, splat (i16 8)
  %i.asv = add <8 x i16> %vec.ind2079, splat (i16 72)
  %i.asw = sext i32 %i.ast to i64
  %i.asx = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.asw ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 2
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asx, i64 18
  store <8 x i16> %i.asu, ptr %i.asy, align 2, !tbaa !93
  store <8 x i16> %i.asv, ptr %i.asz, align 2, !tbaa !93
  %index.next2081 = add nuw i32 %index2078, 16    ; 2 uses
  %vec.ind.next2082 = add <8 x i16> %vec.ind2079, splat (i16 128)
  %i.ata = icmp eq i32 %index.next2081, %n.vec2073
  br i1 %i.ata, label %middle.block2083, label %vector.body2077, !llvm.loop !146

middle.block2083:                                 ; preds = %vector.body2077
  %cmp.n2084 = icmp eq i32 %i.asn, %n.vec2073
  br i1 %cmp.n2084, label %.loopexit1172.3, label %vec.epilog.iter.check2090

vec.epilog.iter.check2090:                        ; preds = %middle.block2083
  %min.epilog.iters.check2091 = icmp eq i32 %i.aso, 0
  br i1 %min.epilog.iters.check2091, label %vec.epilog.scalar.ph2089.preheader, label %vec.epilog.ph2092, !prof !228

vec.epilog.ph2092:                                ; preds = %vector.main.loop.iter.check2070, %vec.epilog.iter.check2090
  %vec.epilog.resume.val2085 = phi i32 [ %n.vec2073, %vec.epilog.iter.check2090 ], [ 0, %vector.main.loop.iter.check2070 ]
  %bc.resume.val2086 = phi i16 [ %i.asr, %vec.epilog.iter.check2090 ], [ %.pre1854, %vector.main.loop.iter.check2070 ]
  %n.vec2093 = and i32 %i.asn, -4                 ; 4 uses
  %i.atb = trunc nsw i32 %n.vec2093 to i16
  %i.atc = shl i16 %i.atb, 3
  %i.atd = add i16 %.pre1854, %i.atc
  %i.ate = add nsw i32 %n.vec2093, %i.afe
  %broadcast.splatinsert2094 = insertelement <4 x i16> poison, i16 %bc.resume.val2086, i64 0
  %broadcast.splat2095 = shufflevector <4 x i16> %broadcast.splatinsert2094, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction2096 = add <4 x i16> %broadcast.splat2095, <i16 0, i16 8, i16 16, i16 24>
  br label %vec.epilog.vector.body2097

vec.epilog.vector.body2097:                       ; preds = %vec.epilog.vector.body2097, %vec.epilog.ph2092
  %index2098 = phi i32 [ %vec.epilog.resume.val2085, %vec.epilog.ph2092 ], [ %index.next2100, %vec.epilog.vector.body2097 ] ; 2 uses
  %vec.ind2099 = phi <4 x i16> [ %induction2096, %vec.epilog.ph2092 ], [ %vec.ind.next2101, %vec.epilog.vector.body2097 ] ; 2 uses
  %i.atf = add nuw i32 %index2098, %i.afe
  %i.atg = add <4 x i16> %vec.ind2099, splat (i16 8)
  %i.ath = sext i32 %i.atf to i64
  %i.ati = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 2
  store <4 x i16> %i.atg, ptr %i.atj, align 2, !tbaa !93
  %index.next2100 = add nuw i32 %index2098, 4     ; 2 uses
  %vec.ind.next2101 = add <4 x i16> %vec.ind2099, splat (i16 32)
  %i.atk = icmp eq i32 %index.next2100, %n.vec2093
  br i1 %i.atk, label %vec.epilog.middle.block2102, label %vec.epilog.vector.body2097, !llvm.loop !147

vec.epilog.middle.block2102:                      ; preds = %vec.epilog.vector.body2097
  %cmp.n2103 = icmp eq i32 %i.asn, %n.vec2093
  br i1 %cmp.n2103, label %.loopexit1172.3, label %vec.epilog.scalar.ph2089.preheader

vec.epilog.scalar.ph2089.preheader:               ; preds = %iter.check2088, %vec.epilog.iter.check2090, %vec.epilog.middle.block2102
  %.ph2220 = phi i16 [ %.pre1854, %iter.check2088 ], [ %i.asr, %vec.epilog.iter.check2090 ], [ %i.atd, %vec.epilog.middle.block2102 ]
  %.28781410.3.in.ph = phi i32 [ %i.afe, %iter.check2088 ], [ %i.ass, %vec.epilog.iter.check2090 ], [ %i.ate, %vec.epilog.middle.block2102 ]
  br label %vec.epilog.scalar.ph2089

vec.epilog.scalar.ph2089:                         ; preds = %vec.epilog.scalar.ph2089.preheader, %vec.epilog.scalar.ph2089
  %i.atl = phi i16 [ %i.atm, %vec.epilog.scalar.ph2089 ], [ %.ph2220, %vec.epilog.scalar.ph2089.preheader ]
  %.28781410.3.in = phi i32 [ %.28781410.3, %vec.epilog.scalar.ph2089 ], [ %.28781410.3.in.ph, %vec.epilog.scalar.ph2089.preheader ]
  %.28781410.3 = add nuw nsw i32 %.28781410.3.in, 1 ; 3 uses
  %i.atm = add i16 %i.atl, 8                      ; 2 uses
  %i.atn = zext nneg i32 %.28781410.3 to i64
  %i.ato = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.atn
  store i16 %i.atm, ptr %i.ato, align 2, !tbaa !93
  %.not1105.3.not = icmp samesign ult i32 %.28781410.3, %i.afi
  br i1 %.not1105.3.not, label %vec.epilog.scalar.ph2089, label %.loopexit1172.3, !llvm.loop !148

.loopexit1172.3:                                  ; preds = %vec.epilog.scalar.ph2089, %middle.block2083, %vec.epilog.middle.block2102, %.loopexit1172.2
  %.not11051408.4 = icmp eq i16 %i.afh, 4095
  br i1 %.not11051408.4, label %.thread1155, label %iter.check

iter.check:                                       ; preds = %.loopexit1172.3
  %.phi.trans.insert1855 = zext nneg i16 %i.afh to i64
  %.phi.trans.insert1856 = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %.phi.trans.insert1855
  %.pre1857 = load i16, ptr %.phi.trans.insert1856, align 2, !tbaa !93 ; 5 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.afi, i32 4094)
  %3 = add nuw nsw i32 %umax, 1
  %4 = sub nsw i32 %3, %i.afi                     ; 7 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2056 = icmp ult i32 %4, 16
  br i1 %min.iters.check2056, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.atp = and i32 %4, 12
  %n.vec = and i32 %4, -16                        ; 5 uses
  %i.atq = trunc nsw i32 %n.vec to i16
  %i.atr = shl i16 %i.atq, 4
  %i.ats = add i16 %.pre1857, %i.atr              ; 2 uses
  %i.att = add nsw i32 %n.vec, %i.afi
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.pre1857, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i16> %broadcast.splat, <i16 0, i16 16, i16 32, i16 48, i16 64, i16 80, i16 96, i16 112>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.atu = add nuw i32 %index, %i.afi
  %i.atv = add <8 x i16> %vec.ind, splat (i16 16)
  %i.atw = add <8 x i16> %vec.ind, splat (i16 144)
  %i.atx = sext i32 %i.atu to i64
  %i.aty = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.atx ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 2
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aty, i64 18
  store <8 x i16> %i.atv, ptr %i.atz, align 2, !tbaa !93
  store <8 x i16> %i.atw, ptr %i.aua, align 2, !tbaa !93
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 256)
  %i.aub = icmp eq i32 %index.next, %n.vec
  br i1 %i.aub, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %4, %n.vec
  br i1 %cmp.n, label %.thread1155, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.atp, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i16 [ %i.ats, %vec.epilog.iter.check ], [ %.pre1857, %vector.main.loop.iter.check ]
  %n.vec2058 = and i32 %4, -4                     ; 4 uses
  %i.auc = trunc nsw i32 %n.vec2058 to i16
  %i.aud = shl i16 %i.auc, 4
  %i.aue = add i16 %.pre1857, %i.aud
  %i.auf = add nsw i32 %n.vec2058, %i.afi
  %broadcast.splatinsert2059 = insertelement <4 x i16> poison, i16 %bc.resume.val, i64 0
  %broadcast.splat2060 = shufflevector <4 x i16> %broadcast.splatinsert2059, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction2061 = add <4 x i16> %broadcast.splat2060, <i16 0, i16 16, i16 32, i16 48>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2062 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2064, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind2063 = phi <4 x i16> [ %induction2061, %vec.epilog.ph ], [ %vec.ind.next2065, %vec.epilog.vector.body ] ; 2 uses
  %i.aug = add nuw i32 %index2062, %i.afi
  %i.auh = add <4 x i16> %vec.ind2063, splat (i16 16)
  %i.aui = sext i32 %i.aug to i64
  %i.auj = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.aui
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 2
  store <4 x i16> %i.auh, ptr %i.auk, align 2, !tbaa !93
  %index.next2064 = add nuw i32 %index2062, 4     ; 2 uses
  %vec.ind.next2065 = add <4 x i16> %vec.ind2063, splat (i16 64)
  %i.aul = icmp eq i32 %index.next2064, %n.vec2058
  br i1 %i.aul, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !150

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2066 = icmp eq i32 %4, %n.vec2058
  br i1 %cmp.n2066, label %.thread1155, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i16 [ %.pre1857, %iter.check ], [ %i.ats, %vec.epilog.iter.check ], [ %i.aue, %vec.epilog.middle.block ]
  %.28781410.4.in.ph = phi i32 [ %i.afi, %iter.check ], [ %i.att, %vec.epilog.iter.check ], [ %i.auf, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.aum = phi i16 [ %i.aun, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %.28781410.4.in = phi i32 [ %.28781410.4, %vec.epilog.scalar.ph ], [ %.28781410.4.in.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.28781410.4 = add nuw nsw i32 %.28781410.4.in, 1 ; 2 uses
  %i.aun = add i16 %i.aum, 16                     ; 2 uses
  %i.auo = zext nneg i32 %.28781410.4 to i64
  %i.aup = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.auo
  store i16 %i.aun, ptr %i.aup, align 2, !tbaa !93
  %.not1105.4 = icmp samesign ugt i32 %.28781410.4.in, 4093
  br i1 %.not1105.4, label %.thread1155, label %vec.epilog.scalar.ph, !llvm.loop !151

iter.check2199:                                   ; preds = %.preheader1186.preheader
  %.pre1846 = load i16, ptr %i.fx, align 8, !tbaa !93 ; 5 uses
  %min.iters.check2180 = icmp samesign ult i16 %i.aev, 4
  br i1 %min.iters.check2180, label %vec.epilog.scalar.ph2200.preheader, label %vector.main.loop.iter.check2181

vector.main.loop.iter.check2181:                  ; preds = %iter.check2199
  %min.iters.check2182 = icmp samesign ult i16 %i.aev, 16
  br i1 %min.iters.check2182, label %vec.epilog.ph2203, label %vector.ph2183

vector.ph2183:                                    ; preds = %vector.main.loop.iter.check2181
  %i.auq = and i32 %i.aew, 12
  %n.vec2184 = and i32 %i.aew, 4080               ; 5 uses
  %i.aur = trunc nuw nsw i32 %n.vec2184 to i16
  %i.aus = add i16 %.pre1846, %i.aur              ; 2 uses
  %i.aut = or disjoint i32 %n.vec2184, 1
  %broadcast.splatinsert2185 = insertelement <8 x i16> poison, i16 %.pre1846, i64 0
  %broadcast.splat2186 = shufflevector <8 x i16> %broadcast.splatinsert2185, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction2187 = add <8 x i16> %broadcast.splat2186, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  br label %vector.body2188

vector.body2188:                                  ; preds = %vector.ph2183, %vector.body2188
  %index2189 = phi i32 [ 0, %vector.ph2183 ], [ %index.next2192, %vector.body2188 ] ; 2 uses
  %vec.ind2190 = phi <8 x i16> [ %induction2187, %vector.ph2183 ], [ %vec.ind.next2193, %vector.body2188 ] ; 3 uses
  %i.auu = add <8 x i16> %vec.ind2190, splat (i16 1)
  %i.auv = add <8 x i16> %vec.ind2190, splat (i16 9)
  %i.auw = sext i32 %index2189 to i64
  %i.aux = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.auw ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 2
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aux, i64 18
  store <8 x i16> %i.auu, ptr %i.auy, align 2, !tbaa !93
  store <8 x i16> %i.auv, ptr %i.auz, align 2, !tbaa !93
  %index.next2192 = add nuw i32 %index2189, 16    ; 2 uses
  %vec.ind.next2193 = add <8 x i16> %vec.ind2190, splat (i16 16)
  %i.ava = icmp eq i32 %index.next2192, %n.vec2184
  br i1 %i.ava, label %middle.block2194, label %vector.body2188, !llvm.loop !152

middle.block2194:                                 ; preds = %vector.body2188
  %cmp.n2195 = icmp eq i32 %n.vec2184, %i.aew
  br i1 %cmp.n2195, label %.loopexit1172, label %vec.epilog.iter.check2201

vec.epilog.iter.check2201:                        ; preds = %middle.block2194
  %min.epilog.iters.check2202 = icmp eq i32 %i.auq, 0
  br i1 %min.epilog.iters.check2202, label %vec.epilog.scalar.ph2200.preheader, label %vec.epilog.ph2203, !prof !228

vec.epilog.ph2203:                                ; preds = %vector.main.loop.iter.check2181, %vec.epilog.iter.check2201
  %vec.epilog.resume.val2196 = phi i32 [ %n.vec2184, %vec.epilog.iter.check2201 ], [ 0, %vector.main.loop.iter.check2181 ]
  %bc.resume.val2197 = phi i16 [ %i.aus, %vec.epilog.iter.check2201 ], [ %.pre1846, %vector.main.loop.iter.check2181 ]
  %n.vec2204 = and i32 %i.aew, 4092               ; 4 uses
  %i.avb = trunc nuw nsw i32 %n.vec2204 to i16
  %i.avc = add i16 %.pre1846, %i.avb
  %i.avd = or disjoint i32 %n.vec2204, 1
  %broadcast.splatinsert2205 = insertelement <4 x i16> poison, i16 %bc.resume.val2197, i64 0
  %broadcast.splat2206 = shufflevector <4 x i16> %broadcast.splatinsert2205, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction2207 = add <4 x i16> %broadcast.splat2206, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body2208

vec.epilog.vector.body2208:                       ; preds = %vec.epilog.vector.body2208, %vec.epilog.ph2203
  %index2209 = phi i32 [ %vec.epilog.resume.val2196, %vec.epilog.ph2203 ], [ %index.next2211, %vec.epilog.vector.body2208 ] ; 2 uses
  %vec.ind2210 = phi <4 x i16> [ %induction2207, %vec.epilog.ph2203 ], [ %vec.ind.next2212, %vec.epilog.vector.body2208 ] ; 2 uses
  %i.ave = add <4 x i16> %vec.ind2210, splat (i16 1)
  %i.avf = sext i32 %index2209 to i64
  %i.avg = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.avf
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 2
  store <4 x i16> %i.ave, ptr %i.avh, align 2, !tbaa !93
  %index.next2211 = add nuw i32 %index2209, 4     ; 2 uses
  %vec.ind.next2212 = add <4 x i16> %vec.ind2210, splat (i16 4)
  %i.avi = icmp eq i32 %index.next2211, %n.vec2204
  br i1 %i.avi, label %vec.epilog.middle.block2213, label %vec.epilog.vector.body2208, !llvm.loop !153

vec.epilog.middle.block2213:                      ; preds = %vec.epilog.vector.body2208
  %cmp.n2214 = icmp eq i32 %n.vec2204, %i.aew
  br i1 %cmp.n2214, label %.loopexit1172, label %vec.epilog.scalar.ph2200.preheader

vec.epilog.scalar.ph2200.preheader:               ; preds = %iter.check2199, %vec.epilog.iter.check2201, %vec.epilog.middle.block2213
  %.ph2223 = phi i16 [ %.pre1846, %iter.check2199 ], [ %i.aus, %vec.epilog.iter.check2201 ], [ %i.avc, %vec.epilog.middle.block2213 ]
  %.28781410.ph = phi i32 [ 1, %iter.check2199 ], [ %i.aut, %vec.epilog.iter.check2201 ], [ %i.avd, %vec.epilog.middle.block2213 ]
  br label %vec.epilog.scalar.ph2200

vec.epilog.scalar.ph2200:                         ; preds = %vec.epilog.scalar.ph2200.preheader, %vec.epilog.scalar.ph2200
  %i.avj = phi i16 [ %i.avk, %vec.epilog.scalar.ph2200 ], [ %.ph2223, %vec.epilog.scalar.ph2200.preheader ]
  %.28781410 = phi i32 [ %.2878, %vec.epilog.scalar.ph2200 ], [ %.28781410.ph, %vec.epilog.scalar.ph2200.preheader ] ; 3 uses
  %i.avk = add i16 %i.avj, 1                      ; 2 uses
  %i.avl = zext nneg i32 %.28781410 to i64
  %i.avm = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.avl
  store i16 %i.avk, ptr %i.avm, align 2, !tbaa !93
  %.2878 = add nuw nsw i32 %.28781410, 1
  %.not1105.not = icmp samesign ult i32 %.28781410, %i.aew
  br i1 %.not1105.not, label %vec.epilog.scalar.ph2200, label %.loopexit1172, !llvm.loop !154

bb.hb:                                            ; preds = %bb.es
  %i.avn = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %.thread1155

bb.hc:                                            ; preds = %bb.es
  %i.avo = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %.thread1155

bb.hd:                                            ; preds = %bb.es
  %i.avp = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %.thread1155

bb.he:                                            ; preds = %bb.es
  %i.avq = load ptr, ptr %i.r, align 8, !tbaa !71 ; 2 uses
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !73
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 40
  %i.avt = load ptr, ptr %i.avs, align 8
  %i.avu = call noundef i64 %i.avt(ptr noundef nonnull align 8 dereferenceable(8) %i.avq)
  call void @_ZN6LibRaw13parse_minoltaEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.avu)
  store i16 0, ptr %i.el, align 2, !tbaa !114
  br label %.thread1155

bb.hf:                                            ; preds = %bb.es
  %i.avv = load ptr, ptr %i.r, align 8, !tbaa !71 ; 2 uses
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !73
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 64
  %i.avy = load ptr, ptr %i.avx, align 8
  %i.avz = call noundef ptr %i.avy(ptr noundef nonnull align 8 dereferenceable(8) %i.avv, ptr noundef nonnull %i.df, i32 noundef 64) ; 0 uses
  br label %.thread1155

bb.hg:                                            ; preds = %bb.es
  %i.awa = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awb = icmp eq i16 %i.awa, 6
  br i1 %i.awb, label %bb.hh, label %.thread1155

bb.hh:                                            ; preds = %bb.hg
  %i.awc = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awd = icmp eq i16 %i.awc, 6
  br i1 %i.awd, label %bb.hi, label %.thread1155

bb.hi:                                            ; preds = %bb.hh
  store i32 9, ptr %i.bf, align 8, !tbaa !94
  %i.awe = sext i32 %.08611430 to i64
  %i.awf = getelementptr [33472 x i8], ptr %0, i64 %i.awe
  %i.awg = getelementptr i8, ptr %i.awf, i64 433612
  store i32 9, ptr %i.awg, align 4, !tbaa !115
  br label %.thread1155

bb.hj:                                            ; preds = %bb.es
  %i.awh = load i32, ptr %i.bf, align 8, !tbaa !94
  %i.awi = icmp eq i32 %i.awh, 9
  br i1 %i.awi, label %.preheader1193, label %bb.hk

.preheader1193:                                   ; preds = %bb.hj, %.preheader1193
  %indvars.iv1761 = phi i64 [ %indvars.iv.next1762, %.preheader1193 ], [ 0, %bb.hj ] ; 2 uses
  %i.awj = load ptr, ptr %i.r, align 8, !tbaa !71 ; 2 uses
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !73
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 56
  %i.awm = load ptr, ptr %i.awl, align 8
  %i.awn = call noundef i32 %i.awm(ptr noundef nonnull align 8 dereferenceable(8) %i.awj)
  %i.awo = trunc i32 %i.awn to i8
  %i.awp = and i8 %i.awo, 3
  %i.awq = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv1761
  store i8 %i.awp, ptr %i.awq, align 1, !tbaa !102
  %indvars.iv.next1762 = add nuw nsw i64 %indvars.iv1761, 1 ; 2 uses
  %exitcond1764.not = icmp eq i64 %indvars.iv.next1762, 36
  br i1 %exitcond1764.not, label %.thread1155, label %.preheader1193, !llvm.loop !155

bb.hk:                                            ; preds = %bb.hj, %bb.es
  %i.awr = load i32, ptr %i.c, align 4, !tbaa !74 ; 2 uses
  switch i32 %i.awr, label %.lr.ph1387 [
    i32 36, label %bb.hl
    i32 0, label %.thread1155
  ]

bb.hl:                                            ; preds = %bb.hk
  store i32 9, ptr %i.bf, align 8, !tbaa !94
  %i.aws = sext i32 %.08611430 to i64
  %i.awt = getelementptr [33472 x i8], ptr %0, i64 %i.aws
  %i.awu = getelementptr i8, ptr %i.awt, i64 433612
  store i32 9, ptr %i.awu, align 4, !tbaa !115
  store i32 3, ptr %i.ef, align 4, !tbaa !116
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hm
  %indvars.iv1747 = phi i64 [ 0, %bb.hl ], [ %indvars.iv.next1748, %bb.hm ] ; 2 uses
  %i.awv = load ptr, ptr %i.r, align 8, !tbaa !71 ; 2 uses
  %i.aww = load ptr, ptr %i.awv, align 8, !tbaa !73
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 56
  %i.awy = load ptr, ptr %i.awx, align 8
  %i.awz = call noundef i32 %i.awy(ptr noundef nonnull align 8 dereferenceable(8) %i.awv)
  %i.axa = trunc i32 %i.awz to i8
  %i.axb = and i8 %i.axa, 3
end_hunk_1
begin_hunk_2_@_ZN6LibRaw10apply_tiffEv:bb.a

bb.ih:                                            ; preds = %bb.ig
  %i.ahy = icmp eq i32 %i.aep, 6
  %or.cond.i = and i1 %i.ahy, %i.ahv
  %i.ahz = icmp eq i32 %i.aem, 12
  %or.cond3.i = and i1 %i.ahz, %or.cond.i
  %..i = select i1 %or.cond3.i, i32 10, i32 1
  br label %_ZL16tiff2thumbformatiiiPKcb.exit

bb.ii:                                            ; preds = %.critedge530
  br label %_ZL16tiff2thumbformatiiiPKcb.exit

bb.ij:                                            ; preds = %.critedge530
  %i.aia = icmp eq i32 %i.aep, 6
  %i.aib = select i1 %i.aia, i32 2, i32 3
  br label %_ZL16tiff2thumbformatiiiPKcb.exit

bb.ik:                                            ; preds = %.critedge530
  br label %_ZL16tiff2thumbformatiiiPKcb.exit

_ZL16tiff2thumbformatiiiPKcb.exit:                ; preds = %.critedge530, %bb.if, %bb.ig, %bb.ih, %bb.ii, %bb.ij, %bb.ik
  %.0.i = phi i32 [ 4, %bb.ik ], [ %i.aib, %bb.ij ], [ 5, %.critedge530 ], [ %..i, %bb.ih ], [ 8, %bb.ig ], [ 7, %bb.if ], [ 11, %bb.ii ]
  %i.aic = sext i32 %i.agy to i64
  %i.aid = getelementptr inbounds [32 x i8], ptr %i.adu, i64 %i.aic ; 7 uses
  store i32 %.0.i, ptr %i.aid, align 8, !tbaa !314
  %i.aie = trunc i32 %i.afe to i16
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  store i16 %i.aie, ptr %i.aif, align 4, !tbaa !315
  %i.aig = trunc i32 %i.aff to i16
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aid, i64 6
  store i16 %i.aig, ptr %i.aih, align 2, !tbaa !316
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aed, i64 20
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !104
  %i.aik = trunc i32 %i.aij to i16
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  store i16 %i.aik, ptr %i.ail, align 8, !tbaa !317
  %i.aim = trunc i64 %i.ahb to i32
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aid, i64 12
  store i32 %i.aim, ptr %i.ain, align 4, !tbaa !318
  %i.aio = shl i32 %i.aef, 5
  %i.aip = or i32 %i.aem, %i.aio
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  store i32 %i.aip, ptr %i.aiq, align 8, !tbaa !319
  %i.air = getelementptr inbounds nuw i8, ptr %i.aed, i64 32
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !83
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aid, i64 24
  store i64 %i.ais, ptr %i.ait, align 8, !tbaa !313
  %i.aiu = add nsw i32 %i.agy, 1
  store i32 %i.aiu, ptr %i.ads, align 8, !tbaa !311
  br label %.thread575

.thread575:                                       ; preds = %bb.hn, %.lr.ph635, %bb.hu, %bb.hw, %bb.hy, %bb.ia, %bb.ic, %bb.ie, %.thread570, %bb.hp, %_ZL16tiff2thumbformatiiiPKcb.exit, %bb.hg, %bb.hg, %bb.hc, %bb.he, %bb.hf, %bb.hi, %bb.hj, %bb.hs, %bb.hr
  %.2338 = phi i32 [ %.0336636, %bb.hc ], [ %.1337, %bb.hs ], [ %.1337, %bb.hr ], [ %.0336636, %bb.hp ], [ %.1337, %.lr.ph635 ], [ %.0336636, %bb.hj ], [ %.0336636, %bb.hi ], [ %.0336636, %bb.hg ], [ %.0336636, %bb.hg ], [ %.0336636, %bb.he ], [ %.0336636, %bb.hf ], [ %.1337, %_ZL16tiff2thumbformatiiiPKcb.exit ], [ %.0336636, %.thread570 ], [ %.1337, %bb.ie ], [ %.1337, %bb.ic ], [ %.1337, %bb.ia ], [ %.1337, %bb.hy ], [ %.1337, %bb.hw ], [ %.1337, %bb.hu ], [ %.0336636, %bb.hn ] ; 3 uses
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1 ; 2 uses
  %exitcond692.not = icmp eq i64 %indvars.iv.next689, %wide.trip.count691
  br i1 %exitcond692.not, label %._crit_edge642, label %bb.hc, !llvm.loop !295

._crit_edge642:                                   ; preds = %.thread575
  %i.aiv = icmp sgt i32 %.2338, -1
  br i1 %i.aiv, label %bb.il, label %._crit_edge642.thread

bb.il:                                            ; preds = %._crit_edge642
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 433512
  %i.aix = zext nneg i32 %.2338 to i64
  %i.aiy = getelementptr inbounds nuw [33472 x i8], ptr %i.aiw, i64 %i.aix ; 4 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 24
  %i.aja = load i32, ptr %i.aiz, align 8, !tbaa !90
  %i.ajb = shl i32 %i.aja, 5
  %i.ajc = load i32, ptr %i.d, align 4, !tbaa !296
  %i.ajd = or i32 %i.ajc, %i.ajb
  store i32 %i.ajd, ptr %i.d, align 4, !tbaa !296
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiy, i64 12
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !87
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %i.ajh = load i32, ptr %i.ajg, align 8, !tbaa !86 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !84 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ajl = load i32, ptr %i.om, align 4, !tbaa !85
  %i.ajm = icmp ne i32 %i.ajl, 0
  switch i32 %i.ajf, label %bb.ir [
    i32 0, label %_ZL16tiff2thumbformatiiiPKcb.exit538
    i32 1, label %bb.im
    i32 52546, label %bb.ip
    i32 65000, label %bb.iq
  ]

bb.im:                                            ; preds = %bb.il
  %i.ajn = icmp slt i32 %i.ajj, 9
  br i1 %i.ajn, label %_ZL16tiff2thumbformatiiiPKcb.exit538, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ajo = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ajk, ptr noundef nonnull dereferenceable(7) @.str.19, i64 noundef 6) #15
  %.not.i534 = icmp eq i32 %i.ajo, 0
  br i1 %.not.i534, label %_ZL16tiff2thumbformatiiiPKcb.exit538, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ajp = icmp eq i32 %i.ajh, 6
  %or.cond.i535 = and i1 %i.ajp, %i.ajm
  %i.ajq = icmp eq i32 %i.ajj, 12
  %or.cond3.i536 = and i1 %i.ajq, %or.cond.i535
  %..i537 = select i1 %or.cond3.i536, i32 10, i32 1
  br label %_ZL16tiff2thumbformatiiiPKcb.exit538

bb.ip:                                            ; preds = %bb.il
  br label %_ZL16tiff2thumbformatiiiPKcb.exit538

bb.iq:                                            ; preds = %bb.il
  %i.ajr = icmp eq i32 %i.ajh, 6
  %i.ajs = select i1 %i.ajr, i32 2, i32 3
  br label %_ZL16tiff2thumbformatiiiPKcb.exit538

bb.ir:                                            ; preds = %bb.il
  br label %_ZL16tiff2thumbformatiiiPKcb.exit538

_ZL16tiff2thumbformatiiiPKcb.exit538:             ; preds = %bb.il, %bb.im, %bb.in, %bb.io, %bb.ip, %bb.iq, %bb.ir
  %.0.i533 = phi i32 [ 4, %bb.ir ], [ %i.ajs, %bb.iq ], [ 5, %bb.il ], [ %..i537, %bb.io ], [ 8, %bb.in ], [ 7, %bb.im ], [ 11, %bb.ip ]
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 381824
  store i32 %.0.i533, ptr %i.ajt, align 8, !tbaa !320
  br label %._crit_edge642.thread

._crit_edge642.thread:                            ; preds = %bb.hb, %_ZL16tiff2thumbformatiiiPKcb.exit538, %._crit_edge642
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN6LibRaw18sony_arw2_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw17sony_arq_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare noundef ptr @_ZN6LibRaw10strcasestrEPcPKc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw23nikon_coolscan_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw18eight_bit_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw16olympus_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw19sony_ycbcr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw19sony_ljpeg_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw22lossless_jpeg_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw18kodak_262_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw18nikon_yuv_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512), double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw29nikon_load_striped_packed_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw14nikon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw28nikon_load_padded_packed_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw17nikon_he_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw15pentax_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw18kodak_rgb_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw20kodak_ycbcr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw20kodak_65000_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 short", !8, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!"_ZTS20libraw_image_sizes_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !5, i64 16, !11, i64 24, !5, i64 32, !4, i64 36, !10, i64 164, !4, i64 166}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !13, i64 432}
!15 = !{!"float", !4, i64 0}
!16 = !{!"_ZTS18libraw_nikonlens_t", !15, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!17 = !{!"_ZTS16libraw_dnglens_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!18 = !{!"long long", !4, i64 0}
!19 = !{!"_ZTS24libraw_makernotes_lens_t", !18, i64 0, !4, i64 8, !10, i64 136, !10, i64 138, !18, i64 144, !10, i64 152, !10, i64 154, !4, i64 156, !10, i64 220, !4, i64 222, !4, i64 238, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308, !15, i64 312, !18, i64 320, !4, i64 328, !18, i64 456, !4, i64 464, !18, i64 592, !4, i64 600, !10, i64 728, !15, i64 732}
!20 = !{!"_ZTS17libraw_lensinfo_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !10, i64 532, !16, i64 536, !17, i64 544, !19, i64 560}
!21 = !{!"_ZTS13libraw_area_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6}
!22 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !10, i64 52, !10, i64 54, !4, i64 56, !10, i64 58, !10, i64 60, !10, i64 62, !10, i64 64, !10, i64 66, !10, i64 68, !10, i64 70, !10, i64 72, !10, i64 74, !10, i64 76, !10, i64 78, !10, i64 80, !10, i64 82, !5, i64 84, !15, i64 88, !10, i64 92, !10, i64 94, !10, i64 96, !10, i64 98, !5, i64 100, !10, i64 104, !5, i64 108, !5, i64 112, !10, i64 116, !5, i64 120, !21, i64 124, !21, i64 132, !21, i64 140, !21, i64 148, !21, i64 156, !4, i64 164}
!23 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6}
!24 = !{!"_ZTS25libraw_nikon_makernotes_t", !11, i64 0, !10, i64 8, !10, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !10, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !10, i64 170, !23, i64 172, !10, i64 180, !10, i64 182, !10, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !13, i64 256, !10, i64 264, !10, i64 266, !4, i64 268, !10, i64 270, !11, i64 272, !11, i64 280, !11, i64 288}
!25 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !11, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!26 = !{!"_ZTS18libraw_fuji_info_t", !15, i64 0, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !10, i64 16, !10, i64 18, !4, i64 20, !4, i64 53, !15, i64 88, !10, i64 92, !10, i64 94, !4, i64 96, !10, i64 100, !5, i64 104, !5, i64 108, !10, i64 112, !4, i64 114, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !10, i64 128, !5, i64 132, !10, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !10, i64 168, !5, i64 172, !10, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!27 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !10, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !10, i64 82, !4, i64 84, !10, i64 88, !10, i64 90, !4, i64 92, !4, i64 352, !10, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !10, i64 416, !10, i64 418, !10, i64 420, !10, i64 422, !11, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !10, i64 456, !10, i64 458}
!28 = !{!"_ZTS18libraw_sony_info_t", !10, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !10, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !10, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !10, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !10, i64 54, !5, i64 56, !10, i64 60, !4, i64 62, !10, i64 66, !10, i64 68, !10, i64 70, !10, i64 72, !10, i64 74, !10, i64 76, !10, i64 78, !5, i64 80, !15, i64 84, !10, i64 88, !5, i64 92, !5, i64 96, !10, i64 100, !4, i64 102, !5, i64 124, !10, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !10, i64 138, !10, i64 140, !10, i64 142, !10, i64 144, !10, i64 146, !10, i64 148, !10, i64 150, !10, i64 152, !10, i64 154, !5, i64 156, !10, i64 160, !4, i64 162, !15, i64 180}
!29 = !{!"_ZTS25libraw_kodak_makernotes_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !15, i64 236, !15, i64 240}
!30 = !{!"_ZTS29libraw_panasonic_makernotes_t", !10, i64 0, !10, i64 2, !4, i64 4, !5, i64 36, !15, i64 40, !4, i64 44, !10, i64 56, !10, i64 58, !5, i64 60, !5, i64 64}
!31 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !10, i64 12, !5, i64 16, !5, i64 20, !10, i64 24, !4, i64 26, !10, i64 30, !4, i64 32, !4, i64 33, !10, i64 34}
!32 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!33 = !{!"_ZTS25libraw_ricoh_makernotes_t", !10, i64 0, !4, i64 4, !4, i64 12, !10, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !10, i64 40, !10, i64 42, !10, i64 44, !10, i64 46, !10, i64 48, !10, i64 50, !11, i64 56, !11, i64 64}
!34 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !11, i64 88, !5, i64 96, !4, i64 100}
!35 = !{!"_ZTS24libraw_metadata_common_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !10, i64 64, !4, i64 66, !15, i64 196, !4, i64 200, !5, i64 296}
!36 = !{!"_ZTS19libraw_makernotes_t", !22, i64 0, !24, i64 168, !25, i64 464, !26, i64 848, !27, i64 1200, !28, i64 1664, !29, i64 1848, !30, i64 2092, !31, i64 2160, !32, i64 2196, !33, i64 2648, !34, i64 2720, !35, i64 2856}
!37 = !{!"_ZTS21libraw_shootinginfo_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !4, i64 14, !4, i64 78}
!38 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !15, i64 128, !15, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !15, i64 248, !15, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !15, i64 288, !15, i64 292, !5, i64 296, !5, i64 300}
!39 = !{!"any p2 pointer", !8, i64 0}
!40 = !{!"p2 omnipotent char", !39, i64 0}
!41 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !15, i64 28, !4, i64 32, !40, i64 40}
!42 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !15, i64 32}
!43 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !4, i64 4, !5, i64 16420, !4, i64 16424, !15, i64 32840, !4, i64 32844, !4, i64 32860, !4, i64 32868, !5, i64 32884, !4, i64 32888, !4, i64 32904, !15, i64 32920, !15, i64 32924, !4, i64 32928}
!44 = !{!"_ZTS18libraw_colordata_t", !4, i64 0, !4, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !4, i64 147500, !15, i64 147516, !15, i64 147520, !4, i64 147524, !4, i64 147652, !4, i64 147668, !4, i64 147684, !4, i64 147732, !4, i64 147780, !4, i64 147828, !42, i64 147876, !15, i64 147912, !15, i64 147916, !4, i64 147920, !4, i64 147984, !4, i64 148048, !4, i64 148112, !4, i64 148176, !4, i64 148193, !8, i64 148264, !5, i64 148272, !4, i64 148276, !4, i64 148308, !43, i64 148648, !4, i64 181624, !4, i64 185720, !5, i64 187000, !4, i64 187004, !5, i64 187076, !5, i64 187080}
!45 = !{!"long", !4, i64 0}
!46 = !{!"_ZTS17libraw_gps_info_t", !4, i64 0, !4, i64 12, !4, i64 24, !15, i64 36, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44}
!47 = !{!"_ZTS17libraw_imgother_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !45, i64 16, !5, i64 24, !4, i64 28, !46, i64 156, !4, i64 204, !4, i64 716, !4, i64 780}
!48 = !{!"_ZTS24LibRaw_thumbnail_formats", !4, i64 0}
!49 = !{!"_ZTS18libraw_thumbnail_t", !48, i64 0, !10, i64 4, !10, i64 6, !5, i64 8, !5, i64 12, !13, i64 16}
!50 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !4, i64 8}
!51 = !{!"p1 float", !8, i64 0}
!52 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 12, !10, i64 14}
!53 = !{!"_ZTS16libraw_rawdata_t", !8, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !9, i64 56, !9, i64 64, !14, i64 72, !12, i64 512, !52, i64 696, !44, i64 712}
!54 = !{!"_ZTS13libraw_data_t", !9, i64 0, !12, i64 8, !14, i64 192, !20, i64 632, !36, i64 1928, !37, i64 5088, !38, i64 5232, !41, i64 5536, !5, i64 5584, !5, i64 5588, !44, i64 5592, !47, i64 192680, !49, i64 193480, !50, i64 193504, !53, i64 193768, !8, i64 381568}
!55 = !{!"p1 _ZTS10LibRaw_TLS", !8, i64 0}
!56 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !8, i64 0}
!57 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!58 = !{!"_ZTS15internal_data_t", !56, i64 0, !57, i64 8, !5, i64 16, !13, i64 24, !18, i64 32, !18, i64 40, !4, i64 48}
!59 = !{!"p1 int", !8, i64 0}
!60 = !{!"_ZTS13output_data_t", !59, i64 0, !59, i64 8}
!61 = !{!"_ZTS15identify_data_t", !5, i64 0, !18, i64 8, !18, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!62 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !4, i64 0}
!63 = !{!"_ZTS12pana8_tags_t", !4, i64 0, !4, i64 24, !10, i64 36, !4, i64 38, !4, i64 46, !4, i64 80, !4, i64 114, !10, i64 148, !10, i64 150, !4, i64 152, !4, i64 192, !4, i64 204, !4, i64 224, !4, i64 234}
!64 = !{!"_ZTS15unpacker_data_t", !10, i64 0, !4, i64 2, !4, i64 10, !5, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !62, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !18, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !63, i64 192, !4, i64 440, !5, i64 2488, !5, i64 2492, !10, i64 2496, !10, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !4, i64 2528, !10, i64 2608}
!65 = !{!"_ZTS22libraw_internal_data_t", !58, i64 0, !52, i64 64, !60, i64 80, !61, i64 96, !64, i64 136}
!66 = !{!"p1 _ZTS6decode", !8, i64 0}
!67 = !{!"_ZTS13libraw_memmgr", !39, i64 0, !5, i64 8}
!68 = !{!"_ZTS18libraw_callbacks_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!69 = !{!"_ZTS6LibRaw", !54, i64 8, !55, i64 381584, !65, i64 381592, !4, i64 384344, !66, i64 433496, !66, i64 433504, !4, i64 433512, !67, i64 768232, !68, i64 768248, !4, i64 768400, !4, i64 768416, !4, i64 768432, !8, i64 768448, !8, i64 768456, !8, i64 768464, !45, i64 768472, !8, i64 768480, !8, i64 768488, !8, i64 768496, !8, i64 768504}
!70 = !{!69, !5, i64 381712}
!71 = !{!69, !56, i64 381592}
!72 = !{!"vtable pointer", !3, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!5, !5, i64 0}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!69, !10, i64 381728}
!77 = !{!69, !5, i64 528}
!78 = !{!"p1 long long", !8, i64 0}
!79 = !{!"_ZTS10tiff_ifd_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !18, i64 32, !18, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !78, i64 72, !5, i64 80, !78, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !15, i64 124, !18, i64 128, !18, i64 136, !5, i64 144, !4, i64 148, !43, i64 488, !5, i64 33464}
!80 = !{!79, !78, i64 72}
!81 = !{!79, !5, i64 80}
!82 = !{!18, !18, i64 0}
!83 = !{!79, !18, i64 32}
!84 = !{!79, !5, i64 8}
!85 = !{!69, !5, i64 532}
!86 = !{!79, !5, i64 16}
!87 = !{!79, !5, i64 12}
!88 = !{!"_ZTS5jhead", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 56, !4, i64 184, !4, i64 312, !4, i64 472, !9, i64 632}
!89 = !{!88, !5, i64 4}
!90 = !{!79, !5, i64 24}
!91 = !{!79, !5, i64 0}
!92 = !{!79, !5, i64 4}
!93 = !{!10, !10, i64 0}
!94 = !{!69, !5, i64 544}
!95 = !{!69, !18, i64 381632}
!96 = !{!69, !5, i64 193496}
!97 = !{!69, !4, i64 768416}
!98 = !{!69, !5, i64 381860}
!99 = !{!79, !5, i64 33464}
!100 = !{!69, !5, i64 381836}
!101 = !{!69, !10, i64 16}
!102 = !{!4, !4, i64 0}
!103 = !{!79, !5, i64 64}
!104 = !{!79, !5, i64 20}
!105 = !{!79, !5, i64 28}
!106 = !{!79, !78, i64 88}
!107 = !{!79, !5, i64 96}
!108 = !{!79, !18, i64 40}
!109 = !{!69, !18, i64 381760}
!110 = !{!79, !5, i64 56}
!111 = !{!69, !5, i64 153096}
!112 = !{!"llvm.loop.isvectorized", i32 1}
!113 = !{!"llvm.loop.unroll.runtime.disable"}
!114 = !{!69, !10, i64 18}
!115 = !{!79, !5, i64 100}
!116 = !{!69, !5, i64 540}
!117 = !{!69, !15, i64 192692}
!118 = !{!79, !15, i64 124}
!119 = !{!69, !5, i64 381660}
!120 = !{!69, !10, i64 381670}
!121 = !{!79, !5, i64 120}
!122 = !{!"_ZTS10ifd_size_t", !5, i64 0, !18, i64 8}
!123 = !{!122, !18, i64 8}
!124 = distinct !{!124, !75}
!125 = distinct !{!125, !75}
!126 = distinct !{!126, !75}
!127 = distinct !{!127, !75}
!128 = distinct !{!128, !75}
!129 = distinct !{!129, !75}
!130 = distinct !{!130, !75}
!131 = distinct !{!131, !75}
!132 = distinct !{!132, !75}
!133 = distinct !{!133, !75}
!134 = distinct !{!134, !75}
!135 = distinct !{!135, !75}
!136 = distinct !{!136, !75}
!137 = distinct !{!137, !75, !216}
!138 = distinct !{!138, !75}
!139 = distinct !{!139, !75}
!140 = distinct !{!140, !75, !112, !113}
!141 = distinct !{!141, !75, !112, !113}
!142 = distinct !{!142, !75, !113, !112}
!143 = distinct !{!143, !75, !112, !113}
!144 = distinct !{!144, !75, !112, !113}
!145 = distinct !{!145, !75, !113, !112}
!146 = distinct !{!146, !75, !112, !113}
!147 = distinct !{!147, !75, !112, !113}
!148 = distinct !{!148, !75, !113, !112}
!149 = distinct !{!149, !75, !112, !113}
!150 = distinct !{!150, !75, !112, !113}
!151 = distinct !{!151, !75, !113, !112}
!152 = distinct !{!152, !75, !112, !113}
!153 = distinct !{!153, !75, !112, !113}
!154 = distinct !{!154, !75, !113, !112}
!155 = distinct !{!155, !75}
!156 = distinct !{!156, !75}
!157 = distinct !{!157, !75}
!158 = distinct !{!158, !75}
!159 = distinct !{!159, !75}
!160 = distinct !{!160, !75}
!161 = distinct !{!161, !75}
!162 = distinct !{!162, !75}
!163 = distinct !{!163, !75}
!164 = distinct !{!164, !75}
!165 = distinct !{!165, !75}
!166 = distinct !{!166, !75}
!167 = distinct !{!167, !75}
!168 = distinct !{!168, !75}
!169 = distinct !{!169, !75}
!170 = distinct !{!170, !75}
!171 = distinct !{!171, !75}
!172 = distinct !{!172, !75}
!173 = distinct !{!173, !75}
!174 = distinct !{!174, !75}
end_hunk_2

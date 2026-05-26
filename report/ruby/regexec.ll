inline.NumInlined: 154
inline.NumDeleted: 26
begin_hunk_0_@match_at:bb.a
bb.id:                                            ; preds = %bb.ic
  store ptr %.pre4575.a, ptr %5, align 8, !tbaa !36
  %i.ahp = getelementptr i8, ptr %5, i64 8
  store i64 %i.agy, ptr %i.ahp, align 8, !tbaa !61
  br label %.loopexit3548.a

stack_double.exit2921:                            ; preds = %bb.hx, %bb.ib
  %.153.i2918 = phi ptr [ %i.ahd, %bb.hx ], [ %i.ahn, %bb.ib ] ; 4 uses
  %.2.i2919 = phi i64 [ %i.ahf, %bb.hx ], [ %.050.i2917, %bb.ib ]
  %i.ahq = sub i64 %i.agt, %i.agw
  %i.ahr = getelementptr i8, ptr %.153.i2918, i64 %i.ahq ; 2 uses
  store ptr %i.ahr, ptr %i.o, align 8, !tbaa !59
  store ptr %.153.i2918, ptr %i.n, align 8, !tbaa !59
  %i.ahs = getelementptr [48 x i8], ptr %.153.i2918, i64 %.2.i2919
  store ptr %i.ahs, ptr %i.p, align 8, !tbaa !59
  br label %bb.ig

.loopexit3548.a:                                  ; preds = %bb.hw, %bb.ia, %bb.id, %bb.ic
  %.1.i2920.ph = phi i64 [ -5, %bb.ic ], [ -5, %bb.id ], [ -5, %bb.hw ], [ -15, %bb.ia ]
  %i.aht = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2758 = icmp eq ptr %i.aht, %i.bk
  br i1 %.not2758, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %.loopexit3548.a
  store ptr %i.aht, ptr %5, align 8, !tbaa !36
  %i.ahu = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.ahv = ptrtoint ptr %i.ahu to i64
  %i.ahw = ptrtoint ptr %i.aht to i64
  %i.ahx = sub i64 %i.ahv, %i.ahw
  %i.ahy = sdiv exact i64 %i.ahx, 48
  %i.ahz = getelementptr i8, ptr %5, i64 8
  store i64 %i.ahy, ptr %i.ahz, align 8, !tbaa !61
  br label %bb.if

bb.if:                                            ; preds = %.loopexit3548.a, %bb.ie
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3616

bb.ig:                                            ; preds = %stack_double.exit2921, %bb.ht
  %i.aia = phi ptr [ %.153.i2918, %stack_double.exit2921 ], [ %.pre4575.a, %bb.ht ]
  %i.aib = phi ptr [ %i.ahr, %stack_double.exit2921 ], [ %i.agr, %bb.ht ] ; 5 uses
  store i32 3328, ptr %i.aib, align 8, !tbaa !63
  %i.aic = icmp eq ptr %i.aib, %i.aia
  br i1 %i.aic, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aid = getelementptr i8, ptr %i.aib, i64 -40
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !65
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ig, %bb.ih
  %i.aif = phi i64 [ %i.aie, %bb.ih ], [ 0, %bb.ig ]
  %i.aig = getelementptr i8, ptr %i.aib, i64 8
  store i64 %i.aif, ptr %i.aig, align 8, !tbaa !65
  %i.aih = getelementptr i8, ptr %i.aib, i64 16
  store i64 %i.aey, ptr %i.aih, align 8, !tbaa !66
  %i.aii = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.aij = getelementptr i8, ptr %i.aii, i64 24
  store i8 %i.afb, ptr %i.aij, align 8, !tbaa !66
  %i.aik = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.ail = getelementptr i8, ptr %i.aik, i64 48
  store ptr %i.ail, ptr %i.o, align 8, !tbaa !59
  br label %bb.ij

bb.ij:                                            ; preds = %bb.hd, %bb.ii, %bb.he
  %i.aim = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.ain = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.aio = ptrtoint ptr %i.aim to i64             ; 2 uses
  %i.aip = ptrtoint ptr %i.ain to i64             ; 2 uses
  %i.aiq = sub i64 %i.aio, %i.aip
  %i.air = icmp slt i64 %i.aiq, 48
  br i1 %i.air, label %bb.ik, label %bb.iw

bb.ik:                                            ; preds = %bb.ij
  %i.ais = load ptr, ptr %i.n, align 8, !tbaa !59 ; 5 uses
  %i.ait = ptrtoint ptr %i.ais to i64             ; 2 uses
  %i.aiu = sub i64 %i.aio, %i.ait                 ; 3 uses
  %i.aiv = sdiv exact i64 %i.aiu, 48              ; 4 uses
  %i.aiw = icmp eq ptr %i.ais, %i.bk              ; 2 uses
  br i1 %i.aiw, label %bb.il, label %bb.io

bb.il:                                            ; preds = %bb.ik
  %i.aix = load ptr, ptr %5, align 8, !tbaa !36
  %i.aiy = icmp eq ptr %i.aix, null
  br i1 %i.aiy, label %bb.im, label %bb.io

bb.im:                                            ; preds = %bb.il
  %i.aiz = shl i64 %i.aiu, 1
  %i.aja = call noalias ptr @malloc(i64 noundef %i.aiz) #22 ; 3 uses
  %i.ajb = icmp eq ptr %i.aja, null
  br i1 %i.ajb, label %.loopexit3549, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aja, ptr noundef nonnull align 1 %i.ais, i64 noundef %i.aiu, i1 noundef false) #21
  %i.ajc = shl nsw i64 %i.aiv, 1
  br label %stack_double.exit2927

bb.io:                                            ; preds = %bb.il, %bb.ik
  %i.ajd = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7 ; 3 uses
  %i.aje = shl nsw i64 %i.aiv, 1                  ; 3 uses
  %.not.i2922 = icmp eq i32 %i.ajd, 0
  br i1 %.not.i2922, label %bb.ir, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.ajf = zext i32 %i.ajd to i64                 ; 2 uses
  %i.ajg = icmp ugt i64 %i.aje, %i.ajf
  br i1 %i.ajg, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ajh = trunc i64 %i.aiv to i32
  %i.aji = icmp eq i32 %i.ajd, %i.ajh
  br i1 %i.aji, label %.loopexit3549, label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip, %bb.io
  %.050.i2923 = phi i64 [ %i.aje, %bb.io ], [ %i.aje, %bb.ip ], [ %i.ajf, %bb.iq ] ; 2 uses
  %i.ajj = mul i64 %.050.i2923, 48
  %i.ajk = call ptr @realloc(ptr noundef %i.ais, i64 noundef %i.ajj) #23 ; 2 uses
  %i.ajl = icmp eq ptr %i.ajk, null
  br i1 %i.ajl, label %bb.is, label %stack_double.exit2927

bb.is:                                            ; preds = %bb.ir
  br i1 %i.aiw, label %.loopexit3549, label %bb.it

bb.it:                                            ; preds = %bb.is
  store ptr %i.ais, ptr %5, align 8, !tbaa !36
  %i.ajm = getelementptr i8, ptr %5, i64 8
  store i64 %i.aiv, ptr %i.ajm, align 8, !tbaa !61
  br label %.loopexit3549

stack_double.exit2927:                            ; preds = %bb.in, %bb.ir
  %.153.i2924 = phi ptr [ %i.aja, %bb.in ], [ %i.ajk, %bb.ir ] ; 3 uses
  %.2.i2925 = phi i64 [ %i.ajc, %bb.in ], [ %.050.i2923, %bb.ir ]
  %i.ajn = sub i64 %i.aip, %i.ait
  %i.ajo = getelementptr i8, ptr %.153.i2924, i64 %i.ajn ; 2 uses
  store ptr %i.ajo, ptr %i.o, align 8, !tbaa !59
  store ptr %.153.i2924, ptr %i.n, align 8, !tbaa !59
  %i.ajp = getelementptr [48 x i8], ptr %.153.i2924, i64 %.2.i2925
  store ptr %i.ajp, ptr %i.p, align 8, !tbaa !59
  br label %bb.iw

.loopexit3549:                                    ; preds = %bb.im, %bb.iq, %bb.it, %bb.is
  %.1.i2926.ph = phi i64 [ -5, %bb.is ], [ -5, %bb.it ], [ -5, %bb.im ], [ -15, %bb.iq ]
  %i.ajq = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2757 = icmp eq ptr %i.ajq, %i.bk
  br i1 %.not2757, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %.loopexit3549
  store ptr %i.ajq, ptr %5, align 8, !tbaa !36
  %i.ajr = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.ajs = ptrtoint ptr %i.ajr to i64
  %i.ajt = ptrtoint ptr %i.ajq to i64
  %i.aju = sub i64 %i.ajs, %i.ajt
  %i.ajv = sdiv exact i64 %i.aju, 48
  %i.ajw = getelementptr i8, ptr %5, i64 8
  store i64 %i.ajv, ptr %i.ajw, align 8, !tbaa !61
  br label %bb.iv

bb.iv:                                            ; preds = %.loopexit3549, %bb.iu
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3616

bb.iw:                                            ; preds = %stack_double.exit2927, %bb.ij
  %i.ajx = phi ptr [ %i.ajo, %stack_double.exit2927 ], [ %i.ain, %bb.ij ] ; 5 uses
  store i32 1, ptr %i.ajx, align 8, !tbaa !63
  %i.ajy = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.ajz = icmp eq ptr %i.ajx, %i.ajy
  br i1 %i.ajz, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aka = getelementptr i8, ptr %i.ajx, i64 -40
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !65
  br label %bb.iy

bb.iy:                                            ; preds = %bb.iw, %bb.ix
  %i.akc = phi i64 [ %i.akb, %bb.ix ], [ 0, %bb.iw ]
  %i.akd = getelementptr i8, ptr %i.ajx, i64 8
  store i64 %i.akc, ptr %i.akd, align 8, !tbaa !65
  %i.ake = getelementptr i8, ptr %i.ajx, i64 16
  store ptr %.25, ptr %i.ake, align 8, !tbaa !66
  %i.akf = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.akg = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.akh = getelementptr i8, ptr %i.akg, i64 24
  store ptr %i.akf, ptr %i.akh, align 8, !tbaa !66
  %i.aki = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.akj = getelementptr i8, ptr %i.aki, i64 32
  store ptr %.22180, ptr %i.akj, align 8, !tbaa !66
  %i.akk = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.akl = getelementptr i8, ptr %i.akk, i64 40
  store ptr %.02225, ptr %i.akl, align 8, !tbaa !66
  %i.akm = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.akn = getelementptr i8, ptr %i.akm, i64 48
  store ptr %i.akn, ptr %i.o, align 8, !tbaa !59
  %i.ako = load ptr, ptr %i.m, align 8, !tbaa !19 ; 4 uses
  %i.akp = load i32, ptr %i.cl, align 8, !tbaa !80 ; 2 uses
  %i.akq = load i32, ptr %i.cm, align 4, !tbaa !81
  %i.akr = icmp eq i32 %i.akp, %i.akq
  br i1 %i.akr, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.aks = icmp ult ptr %i.ako, %.3
  br i1 %i.aks, label %enclen_approx.exit2930, label %enclen_approx.exit2930.thread

bb.ja:                                            ; preds = %bb.iy
  %i.akt = call i32 @onigenc_mbclen_approximate(ptr noundef %i.ako, ptr noundef %.3, ptr noundef nonnull %i.af) #21
  %.pre4576.pre = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %enclen_approx.exit2930

enclen_approx.exit2930:                           ; preds = %bb.iz, %bb.ja
  %.pre4576 = phi ptr [ %.pre4576.pre, %bb.ja ], [ %i.ako, %bb.iz ] ; 3 uses
  %.0.i2928 = phi i32 [ %i.akt, %bb.ja ], [ %i.akp, %bb.iz ] ; 2 uses
  %i.aku = icmp sgt i32 %.0.i2928, 1
  br i1 %i.aku, label %bb.jb, label %enclen_approx.exit2930.thread

bb.jb:                                            ; preds = %enclen_approx.exit2930
  %i.akv = zext nneg i32 %.0.i2928 to i64
  %i.akw = getelementptr i8, ptr %.pre4576, i64 %i.akv ; 2 uses
  %i.akx = icmp ugt ptr %i.akw, %.3
  br i1 %i.akx, label %is_mbc_newline_ex.exit.thread, label %bb.jc

enclen_approx.exit2930.thread:                    ; preds = %bb.iz, %enclen_approx.exit2930
  %i.aky = phi ptr [ %i.ako, %bb.iz ], [ %.pre4576, %enclen_approx.exit2930 ] ; 2 uses
  %i.akz = getelementptr i8, ptr %i.aky, i64 1
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %enclen_approx.exit2930.thread
  %storemerge2756 = phi ptr [ %i.akz, %enclen_approx.exit2930.thread ], [ %i.akw, %bb.jb ]
  %.32181 = phi ptr [ %i.aky, %enclen_approx.exit2930.thread ], [ %.pre4576, %bb.jb ]
  store ptr %storemerge2756, ptr %i.m, align 8, !tbaa !19
  br label %bb.hc, !llvm.loop !91

bb.jd:                                            ; preds = %bb.hc
  %i.ala = getelementptr i8, ptr %.25, i64 1
  br label %.backedge.backedge

bb.je:                                            ; preds = %.backedge
  %i.alb = load ptr, ptr %i.m, align 8, !tbaa !19 ; 3 uses
  %i.alc = icmp ult ptr %i.alb, %.3
  br i1 %i.alc, label %.lr.ph4055, label %._crit_edge4056

.lr.ph4055:                                       ; preds = %bb.je
  %i.ald = getelementptr i8, ptr %.25, i64 1
  br label %bb.jf

bb.jf:                                            ; preds = %.lr.ph4055, %bb.lo
  %i.ale = phi ptr [ %i.alb, %.lr.ph4055 ], [ %i.ass, %bb.lo ]
  %.44053 = phi ptr [ %.19, %.lr.ph4055 ], [ %i.asr, %bb.lo ] ; 2 uses
  %i.alf = load i32, ptr %i.cr, align 8, !tbaa !46
  %i.alg = icmp eq i32 %i.alf, 0
  br i1 %i.alg, label %bb.jg, label %bb.kl

bb.jg:                                            ; preds = %bb.jf
  %i.alh = load ptr, ptr %i.cs, align 8, !tbaa !54
  %i.ali = load i64, ptr %i.ct, align 8, !tbaa !48
  %i.alj = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.alk = call fastcc i64 @find_cache_point(ptr noundef nonnull %0, ptr noundef %i.alh, i64 noundef %i.ali, ptr noundef nonnull %.pn.in.in, ptr noundef %i.alj, ptr noundef %.02226, ptr noundef %i.u) ; 2 uses
  %i.all = icmp sgt i64 %i.alk, -1
  %.pre4572.a = load ptr, ptr %i.m, align 8, !tbaa !19 ; 2 uses
  br i1 %i.all, label %bb.jh, label %bb.kl

bb.jh:                                            ; preds = %bb.jg
  %i.alm = load i64, ptr %i.cu, align 8, !tbaa !85
  %i.aln = ptrtoint ptr %.pre4572.a to i64
  %i.alo = sub i64 %i.aln, %i.cv
  %i.alp = mul i64 %i.alo, %i.alm
  %i.alq = add i64 %i.alp, %i.alk                 ; 2 uses
  %i.alr = ashr i64 %i.alq, 3                     ; 3 uses
  %i.als = trunc i64 %i.alq to i8
  %i.alt = and i8 %i.als, 7                       ; 4 uses
  %i.alu = shl nuw i8 1, %i.alt                   ; 2 uses
  %i.alv = load ptr, ptr %i.cn, align 8, !tbaa !55 ; 2 uses
  %i.alw = getelementptr i8, ptr %i.alv, i64 %i.alr
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !66 ; 3 uses
  %i.aly = and i8 %i.alu, %i.alx
  %.not2745 = icmp eq i8 %i.aly, 0
  br i1 %.not2745, label %bb.jv, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.alz = getelementptr i8, ptr %i.alv, i64 %i.alr ; 2 uses
  %i.ama = load ptr, ptr %i.u, align 8, !tbaa !86 ; 2 uses
  %i.amb = getelementptr i8, ptr %i.ama, i64 40
  %i.amc = load i32, ptr %i.amb, align 8, !tbaa !87 ; 2 uses
  %i.amd = icmp eq i32 %i.amc, 0
  br i1 %i.amd, label %is_mbc_newline_ex.exit.thread, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.ame = icmp slt i32 %i.amc, 0
  %.not.i2931.not = icmp eq i8 %i.alt, 7          ; 2 uses
  br i1 %i.ame, label %bb.jk, label %bb.jr

bb.jk:                                            ; preds = %bb.jj
  br i1 %.not.i2931.not, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.amf = getelementptr i8, ptr %i.alz, i64 1
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !66
  %i.amh = and i8 %i.amg, 1
  br label %check_extended_match_cache_point.exit2933

bb.jm:                                            ; preds = %bb.jk
  %i.ami = shl nuw i8 2, %i.alt
  %i.amj = and i8 %i.ami, %i.alx
  br label %check_extended_match_cache_point.exit2933

check_extended_match_cache_point.exit2933:        ; preds = %bb.jl, %bb.jm
  %.0.i2932.in = phi i8 [ %i.amh, %bb.jl ], [ %i.amj, %bb.jm ]
  %.0.i2932 = icmp eq i8 %.0.i2932.in, 0
  br i1 %.0.i2932, label %is_mbc_newline_ex.exit.thread, label %.preheader3551

.preheader3551:                                   ; preds = %check_extended_match_cache_point.exit2933, %.preheader3551.backedge
  %i.amk = load ptr, ptr %i.o, align 8, !tbaa !59 ; 4 uses
  %i.aml = getelementptr i8, ptr %i.amk, i64 -48  ; 2 uses
  store ptr %i.aml, ptr %i.o, align 8, !tbaa !59
  %i.amm = load i32, ptr %i.aml, align 8, !tbaa !63
  switch i32 %i.amm, label %.preheader3551.backedge [
    i32 1536, label %bb.jn
    i32 3328, label %bb.jo
  ]

bb.jn:                                            ; preds = %.preheader3551
  %i.amn = getelementptr i8, ptr %i.amk, i64 -48
  store i32 2560, ptr %i.amn, align 8, !tbaa !63
  br label %is_mbc_newline_ex.exit.thread

bb.jo:                                            ; preds = %.preheader3551
  %i.amo = load ptr, ptr %i.cn, align 8, !tbaa !55
  %i.amp = getelementptr i8, ptr %i.amk, i64 -32
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !66
  %i.amr = getelementptr i8, ptr %i.amk, i64 -24
  %i.ams = load i8, ptr %i.amr, align 8, !tbaa !66 ; 3 uses
  %i.amt = getelementptr i8, ptr %i.amo, i64 %i.amq ; 4 uses
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !66
  %i.amv = or i8 %i.amu, %i.ams                   ; 2 uses
  store i8 %i.amv, ptr %i.amt, align 1, !tbaa !66
  %.not.i2934 = icmp sgt i8 %i.ams, -1
  br i1 %.not.i2934, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.amw = getelementptr i8, ptr %i.amt, i64 1    ; 2 uses
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !66
  %i.amy = or i8 %i.amx, 1
  store i8 %i.amy, ptr %i.amw, align 1, !tbaa !66
  br label %.preheader3551.backedge

bb.jq:                                            ; preds = %bb.jo
  %i.amz = shl nuw i8 %i.ams, 1
  %i.ana = or i8 %i.amv, %i.amz
  store i8 %i.ana, ptr %i.amt, align 1, !tbaa !66
  br label %.preheader3551.backedge

.preheader3551.backedge:                          ; preds = %bb.jq, %bb.jp, %.preheader3551
  br label %.preheader3551

bb.jr:                                            ; preds = %bb.jj
  br i1 %.not.i2931.not, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.anb = getelementptr i8, ptr %i.alz, i64 1
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !66
  %i.and = and i8 %i.anc, 1
  br label %check_extended_match_cache_point.exit2938

bb.jt:                                            ; preds = %bb.jr
  %i.ane = shl nuw i8 2, %i.alt
  %i.anf = and i8 %i.ane, %i.alx
  br label %check_extended_match_cache_point.exit2938

check_extended_match_cache_point.exit2938:        ; preds = %bb.js, %bb.jt
  %.0.i2937.in = phi i8 [ %i.and, %bb.js ], [ %i.anf, %bb.jt ]
  %.0.i2937 = icmp eq i8 %.0.i2937.in, 0
  br i1 %.0.i2937, label %is_mbc_newline_ex.exit.thread, label %bb.ju

bb.ju:                                            ; preds = %check_extended_match_cache_point.exit2938
  %i.ang = getelementptr i8, ptr %i.ama, i64 48
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !89 ; 2 uses
  %i.ani = getelementptr i8, ptr %i.anh, i64 1
  br label %.backedge.backedge

bb.jv:                                            ; preds = %bb.jh
  %i.anj = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.ank = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.anl = ptrtoint ptr %i.anj to i64             ; 2 uses
  %i.anm = ptrtoint ptr %i.ank to i64             ; 2 uses
  %i.ann = sub i64 %i.anl, %i.anm
  %i.ano = icmp slt i64 %i.ann, 48
  %.pre4570.a = load ptr, ptr %i.n, align 8, !tbaa !59 ; 6 uses
  br i1 %i.ano, label %bb.jw, label %bb.ki

bb.jw:                                            ; preds = %bb.jv
  %i.anp = ptrtoint ptr %.pre4570.a to i64        ; 2 uses
  %i.anq = sub i64 %i.anl, %i.anp                 ; 3 uses
  %i.anr = sdiv exact i64 %i.anq, 48              ; 4 uses
  %i.ans = icmp eq ptr %.pre4570.a, %i.bk         ; 2 uses
  br i1 %i.ans, label %bb.jx, label %bb.ka

bb.jx:                                            ; preds = %bb.jw
  %i.ant = load ptr, ptr %5, align 8, !tbaa !36
  %i.anu = icmp eq ptr %i.ant, null
  br i1 %i.anu, label %bb.jy, label %bb.ka

bb.jy:                                            ; preds = %bb.jx
  %i.anv = shl i64 %i.anq, 1
end_hunk_0
begin_hunk_1_@match_at:bb.a
  %.1.i2972.ph = phi i64 [ -5, %bb.mp ], [ -5, %bb.mq ], [ -5, %bb.mj ], [ -15, %bb.mn ]
  %i.awh = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2742 = icmp eq ptr %i.awh, %i.bk
  br i1 %.not2742, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %.loopexit3556.a
  store ptr %i.awh, ptr %5, align 8, !tbaa !36
  %i.awi = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.awj = ptrtoint ptr %i.awi to i64
  %i.awk = ptrtoint ptr %i.awh to i64
  %i.awl = sub i64 %i.awj, %i.awk
  %i.awm = sdiv exact i64 %i.awl, 48
  %i.awn = getelementptr i8, ptr %5, i64 8
  store i64 %i.awm, ptr %i.awn, align 8, !tbaa !61
  br label %bb.ms

bb.ms:                                            ; preds = %.loopexit3556.a, %bb.mr
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3616

bb.mt:                                            ; preds = %stack_double.exit2973, %bb.mg
  %i.awo = phi ptr [ %.153.i2970, %stack_double.exit2973 ], [ %.pre4565.a, %bb.mg ]
  %i.awp = phi ptr [ %i.awf, %stack_double.exit2973 ], [ %i.avf, %bb.mg ] ; 5 uses
  store i32 3328, ptr %i.awp, align 8, !tbaa !63
  %i.awq = icmp eq ptr %i.awp, %i.awo
  br i1 %i.awq, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.awr = getelementptr i8, ptr %i.awp, i64 -40
  %i.aws = load i64, ptr %i.awr, align 8, !tbaa !65
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mt, %bb.mu
  %i.awt = phi i64 [ %i.aws, %bb.mu ], [ 0, %bb.mt ]
  %i.awu = getelementptr i8, ptr %i.awp, i64 8
  store i64 %i.awt, ptr %i.awu, align 8, !tbaa !65
  %i.awv = getelementptr i8, ptr %i.awp, i64 16
  store i64 %i.atm, ptr %i.awv, align 8, !tbaa !66
  %i.aww = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.awx = getelementptr i8, ptr %i.aww, i64 24
  store i8 %i.atp, ptr %i.awx, align 8, !tbaa !66
  %i.awy = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.awz = getelementptr i8, ptr %i.awy, i64 48
  store ptr %i.awz, ptr %i.o, align 8, !tbaa !59
  %.pre4566 = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %bb.mw

bb.mw:                                            ; preds = %bb.lq, %bb.mv, %bb.lr
  %i.axa = phi ptr [ %i.asz, %bb.lq ], [ %.pre4566, %bb.mv ], [ %.pre4567.a, %bb.lr ] ; 2 uses
  %i.axb = load i8, ptr %.25, align 1, !tbaa !66
  %i.axc = load i8, ptr %i.axa, align 1, !tbaa !66
  %i.axd = icmp eq i8 %i.axb, %i.axc
  br i1 %i.axd, label %bb.mx, label %bb.nn

bb.mx:                                            ; preds = %bb.mw
  %i.axe = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.axf = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.axg = ptrtoint ptr %i.axe to i64             ; 2 uses
  %i.axh = ptrtoint ptr %i.axf to i64             ; 2 uses
  %i.axi = sub i64 %i.axg, %i.axh
  %i.axj = icmp slt i64 %i.axi, 48
  br i1 %i.axj, label %bb.my, label %bb.nk

bb.my:                                            ; preds = %bb.mx
  %i.axk = load ptr, ptr %i.n, align 8, !tbaa !59 ; 5 uses
  %i.axl = ptrtoint ptr %i.axk to i64             ; 2 uses
  %i.axm = sub i64 %i.axg, %i.axl                 ; 3 uses
  %i.axn = sdiv exact i64 %i.axm, 48              ; 4 uses
  %i.axo = icmp eq ptr %i.axk, %i.bk              ; 2 uses
  br i1 %i.axo, label %bb.mz, label %bb.nc

bb.mz:                                            ; preds = %bb.my
  %i.axp = load ptr, ptr %5, align 8, !tbaa !36
  %i.axq = icmp eq ptr %i.axp, null
  br i1 %i.axq, label %bb.na, label %bb.nc

bb.na:                                            ; preds = %bb.mz
  %i.axr = shl i64 %i.axm, 1
  %i.axs = call noalias ptr @malloc(i64 noundef %i.axr) #22 ; 3 uses
  %i.axt = icmp eq ptr %i.axs, null
  br i1 %i.axt, label %.loopexit3557, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.axs, ptr noundef nonnull align 1 %i.axk, i64 noundef %i.axm, i1 noundef false) #21
  %i.axu = shl nsw i64 %i.axn, 1
  br label %stack_double.exit2979

bb.nc:                                            ; preds = %bb.mz, %bb.my
  %i.axv = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7 ; 3 uses
  %i.axw = shl nsw i64 %i.axn, 1                  ; 3 uses
  %.not.i2974 = icmp eq i32 %i.axv, 0
  br i1 %.not.i2974, label %bb.nf, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.axx = zext i32 %i.axv to i64                 ; 2 uses
  %i.axy = icmp ugt i64 %i.axw, %i.axx
  br i1 %i.axy, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.axz = trunc i64 %i.axn to i32
  %i.aya = icmp eq i32 %i.axv, %i.axz
  br i1 %i.aya, label %.loopexit3557, label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd, %bb.nc
  %.050.i2975 = phi i64 [ %i.axw, %bb.nc ], [ %i.axw, %bb.nd ], [ %i.axx, %bb.ne ] ; 2 uses
  %i.ayb = mul i64 %.050.i2975, 48
  %i.ayc = call ptr @realloc(ptr noundef %i.axk, i64 noundef %i.ayb) #23 ; 2 uses
  %i.ayd = icmp eq ptr %i.ayc, null
  br i1 %i.ayd, label %bb.ng, label %stack_double.exit2979

bb.ng:                                            ; preds = %bb.nf
  br i1 %i.axo, label %.loopexit3557, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  store ptr %i.axk, ptr %5, align 8, !tbaa !36
  %i.aye = getelementptr i8, ptr %5, i64 8
  store i64 %i.axn, ptr %i.aye, align 8, !tbaa !61
  br label %.loopexit3557

stack_double.exit2979:                            ; preds = %bb.nb, %bb.nf
  %.153.i2976 = phi ptr [ %i.axs, %bb.nb ], [ %i.ayc, %bb.nf ] ; 3 uses
  %.2.i2977 = phi i64 [ %i.axu, %bb.nb ], [ %.050.i2975, %bb.nf ]
  %i.ayf = sub i64 %i.axh, %i.axl
  %i.ayg = getelementptr i8, ptr %.153.i2976, i64 %i.ayf ; 2 uses
  store ptr %i.ayg, ptr %i.o, align 8, !tbaa !59
  store ptr %.153.i2976, ptr %i.n, align 8, !tbaa !59
  %i.ayh = getelementptr [48 x i8], ptr %.153.i2976, i64 %.2.i2977
  store ptr %i.ayh, ptr %i.p, align 8, !tbaa !59
  br label %bb.nk

.loopexit3557:                                    ; preds = %bb.na, %bb.ne, %bb.nh, %bb.ng
  %.1.i2978.ph = phi i64 [ -5, %bb.ng ], [ -5, %bb.nh ], [ -5, %bb.na ], [ -15, %bb.ne ]
  %i.ayi = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2741 = icmp eq ptr %i.ayi, %i.bk
  br i1 %.not2741, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %.loopexit3557
  store ptr %i.ayi, ptr %5, align 8, !tbaa !36
  %i.ayj = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.ayk = ptrtoint ptr %i.ayj to i64
  %i.ayl = ptrtoint ptr %i.ayi to i64
  %i.aym = sub i64 %i.ayk, %i.ayl
  %i.ayn = sdiv exact i64 %i.aym, 48
  %i.ayo = getelementptr i8, ptr %5, i64 8
  store i64 %i.ayn, ptr %i.ayo, align 8, !tbaa !61
  br label %bb.nj

bb.nj:                                            ; preds = %.loopexit3557, %bb.ni
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3616

bb.nk:                                            ; preds = %stack_double.exit2979, %bb.mx
  %i.ayp = phi ptr [ %i.ayg, %stack_double.exit2979 ], [ %i.axf, %bb.mx ] ; 5 uses
  store i32 1, ptr %i.ayp, align 8, !tbaa !63
  %i.ayq = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.ayr = icmp eq ptr %i.ayp, %i.ayq
  br i1 %i.ayr, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.ays = getelementptr i8, ptr %i.ayp, i64 -40
  %i.ayt = load i64, ptr %i.ays, align 8, !tbaa !65
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nk, %bb.nl
  %i.ayu = phi i64 [ %i.ayt, %bb.nl ], [ 0, %bb.nk ]
  %i.ayv = getelementptr i8, ptr %i.ayp, i64 8
  store i64 %i.ayu, ptr %i.ayv, align 8, !tbaa !65
  %i.ayw = getelementptr i8, ptr %i.ayp, i64 16
  store ptr %i.asy, ptr %i.ayw, align 8, !tbaa !66
  %i.ayx = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.ayy = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.ayz = getelementptr i8, ptr %i.ayy, i64 24
  store ptr %i.ayx, ptr %i.ayz, align 8, !tbaa !66
  %i.aza = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.azb = getelementptr i8, ptr %i.aza, i64 32
  store ptr %.54046, ptr %i.azb, align 8, !tbaa !66
  %i.azc = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.azd = getelementptr i8, ptr %i.azc, i64 40
  store ptr %.02225, ptr %i.azd, align 8, !tbaa !66
  %i.aze = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.azf = getelementptr i8, ptr %i.aze, i64 48
  store ptr %i.azf, ptr %i.o, align 8, !tbaa !59
  %.pre4568.a = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %bb.no

bb.nn:                                            ; preds = %bb.mw
  %i.azg = load i64, ptr %i.co, align 8, !tbaa !47
  %i.azh = add i64 %i.azg, 1
  store i64 %i.azh, ptr %i.co, align 8, !tbaa !47
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %bb.nm
  %i.azi = phi ptr [ %i.axa, %bb.nn ], [ %.pre4568.a, %bb.nm ] ; 4 uses
  %i.azj = load i32, ptr %i.cl, align 8, !tbaa !80 ; 2 uses
  %i.azk = load i32, ptr %i.cm, align 4, !tbaa !81
  %i.azl = icmp eq i32 %i.azj, %i.azk
  br i1 %i.azl, label %bb.np, label %bb.nq

bb.np:                                            ; preds = %bb.no
  %i.azm = icmp ult ptr %i.azi, %.3
  br i1 %i.azm, label %enclen_approx.exit2982, label %enclen_approx.exit2982.thread

bb.nq:                                            ; preds = %bb.no
  %i.azn = call i32 @onigenc_mbclen_approximate(ptr noundef %i.azi, ptr noundef %.3, ptr noundef nonnull %i.af) #21
  %.pre4569.pre = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %enclen_approx.exit2982

enclen_approx.exit2982:                           ; preds = %bb.np, %bb.nq
  %.pre4569 = phi ptr [ %.pre4569.pre, %bb.nq ], [ %i.azi, %bb.np ] ; 3 uses
  %.0.i2980 = phi i32 [ %i.azn, %bb.nq ], [ %i.azj, %bb.np ] ; 2 uses
  %i.azo = icmp sgt i32 %.0.i2980, 1
  br i1 %i.azo, label %bb.nr, label %enclen_approx.exit2982.thread

bb.nr:                                            ; preds = %enclen_approx.exit2982
  %i.azp = zext nneg i32 %.0.i2980 to i64
  %i.azq = getelementptr i8, ptr %.pre4569, i64 %i.azp ; 2 uses
  %i.azr = icmp ugt ptr %i.azq, %.3
  br i1 %i.azr, label %is_mbc_newline_ex.exit.thread, label %bb.ns

enclen_approx.exit2982.thread:                    ; preds = %bb.np, %enclen_approx.exit2982
  %i.azs = phi ptr [ %i.azi, %bb.np ], [ %.pre4569, %enclen_approx.exit2982 ] ; 2 uses
  %i.azt = getelementptr i8, ptr %i.azs, i64 1
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %enclen_approx.exit2982.thread
  %storemerge = phi ptr [ %i.azt, %enclen_approx.exit2982.thread ], [ %i.azq, %bb.nr ] ; 3 uses
  %.6 = phi ptr [ %i.azs, %enclen_approx.exit2982.thread ], [ %.pre4569, %bb.nr ]
  store ptr %storemerge, ptr %i.m, align 8, !tbaa !19
  %i.azu = icmp ult ptr %storemerge, %.3
  br i1 %i.azu, label %bb.lq, label %._crit_edge4049, !llvm.loop !93

._crit_edge4049:                                  ; preds = %bb.ns, %bb.lp
  %i.azv = getelementptr i8, ptr %.25, i64 1
  %i.azw = getelementptr i8, ptr %.25, i64 2
  br label %.backedge.backedge

bb.nt:                                            ; preds = %.backedge
  %i.azx = load ptr, ptr %i.m, align 8, !tbaa !19 ; 3 uses
  %i.azy = getelementptr i8, ptr %i.azx, i64 1
  %i.azz = icmp ugt ptr %i.azy, %.3
  br i1 %i.azz, label %is_mbc_newline_ex.exit.thread, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.baa = load ptr, ptr %i.dg, align 8, !tbaa !94
  %i.bab = load ptr, ptr %i.dc, align 8, !tbaa !82
  %i.bac = call i32 %i.bab(ptr noundef %i.azx, ptr noundef %.3, ptr noundef %i.af) #21
  %i.bad = call i32 %i.baa(i32 noundef %i.bac, i32 noundef 12, ptr noundef %i.af) #21
  %.not2737 = icmp eq i32 %i.bad, 0
  br i1 %.not2737, label %is_mbc_newline_ex.exit.thread, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.bae = load i32, ptr %i.cl, align 8, !tbaa !80 ; 2 uses
  %i.baf = load i32, ptr %i.cm, align 4, !tbaa !81
  %i.bag = icmp eq i32 %i.bae, %i.baf
  %i.bah = load ptr, ptr %i.m, align 8, !tbaa !19 ; 3 uses
  br i1 %i.bag, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.bai = icmp ult ptr %i.bah, %.3
  %spec.select2842 = select i1 %i.bai, i32 %i.bae, i32 0
  br label %bb.ny

bb.nx:                                            ; preds = %bb.nv
  %i.baj = call i32 @onigenc_mbclen(ptr noundef %i.bah, ptr noundef %.3, ptr noundef nonnull %i.af) #21
  %.pre4564 = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nw, %bb.nx
  %i.bak = phi ptr [ %.pre4564, %bb.nx ], [ %i.bah, %bb.nw ]
  %i.bal = phi i32 [ %i.baj, %bb.nx ], [ %spec.select2842, %bb.nw ]
  %i.bam = sext i32 %i.bal to i64
  %i.ban = getelementptr i8, ptr %i.bak, i64 %i.bam
  store ptr %i.ban, ptr %i.m, align 8, !tbaa !19
  %i.bao = getelementptr i8, ptr %.25, i64 1
  br label %.backedge.backedge

bb.nz:                                            ; preds = %.backedge
  %i.bap = load ptr, ptr %i.m, align 8, !tbaa !19 ; 4 uses
  %i.baq = getelementptr i8, ptr %i.bap, i64 1
  %i.bar = icmp ugt ptr %i.baq, %.3
  br i1 %i.bar, label %is_mbc_newline_ex.exit.thread, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bas = load i32, ptr %i.cm, align 4, !tbaa !81
  %i.bat = icmp eq i32 %i.bas, 1
  br i1 %i.bat, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.oa
  %i.bau = load i32, ptr %i.df, align 8, !tbaa !95
  %i.bav = and i32 %i.bau, 16777216
  %.not2724.not = icmp eq i32 %i.bav, 0
  br i1 %.not2724.not, label %bb.ob, label %rb_enc_asciicompat.exit.thread

bb.ob:                                            ; preds = %rb_enc_asciicompat.exit
  %i.baw = load i8, ptr %i.bap, align 1, !tbaa !66 ; 3 uses
  %i.bax = and i8 %i.baw, -33
  %i.bay = add i8 %i.bax, -65
  %narrow.i.i = icmp ult i8 %i.bay, 26
  %i.baz = add i8 %i.baw, -48
  %i.bba = icmp ult i8 %i.baz, 10
  %narrow.i = or i1 %i.bba, %narrow.i.i
  %i.bbb = icmp eq i8 %i.baw, 95
  %or.cond2843 = or i1 %i.bbb, %narrow.i
  br i1 %or.cond2843, label %bb.oc, label %is_mbc_newline_ex.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.oa, %rb_enc_asciicompat.exit
  %i.bbc = load ptr, ptr %i.dc, align 8, !tbaa !82
  %i.bbd = call i32 %i.bbc(ptr noundef %i.bap, ptr noundef %.3, ptr noundef nonnull %i.af) #21
  %i.bbe = call i32 @onigenc_ascii_is_code_ctype(i32 noundef %i.bbd, i32 noundef 12, ptr noundef nonnull %i.af) #21
  %.not2725 = icmp eq i32 %i.bbe, 0
  br i1 %.not2725, label %is_mbc_newline_ex.exit.thread, label %rb_enc_asciicompat.exit.thread._crit_edge

rb_enc_asciicompat.exit.thread._crit_edge:        ; preds = %rb_enc_asciicompat.exit.thread
  %.pre4561.a = load i32, ptr %i.cm, align 4, !tbaa !81
  br label %bb.oc

bb.oc:                                            ; preds = %rb_enc_asciicompat.exit.thread._crit_edge, %bb.ob
  %i.bbf = phi i32 [ %.pre4561.a, %rb_enc_asciicompat.exit.thread._crit_edge ], [ 1, %bb.ob ] ; 2 uses
  %i.bbg = load i32, ptr %i.cl, align 8, !tbaa !80
  %i.bbh = icmp eq i32 %i.bbg, %i.bbf
  %i.bbi = load ptr, ptr %i.m, align 8, !tbaa !19 ; 3 uses
  br i1 %i.bbh, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc
  %i.bbj = icmp ult ptr %i.bbi, %.3
  %spec.select2844 = select i1 %i.bbj, i32 %i.bbf, i32 0
  br label %bb.of

bb.oe:                                            ; preds = %bb.oc
  %i.bbk = call i32 @onigenc_mbclen(ptr noundef %i.bbi, ptr noundef %.3, ptr noundef nonnull %i.af) #21
  %.pre4562.a = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %bb.of

bb.of:                                            ; preds = %bb.od, %bb.oe
  %i.bbl = phi ptr [ %.pre4562.a, %bb.oe ], [ %i.bbi, %bb.od ]
  %i.bbm = phi i32 [ %i.bbk, %bb.oe ], [ %spec.select2844, %bb.od ]
  %i.bbn = sext i32 %i.bbm to i64
  %i.bbo = getelementptr i8, ptr %i.bbl, i64 %i.bbn
  store ptr %i.bbo, ptr %i.m, align 8, !tbaa !19
  %i.bbp = getelementptr i8, ptr %.25, i64 1
  br label %.backedge.backedge

bb.og:                                            ; preds = %.backedge
  %i.bbq = load ptr, ptr %i.m, align 8, !tbaa !19 ; 3 uses
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 1
  %i.bbs = icmp ugt ptr %i.bbr, %.3
  br i1 %i.bbs, label %is_mbc_newline_ex.exit.thread, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.bbt = load ptr, ptr %i.dg, align 8, !tbaa !94
  %i.bbu = load ptr, ptr %i.dc, align 8, !tbaa !82
  %i.bbv = call i32 %i.bbu(ptr noundef %i.bbq, ptr noundef %.3, ptr noundef %i.af) #21
  %i.bbw = call i32 %i.bbt(i32 noundef %i.bbv, i32 noundef 12, ptr noundef %i.af) #21
  %.not2736 = icmp eq i32 %i.bbw, 0
  br i1 %.not2736, label %bb.oi, label %is_mbc_newline_ex.exit.thread

bb.oi:                                            ; preds = %bb.oh
  %i.bbx = load i32, ptr %i.cl, align 8, !tbaa !80 ; 2 uses
  %i.bby = load i32, ptr %i.cm, align 4, !tbaa !81
  %i.bbz = icmp eq i32 %i.bbx, %i.bby
  %i.bca = load ptr, ptr %i.m, align 8, !tbaa !19 ; 3 uses
  br i1 %i.bbz, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  %i.bcb = icmp ult ptr %i.bca, %.3
  %spec.select2845 = select i1 %i.bcb, i32 %i.bbx, i32 0
  br label %bb.ol

bb.ok:                                            ; preds = %bb.oi
  %i.bcc = call i32 @onigenc_mbclen(ptr noundef %i.bca, ptr noundef %.3, ptr noundef nonnull %i.af) #21
  %.pre4563 = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %bb.ol

bb.ol:                                            ; preds = %bb.oj, %bb.ok
  %i.bcd = phi ptr [ %.pre4563, %bb.ok ], [ %i.bca, %bb.oj ]
  %i.bce = phi i32 [ %i.bcc, %bb.ok ], [ %spec.select2845, %bb.oj ]
  %i.bcf = sext i32 %i.bce to i64
  %i.bcg = getelementptr i8, ptr %i.bcd, i64 %i.bcf
  store ptr %i.bcg, ptr %i.m, align 8, !tbaa !19
  %i.bch = getelementptr i8, ptr %.25, i64 1
  br label %.backedge.backedge

bb.om:                                            ; preds = %.backedge
  %i.bci = load ptr, ptr %i.m, align 8, !tbaa !19 ; 4 uses
  %i.bcj = getelementptr i8, ptr %i.bci, i64 1
  %i.bck = icmp ugt ptr %i.bcj, %.3
  br i1 %i.bck, label %is_mbc_newline_ex.exit.thread, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.bcl = load i32, ptr %i.cm, align 4, !tbaa !81
  %i.bcm = icmp eq i32 %i.bcl, 1
  br i1 %i.bcm, label %rb_enc_asciicompat.exit2984, label %rb_enc_asciicompat.exit2984.thread

rb_enc_asciicompat.exit2984:                      ; preds = %bb.on
  %i.bcn = load i32, ptr %i.df, align 8, !tbaa !95
  %i.bco = and i32 %i.bcn, 16777216
  %.not2721.not = icmp eq i32 %i.bco, 0
  br i1 %.not2721.not, label %bb.oo, label %rb_enc_asciicompat.exit2984.thread

bb.oo:                                            ; preds = %rb_enc_asciicompat.exit2984
  %i.bcp = load i8, ptr %i.bci, align 1, !tbaa !66 ; 3 uses
end_hunk_1
begin_hunk_2_@onig_search_gpos:bb.a
  %i.at = icmp ugt ptr %3, %4
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = icmp ult ptr %3, %5
  %i.av = getelementptr i8, ptr %3, i64 1
  %spec.select = select i1 %i.au, ptr %i.av, ptr %5
  br label %bb.aq

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr i8, ptr %4, i64 1
  br label %bb.aq

bb.j:                                             ; preds = %bb.e
  %i.ax = and i32 %i.ap, 1
  %.not464 = icmp eq i32 %i.ax, 0
  br i1 %.not464, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp ugt ptr %5, %4
  br i1 %i.ay, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not473 = icmp eq ptr %4, %1
  br i1 %.not473, label %bb.m, label %onig_region_clear.exit

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr i8, ptr %1, i64 1
  br label %bb.aq

bb.n:                                             ; preds = %bb.k
  %.not472 = icmp ugt ptr %5, %1
  br i1 %.not472, label %onig_region_clear.exit, label %bb.aq

bb.o:                                             ; preds = %bb.j
  %i.ba = and i32 %i.ap, 8
  %.not465 = icmp eq i32 %i.ba, 0
  br i1 %.not465, label %bb.aa, label %.thread

.thread:                                          ; preds = %bb.ab, %bb.aj, %bb.o
  %.0373 = phi ptr [ %2, %bb.o ], [ %2, %bb.ab ], [ %.1374, %bb.aj ] ; 3 uses
  %i.bb = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !126 ; 5 uses
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %onig_region_clear.exit, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.bh = icmp ugt ptr %5, %4
  %i.bi = ptrtoint ptr %.0373 to i64              ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 120
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !127 ; 4 uses
  br i1 %i.bh, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bl = ptrtoint ptr %4 to i64
  %i.bm = sub i64 %i.bi, %i.bl
  %i.bn = icmp ugt i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bo = sub i64 0, %i.bk
  %i.bp = getelementptr i8, ptr %.0373, i64 %i.bo ; 3 uses
  %i.bq = icmp ult ptr %i.bp, %2
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr i8, ptr %0, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.bt = tail call ptr @onigenc_get_right_adjust_char_head(ptr noundef %i.bs, ptr noundef %1, ptr noundef %i.bp, ptr noundef nonnull %2) #21
  %.pre664 = load i64, ptr %i.be, align 8, !tbaa !126
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.bu = phi i64 [ %.pre664, %bb.s ], [ %i.bf, %bb.r ], [ %i.bf, %bb.q ] ; 3 uses
  %.0407 = phi ptr [ %i.bt, %bb.s ], [ %i.bp, %bb.r ], [ %4, %bb.q ] ; 2 uses
  %i.bv = getelementptr i8, ptr %5, i64 -1
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bb, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.bu
  br i1 %i.by, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bz = add i64 %i.bd, 1
  %i.ca = icmp ult i64 %i.bz, %i.bu
  br i1 %i.ca, label %onig_region_clear.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = sub i64 0, %i.bu
  %i.cc = getelementptr i8, ptr %2, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0402 = phi ptr [ %i.cd, %bb.v ], [ %5, %bb.t ] ; 2 uses
  %i.ce = icmp ugt ptr %.0407, %.0402
  br i1 %i.ce, label %onig_region_clear.exit, label %bb.aq

bb.x:                                             ; preds = %bb.p
  %i.cf = ptrtoint ptr %5 to i64
  %i.cg = sub i64 %i.bi, %i.cf
  %i.ch = icmp ugt i64 %i.cg, %i.bk
  %i.ci = sub i64 0, %i.bk
  %i.cj = getelementptr i8, ptr %.0373, i64 %i.ci
  %.1403 = select i1 %i.ch, ptr %i.cj, ptr %5     ; 2 uses
  %i.ck = ptrtoint ptr %4 to i64
  %i.cl = sub i64 %i.bb, %i.ck
  %i.cm = icmp ult i64 %i.cl, %i.bf
  br i1 %i.cm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cn = sub i64 0, %i.bf
  %i.co = getelementptr i8, ptr %2, i64 %i.cn
  %i.cp = getelementptr i8, ptr %0, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !53 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 104
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !128
  %i.ct = tail call ptr %i.cs(ptr noundef %1, ptr noundef %i.co, ptr noundef nonnull %2, ptr noundef %i.cq) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1408 = phi ptr [ %i.ct, %bb.y ], [ %4, %bb.x ] ; 2 uses
  %i.cu = icmp ugt ptr %.1403, %.1408
  br i1 %i.cu, label %onig_region_clear.exit, label %bb.aq

bb.aa:                                            ; preds = %bb.o
  %i.cv = and i32 %i.ap, 16
  %.not466 = icmp eq i32 %i.cv, 0
  br i1 %.not466, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr i8, ptr %0, i64 72        ; 6 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !53
  %i.cy = tail call ptr @onigenc_step_back(ptr noundef %i.cx, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %2, i32 noundef 1) #21 ; 6 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !53 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !84
  %i.dc = tail call i32 %i.db(ptr noundef %i.cy, ptr noundef nonnull %2, ptr noundef %i.cz) #21
  %.not468 = icmp eq i32 %i.dc, 0
  br i1 %.not468, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !53
  %i.de = tail call ptr @onigenc_step_back(ptr noundef %i.dd, ptr noundef %1, ptr noundef %i.cy, ptr noundef nonnull %2, i32 noundef 1) #21 ; 6 uses
  %.not469 = icmp eq ptr %i.de, null
  br i1 %.not469, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = getelementptr i8, ptr %0, i64 56
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !56
  %i.dh = and i32 %i.dg, 65536
  %.not470 = icmp eq i32 %i.dh, 0
  br i1 %.not470, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = load ptr, ptr %i.cw, align 8, !tbaa !53 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !82
  %i.dl = tail call i32 %i.dk(ptr noundef nonnull %i.de, ptr noundef nonnull %2, ptr noundef %i.di) #21
  %i.dm = icmp eq i32 %i.dl, 13
  br i1 %i.dm, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.dn = load ptr, ptr %i.cw, align 8, !tbaa !53 ; 5 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !82
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !80 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dn, i64 20
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !81
  %i.du = icmp eq i32 %i.dr, %i.dt
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dv = icmp ult ptr %i.de, %2
  %spec.select497 = select i1 %i.dv, i32 %i.dr, i32 0
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dw = tail call i32 @onigenc_mbclen(ptr noundef nonnull %i.de, ptr noundef nonnull %2, ptr noundef nonnull %i.dn) #21
  %.pre = load ptr, ptr %i.cw, align 8, !tbaa !53
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.dx = phi ptr [ %.pre, %bb.ah ], [ %i.dn, %bb.ag ]
  %i.dy = phi i32 [ %i.dw, %bb.ah ], [ %spec.select497, %bb.ag ]
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr i8, ptr %i.de, i64 %i.dz
  %i.eb = tail call i32 %i.dp(ptr noundef %i.ea, ptr noundef nonnull %2, ptr noundef %i.dx) #21
  %i.ec = icmp eq i32 %i.eb, 10
  %spec.select498 = select i1 %i.ec, ptr %i.de, ptr %i.cy
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae, %bb.ad, %bb.ac
  %.1374 = phi ptr [ %i.cy, %bb.ac ], [ %spec.select498, %bb.ai ], [ %i.cy, %bb.ae ], [ %i.cy, %bb.ad ] ; 3 uses
  %i.ed = icmp ule ptr %.1374, %1
  %.not471 = icmp ugt ptr %4, %.1374
  %or.cond499 = or i1 %i.ed, %.not471
  br i1 %or.cond499, label %bb.aq, label %.thread

bb.ak:                                            ; preds = %bb.aa
  %i.ee = and i32 %i.ap, 32768
  %.not467 = icmp eq i32 %i.ee, 0
  br i1 %.not467, label %bb.aq, label %bb.f

bb.al:                                            ; preds = %bb.d
  %i.ef = icmp eq ptr %1, %2
  br i1 %i.ef, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.eg = getelementptr i8, ptr %0, i64 104
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !129
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.an, label %onig_region_clear.exit

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %8, align 8, !tbaa !36
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %7, ptr %i.ej, align 8, !tbaa !39
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %6, ptr %i.ek, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr @onig_search_gpos.address_for_empty_string, ptr %i.el, align 8, !tbaa !41
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr @onig_search_gpos.address_for_empty_string, ptr %i.em, align 8, !tbaa !42
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 -1, ptr %i.en, align 8, !tbaa !43
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.eo, align 8, !tbaa !44
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 0, ptr %i.ep, align 8, !tbaa !45
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i32 1, ptr %i.eq, align 8, !tbaa !46
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.er, align 8, !tbaa !47
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 1, ptr %i.es, align 8, !tbaa !48
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i8 0, i64 24, i1 false)
  %i.eu = call fastcc i64 @match_at(ptr noundef nonnull %0, ptr noundef nonnull @onig_search_gpos.address_for_empty_string, ptr noundef nonnull @onig_search_gpos.address_for_empty_string, ptr noundef nonnull @onig_search_gpos.address_for_empty_string, ptr noundef null, ptr noundef %8) ; 3 uses
  switch i64 %i.eu, label %bb.ao [
    i64 -1, label %.loopexit577
    i64 -23, label %.loopexit
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ev = icmp sgt i64 %i.eu, -1
  br i1 %i.ev, label %bb.ap, label %.loopexit566

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr i8, ptr %0, i64 56
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !56
  %i.ey = and i32 %i.ex, 16
  %.not462 = icmp eq i32 %i.ey, 0
  br i1 %.not462, label %.loopexit567, label %.loopexit577

bb.aq:                                            ; preds = %bb.aj, %bb.h, %bb.n, %bb.f, %bb.m, %bb.ak, %bb.w, %bb.z, %bb.i, %bb.al
  %.4411 = phi ptr [ %4, %bb.al ], [ %4, %bb.ak ], [ %1, %bb.n ], [ %4, %bb.i ], [ %4, %bb.h ], [ %4, %bb.m ], [ %4, %bb.f ], [ %.0407, %bb.w ], [ %.1408, %bb.z ], [ %4, %bb.aj ] ; 13 uses
  %.4406 = phi ptr [ %5, %bb.al ], [ %5, %bb.ak ], [ %1, %bb.n ], [ %i.aw, %bb.i ], [ %spec.select, %bb.h ], [ %i.az, %bb.m ], [ %4, %bb.f ], [ %.0402, %bb.w ], [ %.1403, %bb.z ], [ %5, %bb.aj ] ; 16 uses
  store ptr null, ptr %8, align 8, !tbaa !36
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %7, ptr %i.ez, align 8, !tbaa !39
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %6, ptr %i.fa, align 8, !tbaa !40
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %.4411, ptr %i.fb, align 8, !tbaa !41
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %3, ptr %i.fc, align 8, !tbaa !42
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 -1, ptr %i.fd, align 8, !tbaa !43
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.fe, align 8, !tbaa !44
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 0, ptr %i.ff, align 8, !tbaa !45
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i32 1, ptr %i.fg, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.fh, align 8, !tbaa !47
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 1, ptr %i.fi, align 8, !tbaa !48
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.fk = icmp ugt ptr %.4406, %.4411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i8 0, i64 24, i1 false)
  br i1 %i.fk, label %bb.ar, label %bb.cl

bb.ar:                                            ; preds = %bb.aq
  %i.fl = icmp ugt ptr %.4411, %1
  br i1 %i.fl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fm = getelementptr i8, ptr %0, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !53
  %i.fo = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.fn, ptr noundef %1, ptr noundef nonnull %.4411, ptr noundef %2) #21
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.0376 = phi ptr [ %i.fo, %bb.as ], [ null, %bb.ar ] ; 3 uses
  %i.fp = getelementptr i8, ptr %0, i64 100
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !130
  %.not483 = icmp eq i32 %i.fq, 0
  br i1 %.not483, label %bb.bz, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.fr = getelementptr i8, ptr %0, i64 432
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !131 ; 4 uses
  %i.ft = ptrtoint ptr %2 to i64                  ; 3 uses
  switch i64 %i.fs, label %bb.av [
    i64 0, label %.thread710
    i64 -1, label %.thread717
  ]

bb.av:                                            ; preds = %bb.au
  %i.fu = ptrtoint ptr %2 to i64
  %i.fv = ptrtoint ptr %.4411 to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = getelementptr i8, ptr %0, i64 104
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !129
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp slt i64 %i.fw, %i.fz
  br i1 %i.ga, label %.thread522, label %bb.aw

.thread717:                                       ; preds = %bb.au
  %i.gb = ptrtoint ptr %.4411 to i64
  %i.gc = sub i64 %i.ft, %i.gb
  %i.gd = getelementptr i8, ptr %0, i64 104
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !129
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %i.gc, %i.gf
  br i1 %i.gg, label %.thread522, label %.thread719

.thread710:                                       ; preds = %bb.au
  %i.gh = ptrtoint ptr %.4411 to i64
  %i.gi = sub i64 %i.ft, %i.gh
  %i.gj = getelementptr i8, ptr %0, i64 104
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !129
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %i.gi, %i.gl
  br i1 %i.gm, label %.thread522, label %.preheader572

bb.aw:                                            ; preds = %bb.av
  %i.gn = ptrtoint ptr %.4406 to i64
  %i.go = sub i64 %i.ft, %i.gn
  %i.gp = icmp ult i64 %i.go, %i.fs
  %i.gq = getelementptr i8, ptr %.4406, i64 %i.fs
  %spec.select510 = select i1 %i.gp, ptr %2, ptr %i.gq ; 2 uses
  %.not485 = icmp eq i64 %i.fs, -1
  br i1 %.not485, label %.thread719, label %.preheader572

.preheader572:                                    ; preds = %.thread710, %bb.aw
  %.0369712716 = phi ptr [ %spec.select510, %bb.aw ], [ %.4406, %.thread710 ]
  %i.gr = getelementptr i8, ptr %0, i64 56
  %i.gs = getelementptr i8, ptr %0, i64 72
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader572, %._crit_edge618
  %.0380 = phi ptr [ %.2382.lcssa, %._crit_edge618 ], [ %.4411, %.preheader572 ] ; 3 uses
  %.1377 = phi ptr [ %.3379.lcssa, %._crit_edge618 ], [ %.0376, %.preheader572 ]
  %i.gt = call fastcc i32 @forward_search_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %.0380, ptr noundef %.0369712716, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c)
  %.not490 = icmp eq i32 %i.gt, 0
  br i1 %.not490, label %.thread522, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gu = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.gv = icmp ult ptr %.0380, %i.gu              ; 2 uses
  %i.gw = load ptr, ptr %i.c, align 8
  %spec.select502 = select i1 %i.gv, ptr %i.gu, ptr %.0380 ; 3 uses
  %spec.select503 = select i1 %i.gv, ptr %i.gw, ptr %.1377 ; 2 uses
  %i.gx = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not491613 = icmp ugt ptr %spec.select502, %i.gx
  br i1 %.not491613, label %._crit_edge618, label %.lr.ph617

.lr.ph617:                                        ; preds = %bb.ay, %bb.be
  %.3379615 = phi ptr [ %.2382614, %bb.be ], [ %spec.select503, %bb.ay ]
  %.2382614 = phi ptr [ %i.hm, %bb.be ], [ %spec.select502, %bb.ay ] ; 7 uses
  %i.gy = call fastcc i64 @match_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %.2382614, ptr noundef %.3379615, ptr noundef %8) ; 3 uses
  switch i64 %i.gy, label %bb.az [
    i64 -1, label %bb.bb
    i64 -23, label %.thread542
  ]

bb.az:                                            ; preds = %.lr.ph617
  %i.gz = icmp sgt i64 %i.gy, -1
  br i1 %i.gz, label %bb.ba, label %.thread528

bb.ba:                                            ; preds = %bb.az
  %i.ha = load i32, ptr %i.gr, align 8, !tbaa !56
  %i.hb = and i32 %i.ha, 16
  %.not492 = icmp eq i32 %i.hb, 0
  br i1 %.not492, label %.thread535, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph617
  %i.hc = load ptr, ptr %i.gs, align 8, !tbaa !53 ; 3 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !80 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.hc, i64 20
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !81
end_hunk_2
begin_hunk_3_@onig_search_gpos:bb.a
  %.6386.ph = phi ptr [ %.3383, %bb.bi ], [ %.2382614, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit567

.thread542:                                       ; preds = %.lr.ph617, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit

bb.by:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.at
  %i.kb = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.kc = getelementptr i8, ptr %0, i64 72
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cg, %bb.bz
  %.8388 = phi ptr [ %.4411, %bb.bz ], [ %i.kr, %bb.cg ] ; 7 uses
  %.9 = phi ptr [ %.0376, %bb.bz ], [ %.8388, %bb.cg ]
  %i.kd = call fastcc i64 @match_at(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %.8388, ptr noundef %.9, ptr noundef %8) ; 3 uses
  switch i64 %i.kd, label %bb.cb [
    i64 -1, label %bb.cd
    i64 -23, label %.loopexit
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.ke = icmp sgt i64 %i.kd, -1
  br i1 %i.ke, label %bb.cc, label %.loopexit566

bb.cc:                                            ; preds = %bb.cb
  %i.kf = load i32, ptr %i.kb, align 8, !tbaa !56
  %i.kg = and i32 %i.kf, 16
  %.not493 = icmp eq i32 %i.kg, 0
  br i1 %.not493, label %.loopexit567, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !53 ; 3 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 16
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !80 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kh, i64 20
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !81
  %i.km = icmp eq i32 %i.kj, %i.kl
  br i1 %i.km, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.kn = icmp ult ptr %.8388, %2
  %spec.select507 = select i1 %i.kn, i32 %i.kj, i32 0
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.ko = call i32 @onigenc_mbclen(ptr noundef %.8388, ptr noundef %2, ptr noundef nonnull %i.kh) #21
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %i.kp = phi i32 [ %i.ko, %bb.cf ], [ %spec.select507, %bb.ce ]
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr i8, ptr %.8388, i64 %i.kq ; 4 uses
  %i.ks = icmp ult ptr %i.kr, %.4406
  br i1 %i.ks, label %bb.ca, label %bb.ch, !llvm.loop !136

bb.ch:                                            ; preds = %bb.cg
  %i.kt = icmp eq ptr %i.kr, %.4406
  br i1 %i.kt, label %bb.ci, label %.loopexit577

bb.ci:                                            ; preds = %bb.ch
  %i.ku = call fastcc i64 @match_at(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.kr, ptr noundef %.8388, ptr noundef %8) ; 3 uses
  switch i64 %i.ku, label %bb.cj [
    i64 -1, label %.loopexit577
    i64 -23, label %.loopexit
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.kv = icmp sgt i64 %i.ku, -1
  br i1 %i.kv, label %bb.ck, label %.loopexit566

bb.ck:                                            ; preds = %bb.cj
  %i.kw = load i32, ptr %i.kb, align 8, !tbaa !56
  %i.kx = and i32 %i.kw, 16
  %.not494 = icmp eq i32 %i.kx, 0
  br i1 %.not494, label %.loopexit567, label %.loopexit577

bb.cl:                                            ; preds = %bb.aq
  %i.ky = getelementptr i8, ptr %0, i64 100
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !130
  %.not474 = icmp eq i32 %i.kz, 0
  br i1 %.not474, label %bb.cy, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.la = icmp ult ptr %.4406, %2
  br i1 %i.la, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.lb = getelementptr i8, ptr %0, i64 72
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !53 ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 104
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !128
  %i.lf = tail call ptr %i.le(ptr noundef %1, ptr noundef %.4406, ptr noundef %2, ptr noundef %i.lc) #21
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %.0368 = phi ptr [ %i.lf, %bb.cn ], [ %2, %bb.cm ] ; 2 uses
  %i.lg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.lh = ptrtoint ptr %.4406 to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 2 uses
  %i.lj = getelementptr i8, ptr %0, i64 424
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !137 ; 2 uses
  %i.ll = icmp ugt i64 %i.li, %i.lk
  %i.lm = getelementptr i8, ptr %.4406, i64 %i.lk
  %.0 = select i1 %i.ll, ptr %i.lm, ptr %2        ; 2 uses
  %i.ln = getelementptr i8, ptr %0, i64 432       ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !131
  %.not475 = icmp eq i64 %i.lo, -1
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 104
  %.pre666 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !129
  %.pre667 = sext i32 %.pre666 to i64
  %i.lp = icmp slt i64 %i.li, %.pre667            ; 2 uses
  br i1 %.not475, label %bb.cv, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.lp, label %.thread550, label %.preheader578

.preheader578:                                    ; preds = %bb.cp
  %i.lq = getelementptr i8, ptr %0, i64 72
  %i.lr = getelementptr i8, ptr %0, i64 56
  br label %bb.cq

bb.cq:                                            ; preds = %.preheader578, %._crit_edge
  %.9389 = phi ptr [ %.11.lcssa, %._crit_edge ], [ %.4411, %.preheader578 ] ; 4 uses
  %i.ls = ptrtoint ptr %.9389 to i64
  %i.lt = sub i64 %i.lg, %i.ls
  %i.lu = load i64, ptr %i.ln, align 8, !tbaa !131 ; 2 uses
  %i.lv = icmp ugt i64 %i.lt, %i.lu
  %i.lw = getelementptr i8, ptr %.9389, i64 %i.lu
  %.0367 = select i1 %i.lv, ptr %i.lw, ptr %2
  %i.lx = call fastcc i32 @backward_search_range(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %.0367, ptr noundef %.0, ptr noundef %.0368, ptr noundef %i.d, ptr noundef %i.e)
  %.not.not = icmp eq i32 %i.lx, 0
  br i1 %.not.not, label %.thread550, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ly = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.lz = icmp ugt ptr %.9389, %i.ly
  %spec.select508 = select i1 %i.lz, ptr %i.ly, ptr %.9389 ; 3 uses
  %i.ma = load ptr, ptr %i.d, align 8, !tbaa !19
  %.not478611 = icmp ult ptr %spec.select508, %i.ma
  br i1 %.not478611, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cr, %bb.cu
  %.11612 = phi ptr [ %i.mc, %bb.cu ], [ %spec.select508, %bb.cr ] ; 3 uses
  %i.mb = load ptr, ptr %i.lq, align 8, !tbaa !53
  %i.mc = call ptr @onigenc_get_prev_char_head(ptr noundef %i.mb, ptr noundef %1, ptr noundef %.11612, ptr noundef %2) #21 ; 4 uses
  %i.md = call fastcc i64 @match_at(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %.11612, ptr noundef %i.mc, ptr noundef %8) ; 3 uses
  switch i64 %i.md, label %bb.cs [
    i64 -1, label %bb.cu
    i64 -23, label %bb.cx
  ]

bb.cs:                                            ; preds = %.lr.ph
  %i.me = icmp sgt i64 %i.md, -1
  br i1 %i.me, label %bb.ct, label %.thread558

.thread558:                                       ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.loopexit566

bb.ct:                                            ; preds = %bb.cs
  %i.mf = load i32, ptr %i.lr, align 8, !tbaa !56
  %i.mg = and i32 %i.mf, 16
  %.not480 = icmp eq i32 %i.mg, 0
  br i1 %.not480, label %.thread562, label %bb.cu

.thread562:                                       ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.loopexit567

bb.cu:                                            ; preds = %bb.ct, %.lr.ph
  %i.mh = load ptr, ptr %i.d, align 8, !tbaa !19
  %.not478 = icmp ult ptr %i.mc, %i.mh
  br i1 %.not478, label %._crit_edge, label %.lr.ph, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.cu, %bb.cr
  %.11.lcssa = phi ptr [ %spec.select508, %bb.cr ], [ %i.mc, %bb.cu ] ; 2 uses
  %.not479 = icmp ult ptr %.11.lcssa, %.4406
  br i1 %.not479, label %.thread550, label %bb.cq, !llvm.loop !139

bb.cv:                                            ; preds = %bb.co
  br i1 %i.lp, label %.thread550, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mi = call fastcc i32 @backward_search_range(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %2, ptr noundef %.0, ptr noundef %.0368, ptr noundef %i.d, ptr noundef %i.e)
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %.thread550, label %.thread554

.thread554:                                       ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.cy

.thread550:                                       ; preds = %bb.cq, %._crit_edge, %bb.cp, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.loopexit577

bb.cx:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.loopexit

bb.cy:                                            ; preds = %.thread554, %bb.cl
  %i.mk = getelementptr i8, ptr %0, i64 72
  %i.ml = getelementptr i8, ptr %0, i64 56
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dc, %bb.cy
  %.14 = phi ptr [ %.4411, %bb.cy ], [ %i.mn, %bb.dc ] ; 3 uses
  %i.mm = load ptr, ptr %i.mk, align 8, !tbaa !53
  %i.mn = call ptr @onigenc_get_prev_char_head(ptr noundef %i.mm, ptr noundef %1, ptr noundef %.14, ptr noundef %2) #21 ; 3 uses
  %i.mo = call fastcc i64 @match_at(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %.14, ptr noundef %i.mn, ptr noundef %8) ; 3 uses
  switch i64 %i.mo, label %bb.da [
    i64 -1, label %bb.dc
    i64 -23, label %.loopexit
  ]

bb.da:                                            ; preds = %bb.cz
  %i.mp = icmp sgt i64 %i.mo, -1
  br i1 %i.mp, label %bb.db, label %.loopexit566

bb.db:                                            ; preds = %bb.da
  %i.mq = load i32, ptr %i.ml, align 8, !tbaa !56
  %i.mr = and i32 %i.mq, 16
  %.not481 = icmp eq i32 %i.mr, 0
  br i1 %.not481, label %.loopexit567, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %.not482 = icmp ult ptr %i.mn, %.4406
  br i1 %.not482, label %.loopexit577, label %bb.cz, !llvm.loop !140

.loopexit577:                                     ; preds = %bb.dc, %.thread550, %.thread522, %bb.ci, %bb.ck, %bb.ch, %bb.an, %bb.ap
  %.0400 = phi ptr [ %1, %bb.ck ], [ %1, %bb.ci ], [ %1, %bb.ch ], [ %1, %.thread522 ], [ @onig_search_gpos.address_for_empty_string, %bb.an ], [ %1, %.thread550 ], [ @onig_search_gpos.address_for_empty_string, %bb.ap ], [ %1, %bb.dc ]
  %i.ms = getelementptr i8, ptr %0, i64 56
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !56
  %i.mu = and i32 %i.mt, 16
  %i.mv = icmp ne i32 %i.mu, 0
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.mx = load i64, ptr %i.mw, align 8
  %i.my = icmp sgt i64 %i.mx, -1
  %or.cond4 = select i1 %i.mv, i1 %i.my, i1 false
  br i1 %or.cond4, label %bb.dd, label %.loopexit566

bb.dd:                                            ; preds = %.loopexit577
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !67
  br label %.loopexit567

.loopexit566:                                     ; preds = %bb.da, %bb.cb, %.thread558, %.thread528, %.loopexit577, %bb.ao, %bb.cj
  %.7397 = phi i64 [ %i.eu, %bb.ao ], [ %i.ku, %bb.cj ], [ -1, %.loopexit577 ], [ %.3393.ph, %.thread528 ], [ %i.kd, %bb.cb ], [ %i.md, %.thread558 ], [ %i.mo, %bb.da ] ; 5 uses
  %i.nb = load ptr, ptr %8, align 8, !tbaa !36
  call void @free(ptr noundef %i.nb) #21
  %i.nc = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !54
  call void @free(ptr noundef %i.nd) #21
  %i.ne = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !55
  call void @free(ptr noundef %i.nf) #21
  %i.ng = getelementptr i8, ptr %0, i64 56
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !56
  %i.ni = and i32 %i.nh, 32
  %i.nj = icmp ne i32 %i.ni, 0
  %or.cond = and i1 %i.f, %i.nj
  br i1 %or.cond, label %bb.de, label %onig_region_clear.exit

bb.de:                                            ; preds = %.loopexit566
  %i.nk = getelementptr i8, ptr %6, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !21 ; 3 uses
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %.lr.ph.i, label %onig_region_clear.exit

.lr.ph.i:                                         ; preds = %bb.de
  %i.nn = getelementptr i8, ptr %6, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !24 ; 7 uses
  %i.np = getelementptr i8, ptr %6, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !25 ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.nl to i64 ; 5 uses
  %min.iters.check815 = icmp ult i32 %i.nl, 6
  %i.nr = ptrtoaddr ptr %i.nq to i64
  %i.ns = ptrtoaddr ptr %i.no to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %diff.check813 = icmp ult i64 %i.nt, 32
  %or.cond830 = select i1 %min.iters.check815, i1 true, i1 %diff.check813
  br i1 %or.cond830, label %scalar.ph814.preheader, label %vector.ph816

vector.ph816:                                     ; preds = %.lr.ph.i
  %n.vec818 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body819

vector.body819:                                   ; preds = %vector.body819, %vector.ph816
  %index820 = phi i64 [ 0, %vector.ph816 ], [ %index.next821, %vector.body819 ] ; 3 uses
  %i.nu = getelementptr [8 x i8], ptr %i.no, i64 %index820 ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.nu, align 8, !tbaa !20
  store <2 x i64> splat (i64 -1), ptr %i.nv, align 8, !tbaa !20
  %i.nw = getelementptr [8 x i8], ptr %i.nq, i64 %index820 ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.nw, align 8, !tbaa !20
  store <2 x i64> splat (i64 -1), ptr %i.nx, align 8, !tbaa !20
  %index.next821 = add nuw i64 %index820, 4       ; 2 uses
  %i.ny = icmp eq i64 %index.next821, %n.vec818
  br i1 %i.ny, label %middle.block822, label %vector.body819, !llvm.loop !141

middle.block822:                                  ; preds = %vector.body819
  %cmp.n823 = icmp eq i64 %n.vec818, %wide.trip.count.i
  br i1 %cmp.n823, label %onig_region_clear.exit, label %scalar.ph814.preheader

scalar.ph814.preheader:                           ; preds = %.lr.ph.i, %middle.block822
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec818, %middle.block822 ] ; 3 uses
  %xtraiter874 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod875.not = icmp eq i64 %xtraiter874, 0
  br i1 %lcmp.mod875.not, label %scalar.ph814.prol.loopexit, label %scalar.ph814.prol

scalar.ph814.prol:                                ; preds = %scalar.ph814.preheader, %scalar.ph814.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph814.prol ], [ %indvars.iv.i.ph, %scalar.ph814.preheader ] ; 3 uses
  %prol.iter876 = phi i64 [ %prol.iter876.next, %scalar.ph814.prol ], [ 0, %scalar.ph814.preheader ]
  %i.nz = getelementptr [8 x i8], ptr %i.no, i64 %indvars.iv.i.prol
  store i64 -1, ptr %i.nz, align 8, !tbaa !20
  %i.oa = getelementptr [8 x i8], ptr %i.nq, i64 %indvars.iv.i.prol
  store i64 -1, ptr %i.oa, align 8, !tbaa !20
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter876.next = add i64 %prol.iter876, 1   ; 2 uses
  %prol.iter876.cmp.not = icmp eq i64 %prol.iter876.next, %xtraiter874
  br i1 %prol.iter876.cmp.not, label %scalar.ph814.prol.loopexit, label %scalar.ph814.prol, !llvm.loop !142

scalar.ph814.prol.loopexit:                       ; preds = %scalar.ph814.prol, %scalar.ph814.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph814.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph814.prol ]
  %i.ob = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.oc = icmp ugt i64 %i.ob, -4
  br i1 %i.oc, label %onig_region_clear.exit, label %scalar.ph814

scalar.ph814:                                     ; preds = %scalar.ph814.prol.loopexit, %scalar.ph814
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph814 ], [ %indvars.iv.i.unr, %scalar.ph814.prol.loopexit ] ; 6 uses
  %i.od = getelementptr [8 x i8], ptr %i.no, i64 %indvars.iv.i
  store i64 -1, ptr %i.od, align 8, !tbaa !20
  %i.oe = getelementptr [8 x i8], ptr %i.nq, i64 %indvars.iv.i
  store i64 -1, ptr %i.oe, align 8, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.of = getelementptr [8 x i8], ptr %i.no, i64 %indvars.iv.next.i
  store i64 -1, ptr %i.of, align 8, !tbaa !20
  %i.og = getelementptr [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i
  store i64 -1, ptr %i.og, align 8, !tbaa !20
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.oh = getelementptr [8 x i8], ptr %i.no, i64 %indvars.iv.next.i.1
  store i64 -1, ptr %i.oh, align 8, !tbaa !20
  %i.oi = getelementptr [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i.1
  store i64 -1, ptr %i.oi, align 8, !tbaa !20
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.oj = getelementptr [8 x i8], ptr %i.no, i64 %indvars.iv.next.i.2
  store i64 -1, ptr %i.oj, align 8, !tbaa !20
  %i.ok = getelementptr [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i.2
  store i64 -1, ptr %i.ok, align 8, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %onig_region_clear.exit, label %scalar.ph814, !llvm.loop !143

.loopexit567:                                     ; preds = %bb.db, %bb.cc, %.thread562, %.thread535, %bb.dd, %bb.ap, %bb.ck
  %.1401 = phi ptr [ %.0400, %bb.dd ], [ %1, %bb.ck ], [ @onig_search_gpos.address_for_empty_string, %bb.ap ], [ %1, %.thread535 ], [ %1, %bb.cc ], [ %1, %.thread562 ], [ %1, %bb.db ]
  %.15 = phi ptr [ %i.na, %bb.dd ], [ %.4406, %bb.ck ], [ @onig_search_gpos.address_for_empty_string, %bb.ap ], [ %.6386.ph, %.thread535 ], [ %.8388, %bb.cc ], [ %.11612, %.thread562 ], [ %.14, %bb.db ]
  %i.ol = load ptr, ptr %8, align 8, !tbaa !36
  call void @free(ptr noundef %i.ol) #21
  %i.om = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !54
  call void @free(ptr noundef %i.on) #21
  %i.oo = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !55
  call void @free(ptr noundef %i.op) #21
  %i.oq = ptrtoint ptr %.15 to i64
  %i.or = ptrtoint ptr %.1401 to i64
  %i.os = sub i64 %i.oq, %i.or
  br label %onig_region_clear.exit

.loopexit:                                        ; preds = %bb.cz, %bb.ca, %bb.cx, %.thread542, %bb.an, %bb.ci
  %i.ot = load ptr, ptr %8, align 8, !tbaa !36
  call void @free(ptr noundef %i.ot) #21
  %i.ou = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !54
  call void @free(ptr noundef %i.ov) #21
  %i.ow = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !55
  call void @free(ptr noundef %i.ox) #21
  br label %onig_region_clear.exit

onig_region_clear.exit:                           ; preds = %scalar.ph814.prol.loopexit, %scalar.ph814, %middle.block822, %bb.w, %bb.u, %.thread, %bb.n, %bb.l, %bb.z, %bb.de, %onig_region_resize_clear.exit, %bb.am, %onig_region_resize_clear.exit.thread, %.loopexit566, %.loopexit, %.loopexit567
  %.0399 = phi i64 [ %.7397, %.loopexit566 ], [ -1, %bb.am ], [ -1, %onig_region_resize_clear.exit.thread ], [ %i.os, %.loopexit567 ], [ -23, %.loopexit ], [ -1, %bb.w ], [ %i.al, %onig_region_resize_clear.exit ], [ %.7397, %bb.de ], [ -1, %bb.z ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %.thread ], [ -1, %bb.u ], [ %.7397, %middle.block822 ], [ %.7397, %scalar.ph814 ], [ %.7397, %scalar.ph814.prol.loopexit ]
end_hunk_3
begin_hunk_4_@backward_search_range:bb.a
bb.f:                                             ; preds = %.preheader.i._crit_edge, %.lr.ph.i
  %i.aj = call ptr @onigenc_get_prev_char_head(ptr noundef %i.r, ptr noundef %5, ptr noundef nonnull %.138.i, ptr noundef %2) #21 ; 2 uses
  %.not.i = icmp ult ptr %i.aj, %4
  br i1 %.not.i, label %slow_search_backward.exit.thread, label %.lr.ph.i, !llvm.loop !172

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !53  ; 5 uses
  %i.al = load i32, ptr %i.l, align 8, !tbaa !57
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !147 ; 3 uses
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !148 ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %.neg.i95 = sub i64 %i.ap, %i.ao
  %i.aq = getelementptr i8, ptr %2, i64 %.neg.i95 ; 2 uses
  %i.ar = icmp ugt ptr %i.aq, %.081
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %i.ak, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !128
  %i.au = call ptr %i.at(ptr noundef %5, ptr noundef %i.aq, ptr noundef %2, ptr noundef %i.ak) #21, !inline_history !173
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i96 = phi ptr [ %i.au, %bb.h ], [ %.081, %bb.g ] ; 3 uses
  %.not35.i = icmp ult ptr %.0.i96, %4
  br i1 %.not35.i, label %slow_search_backward.exit.thread, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.i
  %i.av = icmp ult ptr %i.am, %i.an
  %i.aw = getelementptr i8, ptr %i.ak, i64 56
  br i1 %i.av, label %.lr.ph20.i.us.i, label %.lr.ph.split.i

.lr.ph20.i.us.i:                                  ; preds = %.lr.ph.i97, %bb.k
  %.136.us.i = phi ptr [ %i.be, %bb.k ], [ %.0.i96, %.lr.ph.i97 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.136.us.i, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i.us.i, %.lr.ph20.i.us.i
  %.01219.i.us.i = phi ptr [ %i.am, %.lr.ph20.i.us.i ], [ %.1.lcssa.i.us.i, %.loopexit.i.us.i ] ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.ay = call i32 %i.ax(i32 noundef %i.al, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef %i.ak) #21, !inline_history !174 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %bb.j
  %scevgep.i.us.i = getelementptr i8, ptr %.01219.i.us.i, i64 1
  %i.ba = add nsw i32 %i.ay, -1
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %scevgep22.i.us.i = getelementptr i8, ptr %scevgep.i.us.i, i64 %i.bb
  %scevgep23.i.us.i = getelementptr i8, ptr %i.b, i64 %i.bb
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.l, %.lr.ph.preheader.i.us.i
  %.018.i.us.i = phi ptr [ %i.bf, %bb.l ], [ %i.b, %.lr.ph.preheader.i.us.i ] ; 3 uses
  %.116.i.us.i = phi ptr [ %i.bg, %bb.l ], [ %.01219.i.us.i, %.lr.ph.preheader.i.us.i ] ; 2 uses
  %i.bc = load i8, ptr %.116.i.us.i, align 1, !tbaa !66
  %i.bd = load i8, ptr %.018.i.us.i, align 1, !tbaa !66
  %.not.i.us.i = icmp eq i8 %i.bc, %i.bd
  br i1 %.not.i.us.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = call ptr @onigenc_get_prev_char_head(ptr noundef %i.ak, ptr noundef %5, ptr noundef %.136.us.i, ptr noundef %2) #21 ; 2 uses
  %.not.us.i = icmp ult ptr %i.be, %4
  br i1 %.not.us.i, label %slow_search_backward.exit.thread, label %.lr.ph20.i.us.i, !llvm.loop !175

bb.l:                                             ; preds = %.lr.ph.i.us.i
  %i.bf = getelementptr i8, ptr %.018.i.us.i, i64 1
  %i.bg = getelementptr i8, ptr %.116.i.us.i, i64 1
  %exitcond.not.i.us.i = icmp eq ptr %.018.i.us.i, %scevgep23.i.us.i
  br i1 %exitcond.not.i.us.i, label %.loopexit.i.us.i, label %.lr.ph.i.us.i, !llvm.loop !153

.loopexit.i.us.i:                                 ; preds = %bb.l, %bb.j
  %.1.lcssa.i.us.i = phi ptr [ %.01219.i.us.i, %bb.j ], [ %scevgep22.i.us.i, %bb.l ] ; 2 uses
  %i.bh = icmp ult ptr %.1.lcssa.i.us.i, %i.an
  br i1 %i.bh, label %bb.j, label %str_lower_case_match.exit.thread.i, !llvm.loop !154

.lr.ph.split.i:                                   ; preds = %.lr.ph.i97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %str_lower_case_match.exit.thread.i

str_lower_case_match.exit.thread.i:               ; preds = %.loopexit.i.us.i, %.lr.ph.split.i
  %.134.i = phi ptr [ %.0.i96, %.lr.ph.split.i ], [ %.136.us.i, %.loopexit.i.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %slow_search_backward.exit

bb.m:                                             ; preds = %bb.b
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !53
  %.not13.i = icmp ult ptr %.081, %4
  br i1 %.not13.i, label %slow_search_backward.exit.thread, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.m, %bb.n
  %.014.i = phi ptr [ %i.bn, %bb.n ], [ %.081, %bb.m ] ; 3 uses
  %i.bj = load i8, ptr %.014.i, align 1, !tbaa !66
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr i8, ptr %i.k, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !66
  %.not12.i = icmp eq i8 %i.bm, 0
  br i1 %.not12.i, label %bb.n, label %slow_search_backward.exit.thread103

bb.n:                                             ; preds = %.lr.ph.i98
  %i.bn = call ptr @onigenc_get_prev_char_head(ptr noundef %i.bi, ptr noundef %5, ptr noundef nonnull %.014.i, ptr noundef %2) #21 ; 2 uses
  %.not.i99 = icmp ult ptr %i.bn, %4
  br i1 %.not.i99, label %slow_search_backward.exit.thread, label %.lr.ph.i98, !llvm.loop !176

slow_search_backward.exit:                        ; preds = %.preheader.i._crit_edge, %str_lower_case_match.exit.thread.i, %bb.b
  %.1 = phi ptr [ %.081, %bb.b ], [ %.134.i, %str_lower_case_match.exit.thread.i ], [ %.138.i, %.preheader.i._crit_edge ] ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %slow_search_backward.exit.thread, label %slow_search_backward.exit.thread103

slow_search_backward.exit.thread103:              ; preds = %.lr.ph.i98, %slow_search_backward.exit
  %.1106 = phi ptr [ %.1, %slow_search_backward.exit ], [ %.014.i, %.lr.ph.i98 ] ; 9 uses
  %i.bo = load i32, ptr %i.o, align 8, !tbaa !169
  switch i32 %i.bo, label %.thread [
    i32 32, label %bb.x
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %slow_search_backward.exit.thread103
  %i.bp = icmp eq ptr %.1106, %1
  br i1 %i.bp, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.br = call ptr @onigenc_get_prev_char_head(ptr noundef %i.bq, ptr noundef %1, ptr noundef nonnull %.1106, ptr noundef %2) #21 ; 7 uses
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !53  ; 9 uses
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !56
  %i.bu = and i32 %i.bt, 65536
  %.not.i100 = icmp eq i32 %i.bu, 0
  br i1 %.not.i100, label %is_mbc_newline_ex.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr i8, ptr %i.bs, i64 32     ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !82
  %i.bx = call i32 %i.bw(ptr noundef %i.br, ptr noundef %2, ptr noundef %i.bs) #21, !inline_history !83
  %i.by = icmp eq i32 %i.bx, 10
  br i1 %i.by, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr i8, ptr %i.bs, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !80 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bs, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !81
  %i.cd = icmp eq i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = icmp ult ptr %i.br, %2
  %spec.select.i = select i1 %i.ce, i32 %i.ca, i32 0
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cf = call i32 @onigenc_mbclen(ptr noundef %i.br, ptr noundef %2, ptr noundef nonnull %i.bs) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cg = phi i32 [ %i.cf, %bb.t ], [ %spec.select.i, %bb.s ]
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.br, i64 %i.ch  ; 2 uses
  %i.cj = icmp ult ptr %i.ci, %2
  br i1 %i.cj, label %bb.v, label %is_mbc_newline_ex.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %i.bv, align 8, !tbaa !82
  %i.cl = call i32 %i.ck(ptr noundef %i.br, ptr noundef nonnull %2, ptr noundef nonnull %i.bs) #21, !inline_history !83
  %i.cm = icmp eq i32 %i.cl, 13
  br i1 %i.cm, label %bb.w, label %is_mbc_newline_ex.exit

bb.w:                                             ; preds = %bb.v
  %i.cn = load ptr, ptr %i.bv, align 8, !tbaa !82
  %i.co = call i32 %i.cn(ptr noundef %i.ci, ptr noundef nonnull %2, ptr noundef nonnull %i.bs) #21, !inline_history !83
  %i.cp = icmp eq i32 %i.co, 10
  br i1 %i.cp, label %.thread, label %is_mbc_newline_ex.exit

is_mbc_newline_ex.exit:                           ; preds = %bb.p, %bb.u, %bb.v, %bb.w
  %i.cq = getelementptr i8, ptr %i.bs, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !84
  %i.cs = call i32 %i.cr(ptr noundef %i.br, ptr noundef %2, ptr noundef %i.bs) #21
  %.2.i = icmp eq i32 %i.cs, 0
  br i1 %.2.i, label %.backedge, label %.thread

bb.x:                                             ; preds = %slow_search_backward.exit.thread103
  %i.ct = icmp eq ptr %.1106, %2
  br i1 %i.ct, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.cv = load i32, ptr %i.p, align 8, !tbaa !56
  %i.cw = call fastcc i32 @is_mbc_newline_ex(ptr noundef %i.cu, ptr noundef nonnull %.1106, ptr noundef %1, ptr noundef %2, i32 noundef %i.cv, i32 noundef 1)
  %.not90 = icmp eq i32 %i.cw, 0
  br i1 %.not90, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.cy = call ptr @onigenc_get_prev_char_head(ptr noundef %i.cx, ptr noundef %5, ptr noundef nonnull %.1106, ptr noundef %2) #21 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %slow_search_backward.exit.thread, label %.backedge

.backedge:                                        ; preds = %bb.z, %is_mbc_newline_ex.exit
  %.081.be = phi ptr [ %i.cy, %bb.z ], [ %i.br, %is_mbc_newline_ex.exit ]
  br label %bb.b

.thread:                                          ; preds = %bb.q, %bb.w, %slow_search_backward.exit.thread103, %bb.x, %bb.y, %bb.o, %is_mbc_newline_ex.exit
  %i.da = getelementptr i8, ptr %0, i64 432
  %i.db = load i64, ptr %i.da, align 8, !tbaa !131 ; 3 uses
  %.not92 = icmp eq i64 %i.db, -1
  br i1 %.not92, label %slow_search_backward.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.thread
  %i.dc = ptrtoint ptr %.1106 to i64
  %i.dd = sub i64 %i.dc, %i.d                     ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.db
  %i.df = sub i64 0, %i.db
  %i.dg = getelementptr i8, ptr %.1106, i64 %i.df
  %storemerge = select i1 %i.de, ptr %1, ptr %i.dg
  store ptr %storemerge, ptr %6, align 8, !tbaa !19
  %i.dh = load i64, ptr %i.f, align 8, !tbaa !137 ; 3 uses
  %.not93 = icmp eq i64 %i.dh, 0
  br i1 %.not93, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = icmp ult i64 %i.dd, %i.dh
  br i1 %i.di, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = sub i64 0, %i.dh
  %i.dk = getelementptr i8, ptr %.1106, i64 %i.dj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.sink = phi ptr [ %1, %bb.ab ], [ %i.dk, %bb.ac ], [ %.1106, %bb.aa ] ; 2 uses
  store ptr %.sink, ptr %7, align 8, !tbaa !19
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.dm = call ptr @onigenc_get_right_adjust_char_head(ptr noundef %i.dl, ptr noundef %5, ptr noundef %.sink, ptr noundef %2) #21
  store ptr %i.dm, ptr %7, align 8, !tbaa !19
  br label %slow_search_backward.exit.thread

slow_search_backward.exit.thread:                 ; preds = %bb.z, %bb.m, %bb.i, %bb.e, %slow_search_backward.exit, %bb.n, %bb.k, %bb.f, %.thread, %bb.ad, %bb.a
  %.0 = phi i32 [ 1, %.thread ], [ 0, %bb.a ], [ 1, %bb.ad ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.f ], [ 0, %slow_search_backward.exit ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @onig_scan(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 16
  %i.b = ptrtoint ptr %1 to i64
  %i.c = getelementptr i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.039 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.k ]   ; 3 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %.1, %bb.k ]     ; 6 uses
  %i.d = tail call i64 @onig_search_gpos(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %.0, ptr noundef %.0, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 %5(i64 noundef %.039, i64 noundef %i.d, ptr noundef %3, ptr noundef %6) #21 ; 2 uses
  %i.g = add i64 %.039, 1                         ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.f to i64
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = ptrtoint ptr %.0 to i64
  %i.l = sub i64 %i.k, %i.b
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not47 = icmp ult ptr %.0, %2
  br i1 %.not47, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !81
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 @onigenc_mbclen(ptr noundef %.0, ptr noundef nonnull %2, ptr noundef nonnull %i.n) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.u = phi i32 [ %i.t, %bb.h ], [ %i.p, %bb.g ]
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %.0, i64 %i.v
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %1, i64 %i.j
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi ptr [ %i.w, %bb.i ], [ %i.x, %bb.j ]  ; 2 uses
  %i.y = icmp ugt ptr %.1, %2
  br i1 %i.y, label %.loopexit, label %bb.b

bb.l:                                             ; preds = %bb.b
  %i.z = icmp eq i64 %i.d, -1
  %spec.select48 = select i1 %i.z, i64 %.039, i64 %i.d
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.k, %bb.l, %bb.d
  %.038 = phi i64 [ %i.h, %bb.d ], [ %spec.select48, %bb.l ], [ %i.g, %bb.k ], [ %i.g, %bb.f ]
  ret i64 %.038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local ptr @onig_get_encoding(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @onig_get_options(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @onig_get_case_fold_flag(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local ptr @onig_get_syntax(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @onig_number_of_captures(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onig_number_of_capture_histories(ptr noundef readnone captures(none) %0) local_unnamed_addr #14 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @onig_copy_encoding(ptr noundef writeonly captures(none) initializes((0, 136)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false), !tbaa.struct !178
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -13, 1) i64 @count_num_cache_opcodes_inner(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, ptr noundef nonnull captures(none) %3, ptr noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 40 uses
  %i.b = alloca i64, align 8                      ; 19 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = load ptr, ptr %3, align 8, !tbaa !19     ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !121
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h     ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.l = load i64, ptr %4, align 8, !tbaa !20     ; 3 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !20
  %i.m = icmp ult ptr %i.d, %i.i
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.n = icmp slt i32 %2, 0                       ; 3 uses
  %i.o = add nuw i32 %2, 1                        ; 3 uses
  %.not87 = icmp eq i16 %1, -1
  %i.p = getelementptr i8, ptr %0, i64 64         ; 2 uses
end_hunk_4

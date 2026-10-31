Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 115
begin_hunk_0_@stbi__load_main:bb.a
  %i.zn = sext i32 %i.zd to i64
  %i.zo = getelementptr inbounds i8, ptr %i.i, i64 %i.zn
  %.pre.i21.i.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i22.i.i

stbi__refill_buffer.exit.i22.i.i:                 ; preds = %bb.bt, %bb.bs
  %i.zp = phi i8 [ 0, %bb.bs ], [ %.pre.i21.i.i, %bb.bt ]
  %.sink.i.i23.i.i = phi ptr [ %i.m, %bb.bs ], [ %i.zo, %bb.bt ]
  store ptr %.sink.i.i23.i.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit25.i.i

stbi__get8.exit25.i.i:                            ; preds = %stbi__refill_buffer.exit.i22.i.i, %bb.bp
  %i.zq = phi ptr [ %i.yt, %bb.bp ], [ %i.zf, %stbi__refill_buffer.exit.i22.i.i ]
  %.0.i24.i.i = phi i8 [ %i.yy, %bb.bp ], [ %i.zp, %stbi__refill_buffer.exit.i22.i.i ]
  %.not19.i.i = icmp eq i8 %.0.i24.i.i, 77
  br i1 %.not19.i.i, label %bb.bu, label %stbi__bmp_test.exit.thread

bb.bu:                                            ; preds = %stbi__get8.exit25.i.i
  %i.zr = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.zs = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.zt = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.zu = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.zv = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.zw = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.zx = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.zy = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.zz = shl nuw i32 %i.zy, 16
  %i.aaa = or disjoint i32 %i.zz, %i.zx           ; 2 uses
  %i.aab = add i32 %i.aaa, -12                    ; 2 uses
  %i.aac = tail call i32 @llvm.fshl.i32(i32 %i.aab, i32 %i.aab, i32 30)
  switch i32 %i.aac, label %stbi__bmp_test.exit [
    i32 24, label %stbi__bmp_test.exit.thread50
    i32 11, label %stbi__bmp_test.exit.thread50
    i32 7, label %stbi__bmp_test.exit.thread50
    i32 0, label %stbi__bmp_test.exit.thread50
  ]

stbi__bmp_test.exit.thread:                       ; preds = %stbi__get8.exit25.i.i, %stbi__get8.exit.i.i33, %bb.bk, %bb.bq
  %i.aad = phi ptr [ %i.zq, %stbi__get8.exit25.i.i ], [ %i.yt, %stbi__get8.exit.i.i33 ], [ %i.xw, %bb.bk ], [ %i.yt, %bb.bq ]
  store ptr %i.aad, ptr %i.d, align 8
  %i.aae = load ptr, ptr %i.xx, align 8
  store ptr %i.aae, ptr %i.e, align 8
  br label %bb.ha

stbi__bmp_test.exit.thread50:                     ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.aaf = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.aaf, ptr %i.d, align 8
  br label %bb.bv

stbi__bmp_test.exit:                              ; preds = %bb.bu
  %.not = icmp eq i32 %i.aaa, 124
  %i.aag = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.aag, ptr %i.d, align 8
  br i1 %.not, label %bb.bv, label %bb.ha

bb.bv:                                            ; preds = %stbi__bmp_test.exit.thread50, %stbi__bmp_test.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  %i.aah = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  store i32 255, ptr %i.aah, align 4
  %i.aai = call fastcc ptr @stbi__bmp_parse_header(ptr noundef nonnull %0, ptr noundef %7)
  %i.aaj = icmp eq ptr %i.aai, null
  br i1 %i.aaj, label %stbi__bmp_load.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.aal = load i32, ptr %i.aak, align 4          ; 2 uses
  %i.aam = icmp sgt i32 %i.aal, 0
  %i.aan = tail call i32 @llvm.abs.i32(i32 %i.aal, i1 true) ; 2 uses
  store i32 %i.aan, ptr %i.aak, align 4
  %i.aao = icmp samesign ugt i32 %i.aan, 16777216
  br i1 %i.aao, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.by:                                            ; preds = %bb.bw
  %i.aap = load i32, ptr %0, align 8
  %i.aaq = icmp ugt i32 %i.aap, 16777216
  br i1 %i.aaq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ca:                                            ; preds = %bb.by
  %i.aar = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.aas = load i32, ptr %i.aar, align 4          ; 5 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aau = load i32, ptr %i.aat, align 4          ; 5 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.aaw = load i32, ptr %i.aav, align 4          ; 5 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aay = load i32, ptr %i.aax, align 4          ; 7 uses
  %i.aaz = load i32, ptr %i.aah, align 4          ; 6 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.abb = load i32, ptr %i.aba, align 4          ; 4 uses
  %i.abc = icmp eq i32 %i.abb, 12                 ; 3 uses
  %i.abd = load i32, ptr %7, align 4              ; 4 uses
  br i1 %i.abc, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.abe = icmp slt i32 %i.abd, 24
  br i1 %i.abe, label %bb.cc, label %.thread.i

bb.cc:                                            ; preds = %bb.cb
  %i.abf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.abg = load i32, ptr %i.abf, align 4          ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.abi = load i32, ptr %i.abh, align 4
  %i.abj = add i32 %i.abg, -24
  %i.abk = sub i32 %i.abj, %i.abi
  %i.abl = sdiv i32 %i.abk, 3
  br label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  %i.abm = icmp slt i32 %i.abd, 16
  br i1 %i.abm, label %bb.ce, label %.thread.i

bb.ce:                                            ; preds = %bb.cd
  %i.abn = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.abo = load i32, ptr %i.abn, align 4          ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.abq = load i32, ptr %i.abp, align 4
  %i.abr = add i32 %i.abb, %i.abq
  %i.abs = sub i32 %i.abo, %i.abr
  %i.abt = ashr i32 %i.abs, 2
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %i.abu = phi i32 [ %i.abg, %bb.cc ], [ %i.abo, %bb.ce ]
  %.0332.i = phi i32 [ %i.abl, %bb.cc ], [ %i.abt, %bb.ce ] ; 2 uses
  %i.abv = icmp eq i32 %.0332.i, 0
  br i1 %i.abv, label %.thread.i, label %.thread238.i

.thread238.i:                                     ; preds = %bb.cf
  %i.abw = icmp eq i32 %i.aay, -16777216
  br label %bb.cl

.thread.i:                                        ; preds = %bb.cf, %bb.cd, %bb.cb
  %i.abx = load i32, ptr %i.l, align 8
  %i.aby = load ptr, ptr %i.d, align 8
  %i.abz = load ptr, ptr %i.k, align 8
  %i.aca = ptrtoint ptr %i.aby to i64
  %i.acb = ptrtoint ptr %i.abz to i64
  %i.acc = sub i64 %i.aca, %i.acb
  %i.acd = trunc i64 %i.acc to i32
  %i.ace = add nsw i32 %i.abx, %i.acd             ; 3 uses
  %i.acf = add i32 %i.ace, -1025
  %or.cond378.i = icmp ult i32 %i.acf, -1024
  br i1 %or.cond378.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.thread.i
  store ptr @.str.110, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ch:                                            ; preds = %.thread.i
  %i.acg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ach = load i32, ptr %i.acg, align 4          ; 4 uses
  %i.aci = icmp slt i32 %i.ach, %i.ace
  br i1 %i.aci, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.acj = sub nsw i32 %i.ach, %i.ace             ; 2 uses
  %i.ack = icmp sgt i32 %i.acj, 1024
  br i1 %i.ack, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store ptr @.str.111, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ck:                                            ; preds = %bb.ci
  tail call fastcc void @stbi__skip(ptr noundef nonnull %0, i32 noundef %i.acj)
  %i.acl = icmp eq i32 %i.abd, 24
  %i.acm = icmp eq i32 %i.aay, -16777216          ; 2 uses
  %or.cond.i = select i1 %i.acl, i1 %i.acm, i1 false
  br i1 %or.cond.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.thread238.i
  %i.acn = phi i1 [ %i.abw, %.thread238.i ], [ %i.acm, %bb.ck ]
  %.03322242.i = phi i32 [ %.0332.i, %.thread238.i ], [ 0, %bb.ck ]
  %i.aco = phi i1 [ false, %.thread238.i ], [ true, %bb.ck ]
  %i.acp = phi i32 [ %i.abu, %.thread238.i ], [ %i.ach, %bb.ck ]
  %.not.i = icmp eq i32 %i.aay, 0
  %i.acq = select i1 %.not.i, i32 3, i32 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.acr = phi i1 [ %i.acn, %bb.cl ], [ true, %bb.ck ]
  %.03322241.i = phi i32 [ %.03322242.i, %bb.cl ], [ 0, %bb.ck ] ; 4 uses
  %i.acs = phi i1 [ %i.aco, %bb.cl ], [ true, %bb.ck ]
  %i.act = phi i32 [ %i.abd, %bb.cl ], [ 24, %bb.ck ] ; 6 uses
  %i.acu = phi i32 [ %i.acp, %bb.cl ], [ %i.ach, %bb.ck ] ; 3 uses
  %i.acv = phi i32 [ %i.acq, %bb.cl ], [ 3, %bb.ck ] ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.acv, ptr %i.acw, align 8
  %.not367.i = icmp eq i32 %4, 0
  %i.acx = icmp sgt i32 %4, 2
  %spec.select.i = select i1 %i.acx, i32 %4, i32 %i.acv ; 10 uses
  %i.acy = load i32, ptr %0, align 8              ; 5 uses
  %i.acz = load i32, ptr %i.aak, align 4          ; 5 uses
  %or.cond.not.i.i.i = icmp sgt i32 %i.acy, -1
  br i1 %or.cond.not.i.i.i, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ada = icmp eq i32 %i.acy, 0                  ; 2 uses
  br i1 %i.ada, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.cn
  %i.adb = udiv i32 2147483647, %i.acy
  %.not23.i.i = icmp samesign ugt i32 %spec.select.i, %i.adb
  br i1 %.not23.i.i, label %bb.cp, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.cn
  %i.adc = mul nuw nsw i32 %i.acy, %spec.select.i ; 4 uses
  %i.add = or i32 %i.acz, %i.adc
  %or.cond.not.i10.i.i = icmp sgt i32 %i.add, -1
  br i1 %or.cond.not.i10.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.ade = icmp eq i32 %i.acz, 0                  ; 2 uses
  br i1 %i.ade, label %stbi__mad3sizes_valid.exit.i, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.co
  %i.adf = udiv i32 2147483647, %i.acz
  %.not.i.i37 = icmp samesign ugt i32 %i.adc, %i.adf
  br i1 %.not.i.i37, label %bb.cp, label %stbi__mad3sizes_valid.exit.i

bb.cp:                                            ; preds = %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.cm
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

stbi__mad3sizes_valid.exit.i:                     ; preds = %stbi__mul2sizes_valid.exit12.i.i, %bb.co
  br i1 %i.ada, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %stbi__mad3sizes_valid.exit.i
  %i.adg = udiv i32 2147483647, %i.acy
  %.not23.i.i.i = icmp samesign ugt i32 %spec.select.i, %i.adg
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %stbi__mad3sizes_valid.exit.i
  br i1 %i.ade, label %stbi__malloc_mad3.exit.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.adh = udiv i32 2147483647, %i.acz
  %.not.i.i.i38 = icmp samesign ugt i32 %i.adc, %i.adh
  br i1 %.not.i.i.i38, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.adi = mul nuw nsw i32 %i.adc, %i.acz
  %i.adj = sext i32 %i.adi to i64
  %i.adk = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.adj) #53 ; 30 uses
  %.not369.i = icmp eq ptr %i.adk, null
  br i1 %.not369.i, label %stbi__malloc_mad3.exit.thread.i, label %bb.cq

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.cq:                                            ; preds = %stbi__malloc_mad3.exit.i
  %i.adl = icmp slt i32 %i.act, 16
  br i1 %i.adl, label %bb.cr, label %bb.ff

bb.cr:                                            ; preds = %bb.cq
  %i.adm = icmp sgt i32 %.03322241.i, 256
  %or.cond7.i = or i1 %i.acs, %i.adm
  br i1 %or.cond7.i, label %bb.cs, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.cr
  %i.adn = icmp sgt i32 %.03322241.i, 0
  br i1 %i.adn, label %.lr.ph66.i, label %._crit_edge.i40

.lr.ph66.i:                                       ; preds = %.preheader44.i
  %wide.trip.count.i = zext nneg i32 %.03322241.i to i64
  %.pre115.i = load ptr, ptr %i.d, align 8        ; 2 uses
  %.pre116.i = load ptr, ptr %i.e, align 8        ; 2 uses
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  tail call void @free(ptr noundef nonnull %i.adk) #52
  store ptr @.str.112, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ct:                                            ; preds = %stbi__get8.exit402.i, %.lr.ph66.i
  %i.ado = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.ahh, %stbi__get8.exit402.i ] ; 2 uses
  %i.adp = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.ahi, %stbi__get8.exit402.i ]
  %i.adq = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.ahj, %stbi__get8.exit402.i ] ; 3 uses
  %i.adr = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.ahk, %stbi__get8.exit402.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %stbi__get8.exit402.i ] ; 2 uses
  %i.ads = icmp ult ptr %i.adr, %i.adq
  br i1 %i.ads, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 1 ; 3 uses
  store ptr %i.adt, ptr %i.d, align 8
  %i.adu = load i8, ptr %i.adr, align 1
  br label %stbi__get8.exit.i

bb.cv:                                            ; preds = %bb.ct
  %i.adv = load i32, ptr %i.f, align 8
  %.not.i383.i = icmp eq i32 %i.adv, 0
  br i1 %.not.i383.i, label %stbi__get8.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.adw = load ptr, ptr %i.g, align 8
  %i.adx = load ptr, ptr %i.h, align 8
  %i.ady = load i32, ptr %i.j, align 4
  %i.adz = tail call i32 %i.adw(ptr noundef %i.adx, ptr noundef nonnull %i.i, i32 noundef %i.ady) #52, !inline_history !155 ; 2 uses
  %i.aea = load ptr, ptr %i.d, align 8
  %i.aeb = load ptr, ptr %i.k, align 8
  %i.aec = ptrtoint ptr %i.aea to i64
  %i.aed = ptrtoint ptr %i.aeb to i64
  %i.aee = sub i64 %i.aec, %i.aed
  %i.aef = trunc i64 %i.aee to i32
  %i.aeg = load i32, ptr %i.l, align 8
  %i.aeh = add nsw i32 %i.aeg, %i.aef
  store i32 %i.aeh, ptr %i.l, align 8
  %i.aei = icmp eq i32 %i.adz, 0
  br i1 %i.aei, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.aej = sext i32 %i.adz to i64
  %i.aek = getelementptr inbounds i8, ptr %i.i, i64 %i.aej
  %.pre.i.i41 = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i

stbi__refill_buffer.exit.i.i:                     ; preds = %bb.cy, %bb.cx
  %i.ael = phi i8 [ 0, %bb.cx ], [ %.pre.i.i41, %bb.cy ]
  %.sink.i.i.i = phi ptr [ %i.m, %bb.cx ], [ %i.aek, %bb.cy ] ; 3 uses
  store ptr %.sink.i.i.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit.i

stbi__get8.exit.i:                                ; preds = %stbi__refill_buffer.exit.i.i, %bb.cv, %bb.cu
  %i.aem = phi ptr [ %i.ado, %bb.cu ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ], [ %i.ado, %bb.cv ] ; 2 uses
  %i.aen = phi ptr [ %i.adt, %bb.cu ], [ %i.m, %stbi__refill_buffer.exit.i.i ], [ %i.adp, %bb.cv ]
  %i.aeo = phi ptr [ %i.adq, %bb.cu ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ], [ %i.adq, %bb.cv ] ; 3 uses
  %i.aep = phi ptr [ %i.adt, %bb.cu ], [ %i.m, %stbi__refill_buffer.exit.i.i ], [ %i.adr, %bb.cv ] ; 4 uses
  %.0.i384.i = phi i8 [ %i.adu, %bb.cu ], [ %i.ael, %stbi__refill_buffer.exit.i.i ], [ 0, %bb.cv ]
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 4 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 2
  store i8 %.0.i384.i, ptr %i.aer, align 2
  %i.aes = icmp ult ptr %i.aep, %i.aeo
  br i1 %i.aes, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %stbi__get8.exit.i
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aep, i64 1 ; 3 uses
  store ptr %i.aet, ptr %i.d, align 8
  %i.aeu = load i8, ptr %i.aep, align 1
  br label %stbi__get8.exit390.i

bb.da:                                            ; preds = %stbi__get8.exit.i
  %i.aev = load i32, ptr %i.f, align 8
  %.not.i385.i = icmp eq i32 %i.aev, 0
  br i1 %.not.i385.i, label %stbi__get8.exit390.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aew = load ptr, ptr %i.g, align 8
  %i.aex = load ptr, ptr %i.h, align 8
  %i.aey = load i32, ptr %i.j, align 4
  %i.aez = tail call i32 %i.aew(ptr noundef %i.aex, ptr noundef nonnull %i.i, i32 noundef %i.aey) #52, !inline_history !155 ; 2 uses
  %i.afa = load ptr, ptr %i.d, align 8
  %i.afb = load ptr, ptr %i.k, align 8
  %i.afc = ptrtoint ptr %i.afa to i64
  %i.afd = ptrtoint ptr %i.afb to i64
  %i.afe = sub i64 %i.afc, %i.afd
  %i.aff = trunc i64 %i.afe to i32
  %i.afg = load i32, ptr %i.l, align 8
  %i.afh = add nsw i32 %i.afg, %i.aff
  store i32 %i.afh, ptr %i.l, align 8
  %i.afi = icmp eq i32 %i.aez, 0
  br i1 %i.afi, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i387.i

bb.dd:                                            ; preds = %bb.db
  %i.afj = sext i32 %i.aez to i64
  %i.afk = getelementptr inbounds i8, ptr %i.i, i64 %i.afj
  %.pre.i386.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i387.i

stbi__refill_buffer.exit.i387.i:                  ; preds = %bb.dd, %bb.dc
  %i.afl = phi i8 [ 0, %bb.dc ], [ %.pre.i386.i, %bb.dd ]
  %.sink.i.i388.i = phi ptr [ %i.m, %bb.dc ], [ %i.afk, %bb.dd ] ; 3 uses
  store ptr %.sink.i.i388.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit390.i

stbi__get8.exit390.i:                             ; preds = %stbi__refill_buffer.exit.i387.i, %bb.da, %bb.cz
  %i.afm = phi ptr [ %i.aem, %bb.cz ], [ %.sink.i.i388.i, %stbi__refill_buffer.exit.i387.i ], [ %i.aem, %bb.da ] ; 2 uses
  %i.afn = phi ptr [ %i.aet, %bb.cz ], [ %i.m, %stbi__refill_buffer.exit.i387.i ], [ %i.aen, %bb.da ]
end_hunk_0
begin_hunk_1_@stbi__load_main:bb.a
  store ptr %i.awx, ptr %i.d, align 8
  %i.awy = load i8, ptr %i.aws, align 1
  br label %stbi__get8.exit464.i

bb.gh:                                            ; preds = %bb.gf
  %i.awz = load i32, ptr %i.f, align 8
  %.not.i459.i = icmp eq i32 %i.awz, 0
  br i1 %.not.i459.i, label %stbi__get8.exit464.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.axa = load ptr, ptr %i.g, align 8
  %i.axb = load ptr, ptr %i.h, align 8
  %i.axc = load i32, ptr %i.j, align 4
  %i.axd = tail call i32 %i.axa(ptr noundef %i.axb, ptr noundef nonnull %i.i, i32 noundef %i.axc) #52, !inline_history !155 ; 2 uses
  %i.axe = load ptr, ptr %i.d, align 8
  %i.axf = load ptr, ptr %i.k, align 8
  %i.axg = ptrtoint ptr %i.axe to i64
  %i.axh = ptrtoint ptr %i.axf to i64
  %i.axi = sub i64 %i.axg, %i.axh
  %i.axj = trunc i64 %i.axi to i32
  %i.axk = load i32, ptr %i.l, align 8
  %i.axl = add nsw i32 %i.axk, %i.axj
  store i32 %i.axl, ptr %i.l, align 8
  %i.axm = icmp eq i32 %i.axd, 0
  br i1 %i.axm, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i461.i

bb.gk:                                            ; preds = %bb.gi
  %i.axn = sext i32 %i.axd to i64
  %i.axo = getelementptr inbounds i8, ptr %i.i, i64 %i.axn
  %.pre.i460.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i461.i

stbi__refill_buffer.exit.i461.i:                  ; preds = %bb.gk, %bb.gj
  %i.axp = phi i8 [ 0, %bb.gj ], [ %.pre.i460.i, %bb.gk ]
  %.sink.i.i462.i = phi ptr [ %i.m, %bb.gj ], [ %i.axo, %bb.gk ] ; 3 uses
  store ptr %.sink.i.i462.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit464.i

stbi__get8.exit464.i:                             ; preds = %stbi__refill_buffer.exit.i461.i, %bb.gh, %bb.gg, %stbi__get8.exit458.i
  %i.axq = phi ptr [ %i.awr, %stbi__get8.exit458.i ], [ %i.awr, %bb.gg ], [ %.sink.i.i462.i, %stbi__refill_buffer.exit.i461.i ], [ %i.awr, %bb.gh ]
  %i.axr = phi ptr [ %i.aws, %stbi__get8.exit458.i ], [ %i.awx, %bb.gg ], [ %i.m, %stbi__refill_buffer.exit.i461.i ], [ %i.aws, %bb.gh ]
  %i.axs = phi ptr [ %i.awt, %stbi__get8.exit458.i ], [ %i.awr, %bb.gg ], [ %.sink.i.i462.i, %stbi__refill_buffer.exit.i461.i ], [ %i.awr, %bb.gh ]
  %i.axt = phi ptr [ %i.awu, %stbi__get8.exit458.i ], [ %i.awx, %bb.gg ], [ %i.m, %stbi__refill_buffer.exit.i461.i ], [ %i.aws, %bb.gh ]
  %i.axu = phi i8 [ -1, %stbi__get8.exit458.i ], [ %i.awy, %bb.gg ], [ %i.axp, %stbi__refill_buffer.exit.i461.i ], [ 0, %bb.gh ] ; 2 uses
  %i.axv = zext i8 %i.axu to i32
  %i.axw = or i32 %.133450.i, %i.axv              ; 2 uses
  br i1 %i.aso, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %stbi__get8.exit464.i
  %i.axx = add nsw i32 %.152.i, 4
  %i.axy = sext i32 %i.awv to i64
  %i.axz = getelementptr inbounds i8, ptr %i.adk, i64 %i.axy
  store i8 %i.axu, ptr %i.axz, align 1
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %stbi__get8.exit464.i
  %.2.i = phi i32 [ %i.axx, %bb.gl ], [ %i.awv, %stbi__get8.exit464.i ] ; 2 uses
  %i.aya = add nuw nsw i32 %.332851.i, 1          ; 2 uses
  %i.ayb = load i32, ptr %0, align 8
  %i.ayc = icmp slt i32 %i.aya, %i.ayb
  br i1 %i.ayc, label %.lr.ph.i, label %.loopexit46.i

.lr.ph57.i:                                       ; preds = %.preheader45.i, %bb.gs
  %.356.i = phi i32 [ %.4.i, %bb.gs ], [ %.029062.i, %.preheader45.i ] ; 3 uses
  %.432955.i = phi i32 [ %i.bac, %bb.gs ], [ 0, %.preheader45.i ]
  %.233554.i = phi i32 [ %i.azx, %bb.gs ], [ %.033360.i, %.preheader45.i ]
  %i.ayd = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 2 uses
  br i1 %i.asp, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph57.i
  %i.aye = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.ayf = shl nuw i32 %i.aye, 16
  %i.ayg = or disjoint i32 %i.ayf, %i.ayd
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %.lr.ph57.i
  %i.ayh = phi i32 [ %i.ayg, %bb.gn ], [ %i.ayd, %.lr.ph57.i ] ; 4 uses
  %i.ayi = and i32 %i.ayh, %i.aas                 ; 2 uses
  %i.ayj = shl i32 %i.ayi, %i.asr
  %i.ayk = lshr i32 %i.ayi, %.0298.i
  %.0.i465.i = select i1 %i.asq, i32 %i.ayj, i32 %i.ayk
  %i.ayl = lshr i32 %.0.i465.i, %i.ass
  %i.aym = load i32, ptr %i.asu, align 4
  %i.ayn = mul i32 %i.ayl, %i.aym
  %i.ayo = load i32, ptr %i.asv, align 4
  %i.ayp = ashr i32 %i.ayn, %i.ayo
  %i.ayq = trunc i32 %i.ayp to i8
  %i.ayr = sext i32 %.356.i to i64
  %i.ays = getelementptr inbounds i8, ptr %i.adk, i64 %i.ayr ; 3 uses
  store i8 %i.ayq, ptr %i.ays, align 1
  %i.ayt = and i32 %i.ayh, %i.aau                 ; 2 uses
  %i.ayu = shl i32 %i.ayt, %i.asx
  %i.ayv = lshr i32 %i.ayt, %.0297.i
  %.0.i466.i = select i1 %i.asw, i32 %i.ayu, i32 %i.ayv
  %i.ayw = lshr i32 %.0.i466.i, %i.asy
  %i.ayx = load i32, ptr %i.ata, align 4
  %i.ayy = mul i32 %i.ayx, %i.ayw
  %i.ayz = load i32, ptr %i.atb, align 4
  %i.aza = ashr i32 %i.ayy, %i.ayz
  %i.azb = trunc i32 %i.aza to i8
  %i.azc = getelementptr i8, ptr %i.ays, i64 1
  store i8 %i.azb, ptr %i.azc, align 1
  %i.azd = and i32 %i.ayh, %i.aaw                 ; 2 uses
  %i.aze = shl i32 %i.azd, %i.atd
  %i.azf = lshr i32 %i.azd, %.0296.i
  %.0.i467.i = select i1 %i.atc, i32 %i.aze, i32 %i.azf
  %i.azg = lshr i32 %.0.i467.i, %i.ate
  %i.azh = load i32, ptr %i.atg, align 4
  %i.azi = mul i32 %i.azh, %i.azg
  %i.azj = load i32, ptr %i.ath, align 4
  %i.azk = ashr i32 %i.azi, %i.azj
  %i.azl = trunc i32 %i.azk to i8
  %i.azm = add nsw i32 %.356.i, 3                 ; 2 uses
  %i.azn = getelementptr i8, ptr %i.ays, i64 2
  store i8 %i.azl, ptr %i.azn, align 1
  br i1 %.not372.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.azo = and i32 %i.ayh, %i.aay                 ; 2 uses
  %i.azp = shl i32 %i.azo, %i.atj
  %i.azq = lshr i32 %i.azo, %.0295.i
  %.0.i468.i = select i1 %i.ati, i32 %i.azp, i32 %i.azq
  %i.azr = lshr i32 %.0.i468.i, %i.atk
  %i.azs = load i32, ptr %i.atm, align 4
  %i.azt = mul i32 %i.azs, %i.azr
  %i.azu = load i32, ptr %i.atn, align 4
  %i.azv = ashr i32 %i.azt, %i.azu
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.azw = phi i32 [ %i.azv, %bb.gp ], [ 255, %bb.go ] ; 2 uses
  %i.azx = or i32 %i.azw, %.233554.i              ; 2 uses
  br i1 %i.aso, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.azy = trunc i32 %i.azw to i8
  %i.azz = add nsw i32 %.356.i, 4
  %i.baa = sext i32 %i.azm to i64
  %i.bab = getelementptr inbounds i8, ptr %i.adk, i64 %i.baa
  store i8 %i.azy, ptr %i.bab, align 1
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.4.i = phi i32 [ %i.azz, %bb.gr ], [ %i.azm, %bb.gq ] ; 2 uses
  %i.bac = add nuw nsw i32 %.432955.i, 1          ; 2 uses
  %i.bad = load i32, ptr %0, align 8
  %i.bae = icmp slt i32 %i.bac, %i.bad
  br i1 %i.bae, label %.lr.ph57.i, label %.loopexit46.i

.loopexit46.i:                                    ; preds = %bb.gm, %bb.gs, %.preheader45.i, %.preheader47.i
  %.3336.i = phi i32 [ %i.azx, %bb.gs ], [ %.033360.i, %.preheader45.i ], [ %.033360.i, %.preheader47.i ], [ %i.axw, %bb.gm ] ; 2 uses
  %.5.i = phi i32 [ %.4.i, %bb.gs ], [ %.029062.i, %.preheader45.i ], [ %.029062.i, %.preheader47.i ], [ %.2.i, %bb.gm ]
  br i1 %i.ato, label %stbi__skip.exit474.i, label %bb.gt

bb.gt:                                            ; preds = %.loopexit46.i
  %i.baf = load ptr, ptr %i.g, align 8
  %.not.i469.i = icmp eq ptr %i.baf, null
  br i1 %.not.i469.i, label %..thread_crit_edge.i471.i, label %bb.gu

..thread_crit_edge.i471.i:                        ; preds = %bb.gt
  %.pre.i473.i = load ptr, ptr %i.d, align 8
  br label %.thread.i470.i

bb.gu:                                            ; preds = %bb.gt
  %i.bag = load ptr, ptr %i.e, align 8            ; 2 uses
  %i.bah = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bai = ptrtoint ptr %i.bag to i64
  %i.baj = ptrtoint ptr %i.bah to i64
  %i.bak = sub i64 %i.bai, %i.baj
  %i.bal = trunc i64 %i.bak to i32                ; 2 uses
  %i.bam = icmp sgt i32 %i.asl, %i.bal
  br i1 %i.bam, label %bb.gv, label %.thread.i470.i

bb.gv:                                            ; preds = %bb.gu
  store ptr %i.bag, ptr %i.d, align 8
  %i.ban = load ptr, ptr %i.atp, align 8
  %i.bao = load ptr, ptr %i.h, align 8
  %i.bap = sub nsw i32 %i.asl, %i.bal
  tail call void %i.ban(ptr noundef %i.bao, i32 noundef %i.bap) #52, !inline_history !156
  br label %stbi__skip.exit474.i

.thread.i470.i:                                   ; preds = %bb.gu, %..thread_crit_edge.i471.i
  %i.baq = phi ptr [ %.pre.i473.i, %..thread_crit_edge.i471.i ], [ %i.bah, %bb.gu ]
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 %i.atq
  store ptr %i.bar, ptr %i.d, align 8
  br label %stbi__skip.exit474.i

stbi__skip.exit474.i:                             ; preds = %.thread.i470.i, %bb.gv, %.loopexit46.i
  %i.bas = add nuw nsw i32 %.232361.i, 1          ; 2 uses
  %i.bat = load i32, ptr %i.aak, align 4          ; 2 uses
  %i.bau = icmp slt i32 %i.bas, %i.bat
  br i1 %i.bau, label %bb.fp, label %.loopexit40.i

.loopexit40.i:                                    ; preds = %stbi__skip.exit474.i, %stbi__skip.exit434.i, %stbi__skip.exit.i, %.thread27.i, %.preheader39.i, %.preheader42.i
  %i.bav = phi i32 [ %i.ahx, %.preheader42.i ], [ %i.aik, %.preheader39.i ], [ %i.amc, %stbi__skip.exit.i ], [ %i.aql, %stbi__skip.exit434.i ], [ %i.asm, %.thread27.i ], [ %i.bat, %stbi__skip.exit474.i ] ; 4 uses
  %.5338.i = phi i32 [ %i.aaz, %.preheader42.i ], [ %i.aaz, %.preheader39.i ], [ %i.aaz, %stbi__skip.exit.i ], [ %i.aaz, %stbi__skip.exit434.i ], [ %i.aaz, %.thread27.i ], [ %.3336.i, %stbi__skip.exit474.i ]
  %i.baw = icmp eq i32 %spec.select.i, 4
  %i.bax = icmp eq i32 %.5338.i, 0
  %or.cond25.i = select i1 %i.baw, i1 %i.bax, i1 false
  br i1 %or.cond25.i, label %bb.gw, label %.loopexit38.i

bb.gw:                                            ; preds = %.loopexit40.i
  %i.bay = load i32, ptr %0, align 8
  %i.baz = shl i32 %i.bay, 2
  %i.bba = mul i32 %i.baz, %i.bav                 ; 2 uses
  %i.bbb = add i32 %i.bba, -4
  %i.bbc = icmp sgt i32 %i.bbb, -1
  br i1 %i.bbc, label %.lr.ph89.preheader.i, label %.loopexit38.i

.lr.ph89.preheader.i:                             ; preds = %bb.gw
  %i.bbd = add i32 %i.bba, -1                     ; 2 uses
  %i.bbe = zext i32 %i.bbd to i64                 ; 3 uses
  %i.bbf = lshr i64 %i.bbe, 2
  %i.bbg = add nuw nsw i64 %i.bbf, 1
  %xtraiter = and i64 %i.bbg, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol

.lr.ph89.i.prol:                                  ; preds = %.lr.ph89.preheader.i, %.lr.ph89.i.prol
  %indvars.iv101.i.prol = phi i64 [ %indvars.iv.next102.i.prol, %.lr.ph89.i.prol ], [ %i.bbe, %.lr.ph89.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph89.i.prol ], [ 0, %.lr.ph89.preheader.i ]
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.adk, i64 %indvars.iv101.i.prol
  store i8 -1, ptr %i.bbh, align 1
  %indvars.iv.next102.i.prol = add nsw i64 %indvars.iv101.i.prol, -4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol, !llvm.loop !157

.lr.ph89.i.prol.loopexit:                         ; preds = %.lr.ph89.i.prol, %.lr.ph89.preheader.i
  %indvars.iv101.i.unr = phi i64 [ %i.bbe, %.lr.ph89.preheader.i ], [ %indvars.iv.next102.i.prol, %.lr.ph89.i.prol ]
  %i.bbi = icmp ult i32 %i.bbd, 28
  br i1 %i.bbi, label %.loopexit38.i, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %.lr.ph89.i.prol.loopexit, %.lr.ph89.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i.7, %.lr.ph89.i ], [ %indvars.iv101.i.unr, %.lr.ph89.i.prol.loopexit ] ; 10 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.adk, i64 %indvars.iv101.i
  store i8 -1, ptr %i.bbj, align 1
  %i.bbk = getelementptr i8, ptr %i.adk, i64 %indvars.iv101.i
  %i.bbl = getelementptr i8, ptr %i.bbk, i64 -4
  store i8 -1, ptr %i.bbl, align 1
  %i.bbm = getelementptr i8, ptr %i.adk, i64 %indvars.iv101.i
  %i.bbn = getelementptr i8, ptr %i.bbm, i64 -8
  store i8 -1, ptr %i.bbn, align 1
  %i.bbo = getelementptr i8, ptr %i.adk, i64 %indvars.iv101.i
  %i.bbp = getelementptr i8, ptr %i.bbo, i64 -12
  store i8 -1, ptr %i.bbp, align 1
  %i.bbq = getelementptr i8, ptr %i.adk, i64 %indvars.iv101.i
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 -16
  store i8 -1, ptr %i.bbr, align 1
  %i.bbs = getelementptr i8, ptr %i.adk, i64 %indvars.iv101.i
  %i.bbt = getelementptr i8, ptr %i.bbs, i64 -20
  store i8 -1, ptr %i.bbt, align 1
  %i.bbu = getelementptr i8, ptr %i.adk, i64 %indvars.iv101.i
  %i.bbv = getelementptr i8, ptr %i.bbu, i64 -24
  store i8 -1, ptr %i.bbv, align 1
  %i.bbw = getelementptr i8, ptr %i.adk, i64 %indvars.iv101.i
  %i.bbx = getelementptr i8, ptr %i.bbw, i64 -28
  store i8 -1, ptr %i.bbx, align 1
  %indvars.iv.next102.i.7 = add nsw i64 %indvars.iv101.i, -32
  %i.bby = icmp sgt i64 %indvars.iv101.i, 31
  br i1 %i.bby, label %.lr.ph89.i, label %.loopexit38.i

.loopexit38.i:                                    ; preds = %.lr.ph89.i.prol.loopexit, %.lr.ph89.i, %bb.gw, %.loopexit40.i
  br i1 %i.aam, label %.preheader.i, label %.loopexit38..loopexit_crit_edge.i

.loopexit38..loopexit_crit_edge.i:                ; preds = %.loopexit38.i
  %.pre122.pre.i = load i32, ptr %0, align 8
  br label %.loopexit.i

.preheader.i:                                     ; preds = %.loopexit38.i
  %i.bbz = ashr i32 %i.bav, 1                     ; 2 uses
  %i.bca = icmp sgt i32 %i.bbz, 0
  %.pre122.pre126.i = load i32, ptr %0, align 8   ; 4 uses
  br i1 %i.bca, label %.lr.ph95.i, label %.loopexit.i

.lr.ph95.i:                                       ; preds = %.preheader.i
  %factor.op.mul.i = mul i32 %.pre122.pre126.i, %spec.select.i ; 6 uses
  %i.bcb = icmp sgt i32 %factor.op.mul.i, 0
  br i1 %i.bcb, label %.lr.ph92.preheader.i, label %.loopexit.i

.lr.ph92.preheader.i:                             ; preds = %.lr.ph95.i
  %wide.trip.count112.i = zext nneg i32 %i.bbz to i64
  %wide.trip.count107.i = zext nneg i32 %factor.op.mul.i to i64 ; 10 uses
  %min.iters.check = icmp ult i32 %factor.op.mul.i, 4
  %scevgep20 = getelementptr i8, ptr %i.adk, i64 %wide.trip.count107.i
  %invariant.gep133 = getelementptr i8, ptr %i.adk, i64 %wide.trip.count107.i
  %min.iters.check22 = icmp ult i32 %factor.op.mul.i, 32
  %i.bcc = and i64 %wide.trip.count107.i, 28
  %n.vec = and i64 %wide.trip.count107.i, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107.i
  %min.epilog.iters.check = icmp eq i64 %i.bcc, 0
  %n.vec26 = and i64 %wide.trip.count107.i, 2147483644 ; 3 uses
  %cmp.n31 = icmp eq i64 %n.vec26, %wide.trip.count107.i
  %xtraiter84 = and i64 %wide.trip.count107.i, 1
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  %i.bcd = add nsw i64 %wide.trip.count107.i, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge93.i, %.lr.ph92.preheader.i
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph92.preheader.i ], [ %indvars.iv.next110.i, %._crit_edge93.i ] ; 2 uses
  %i.bce = trunc nuw nsw i64 %indvars.iv109.i to i32 ; 2 uses
  %.reass.i = mul i32 %factor.op.mul.i, %i.bce
  %i.bcf = zext i32 %.reass.i to i64              ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.bcf ; 6 uses
  %i.bch = xor i32 %i.bce, -1
  %i.bci = add i32 %i.bav, %i.bch
  %i.bcj = mul i32 %i.bci, %factor.op.mul.i
  %i.bck = zext i32 %i.bcj to i64                 ; 2 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.bck ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep21 = getelementptr i8, ptr %scevgep20, i64 %i.bcf
  %scevgep19 = getelementptr i8, ptr %invariant.gep133, i64 %i.bck
  %bound0 = icmp ult ptr %i.bcg, %scevgep19
  %bound1 = icmp ult ptr %i.bcl, %scevgep21
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %index ; 3 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bcm, align 1, !alias.scope !164, !noalias !165
  %wide.load23 = load <16 x i8>, ptr %i.bcn, align 1, !alias.scope !164, !noalias !165
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcl, i64 %index ; 3 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 16 ; 2 uses
  %wide.load24 = load <16 x i8>, ptr %i.bco, align 1, !alias.scope !165
  %wide.load25 = load <16 x i8>, ptr %i.bcp, align 1, !alias.scope !165
  store <16 x i8> %wide.load24, ptr %i.bcm, align 1, !alias.scope !164, !noalias !165
  store <16 x i8> %wide.load25, ptr %i.bcn, align 1, !alias.scope !164, !noalias !165
  store <16 x i8> %wide.load, ptr %i.bco, align 1, !alias.scope !165
  store <16 x i8> %wide.load23, ptr %i.bcp, align 1, !alias.scope !165
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bcq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bcq, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge93.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %index27 ; 2 uses
  %wide.load28 = load <4 x i8>, ptr %i.bcr, align 1, !alias.scope !164, !noalias !165
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcl, i64 %index27 ; 2 uses
  %wide.load29 = load <4 x i8>, ptr %i.bcs, align 1, !alias.scope !165
  store <4 x i8> %wide.load29, ptr %i.bcr, align 1, !alias.scope !164, !noalias !165
  store <4 x i8> %wide.load28, ptr %i.bcs, align 1, !alias.scope !165
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %i.bct = icmp eq i64 %index.next30, %n.vec26
  br i1 %i.bct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n31, label %._crit_edge93.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv104.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod85.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %indvars.iv104.i.ph ; 2 uses
  %i.bcv = load i8, ptr %i.bcu, align 1
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcl, i64 %indvars.iv104.i.ph ; 2 uses
  %i.bcx = load i8, ptr %i.bcw, align 1
  store i8 %i.bcx, ptr %i.bcu, align 1
  store i8 %i.bcv, ptr %i.bcw, align 1
  %indvars.iv.next105.i.prol = or disjoint i64 %indvars.iv104.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv104.i.unr = phi i64 [ %indvars.iv104.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next105.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.bcy = icmp eq i64 %indvars.iv104.i.ph, %i.bcd
  br i1 %i.bcy, label %._crit_edge93.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv104.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %indvars.iv104.i ; 2 uses
  %i.bda = load i8, ptr %i.bcz, align 1
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcl, i64 %indvars.iv104.i ; 2 uses
  %i.bdc = load i8, ptr %i.bdb, align 1
  store i8 %i.bdc, ptr %i.bcz, align 1
  store i8 %i.bda, ptr %i.bdb, align 1
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %indvars.iv.next105.i ; 2 uses
  %i.bde = load i8, ptr %i.bdd, align 1
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bcl, i64 %indvars.iv.next105.i ; 2 uses
  %i.bdg = load i8, ptr %i.bdf, align 1
  store i8 %i.bdg, ptr %i.bdd, align 1
  store i8 %i.bde, ptr %i.bdf, align 1
  %indvars.iv.next105.i.1 = add nuw nsw i64 %indvars.iv104.i, 2 ; 2 uses
  %exitcond108.not.i.1 = icmp eq i64 %indvars.iv.next105.i.1, %wide.trip.count107.i
  br i1 %exitcond108.not.i.1, label %._crit_edge93.i, label %vec.epilog.scalar.ph, !llvm.loop !163

._crit_edge93.i:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count112.i
  br i1 %exitcond113.not.i, label %.loopexit.i, label %iter.check

.loopexit.i:                                      ; preds = %._crit_edge93.i, %.lr.ph95.i, %.preheader.i, %.loopexit38..loopexit_crit_edge.i
  %.pre122.i = phi i32 [ %.pre122.pre.i, %.loopexit38..loopexit_crit_edge.i ], [ %.pre122.pre126.i, %.lr.ph95.i ], [ %.pre122.pre126.i, %.preheader.i ], [ %.pre122.pre126.i, %._crit_edge93.i ] ; 2 uses
  %.not376.i = icmp eq i32 %4, %spec.select.i
  %or.cond382.i = or i1 %.not367.i, %.not376.i
  br i1 %or.cond382.i, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %.loopexit.i
  %i.bdh = tail call fastcc ptr @stbi__convert_format(ptr noundef nonnull %i.adk, i32 noundef %spec.select.i, i32 noundef %4, i32 noundef %.pre122.i, i32 noundef %i.bav) ; 2 uses
  %i.bdi = icmp eq ptr %i.bdh, null
  br i1 %i.bdi, label %stbi__bmp_load.exit, label %._crit_edge120.i

._crit_edge120.i:                                 ; preds = %bb.gx
  %.pre121.i = load i32, ptr %0, align 8
  br label %bb.gy

bb.gy:                                            ; preds = %._crit_edge120.i, %.loopexit.i
  %i.bdj = phi i32 [ %.pre121.i, %._crit_edge120.i ], [ %.pre122.i, %.loopexit.i ]
  %.0339.i = phi ptr [ %i.bdh, %._crit_edge120.i ], [ %i.adk, %.loopexit.i ] ; 2 uses
  store i32 %i.bdj, ptr %1, align 4
  %i.bdk = load i32, ptr %i.aak, align 4
  store i32 %i.bdk, ptr %2, align 4
  %.not377.i = icmp eq ptr %3, null
  br i1 %.not377.i, label %stbi__bmp_load.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.bdl = load i32, ptr %i.acw, align 8
  store i32 %i.bdl, ptr %3, align 4
  br label %stbi__bmp_load.exit

stbi__bmp_load.exit:                              ; preds = %bb.bv, %bb.bx, %bb.bz, %bb.cg, %bb.cj, %bb.cp, %stbi__malloc_mad3.exit.thread.i, %bb.cs, %bb.dr, %bb.fm, %bb.fo, %bb.gx, %bb.gy, %bb.gz
  %.4344.i = phi ptr [ %.0339.i, %bb.gy ], [ null, %bb.bx ], [ null, %bb.bz ], [ null, %bb.bv ], [ null, %bb.gx ], [ null, %bb.cg ], [ null, %bb.cs ], [ null, %stbi__malloc_mad3.exit.thread.i ], [ null, %bb.cp ], [ %.0339.i, %bb.gz ], [ null, %bb.cj ], [ null, %bb.dr ], [ null, %bb.fm ], [ null, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.hh

bb.ha:                                            ; preds = %stbi__bmp_test.exit.thread, %stbi__bmp_test.exit
  %i.bdm = tail call fastcc i32 @stbi__gif_test(ptr noundef %0)
  %.not26 = icmp eq i32 %i.bdm, 0
  br i1 %.not26, label %bb.hg, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34928) %6, i8 0, i64 34928, i1 false)
  %i.bdn = call fastcc ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %3, ptr noundef null) ; 4 uses
  %i.bdo = icmp eq ptr %i.bdn, %0
  %.not1.i = icmp eq ptr %i.bdn, null
  %.not.i42 = or i1 %i.bdo, %.not1.i
  br i1 %.not.i42, label %bb.he, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bdp = load i32, ptr %6, align 8              ; 2 uses
  store i32 %i.bdp, ptr %1, align 4
  %i.bdq = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bdr = load i32, ptr %i.bdq, align 4          ; 2 uses
  store i32 %i.bdr, ptr %2, align 4
  %i.bds = and i32 %4, -5
  %or.cond.not.i = icmp eq i32 %i.bds, 0
  br i1 %or.cond.not.i, label %stbi__gif_load.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bdt = call fastcc ptr @stbi__convert_format(ptr noundef nonnull %i.bdn, i32 noundef 4, i32 noundef %4, i32 noundef %i.bdp, i32 noundef %i.bdr)
  br label %stbi__gif_load.exit

bb.he:                                            ; preds = %bb.hb
  %i.bdu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bdv = load ptr, ptr %i.bdu, align 8          ; 2 uses
  %.not15.i = icmp eq ptr %i.bdv, null
  br i1 %.not15.i, label %stbi__gif_load.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @free(ptr noundef nonnull %i.bdv) #52
  br label %stbi__gif_load.exit

stbi__gif_load.exit:                              ; preds = %bb.hc, %bb.hd, %bb.he, %bb.hf
  %.0.i = phi ptr [ %i.bdt, %bb.hd ], [ %i.bdn, %bb.hc ], [ null, %bb.hf ], [ null, %bb.he ]
  %i.bdw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bdx = load ptr, ptr %i.bdw, align 8
  call void @free(ptr noundef %i.bdx) #52
  %i.bdy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bdz = load ptr, ptr %i.bdy, align 8
  call void @free(ptr noundef %i.bdz) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  br label %bb.hh

bb.hg:                                            ; preds = %bb.ha
  store ptr @.str.83, ptr @stbi__g_failure_reason, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %stbi__gif_load.exit, %stbi__bmp_load.exit, %stbi__png_load.exit
  %.0 = phi ptr [ %.043.i.i, %stbi__png_load.exit ], [ %.4344.i, %stbi__bmp_load.exit ], [ %.0.i, %stbi__gif_load.exit ], [ null, %bb.hg ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__gif_test(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 20 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %stbi__get8.exit.i
end_hunk_1

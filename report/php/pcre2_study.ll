Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_study?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@set_start_bits:bb.a
  %i.aib = load i8, ptr %i.ab, align 1, !tbaa !22
  %i.aic = or i8 %i.aib, %i.aia
  store i8 %i.aic, ptr %i.ab, align 1, !tbaa !22
  %i.aid = load i8, ptr %i.acy, align 1, !tbaa !22
  %i.aie = load i8, ptr %i.ac, align 1, !tbaa !22
  %i.aif = or i8 %i.aie, %i.aid
  store i8 %i.aif, ptr %i.ac, align 1, !tbaa !22
  %i.aig = getelementptr inbounds nuw i8, ptr %.2270446, i64 7
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !22
  %i.aii = load i8, ptr %i.ad, align 1, !tbaa !22
  %i.aij = or i8 %i.aii, %i.aih
  store i8 %i.aij, ptr %i.ad, align 1, !tbaa !22
  %i.aik = getelementptr inbounds nuw i8, ptr %.2270446, i64 8
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !22
  %i.aim = load i8, ptr %i.ae, align 1, !tbaa !22
  %i.ain = or i8 %i.aim, %i.ail
  store i8 %i.ain, ptr %i.ae, align 1, !tbaa !22
  %i.aio = getelementptr inbounds nuw i8, ptr %.2270446, i64 9
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !22
  %i.aiq = load i8, ptr %i.af, align 1, !tbaa !22
  %i.air = or i8 %i.aiq, %i.aip
  store i8 %i.air, ptr %i.af, align 1, !tbaa !22
  %i.ais = getelementptr inbounds nuw i8, ptr %.2270446, i64 10
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !22
  %i.aiu = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.aiv = or i8 %i.aiu, %i.ait
  store i8 %i.aiv, ptr %i.ag, align 1, !tbaa !22
  %i.aiw = getelementptr inbounds nuw i8, ptr %.2270446, i64 11
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !22
  %i.aiy = load i8, ptr %i.ah, align 1, !tbaa !22
  %i.aiz = or i8 %i.aiy, %i.aix
  store i8 %i.aiz, ptr %i.ah, align 1, !tbaa !22
  %i.aja = getelementptr inbounds nuw i8, ptr %.2270446, i64 12
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !22
  %i.ajc = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ajd = or i8 %i.ajc, %i.ajb
  store i8 %i.ajd, ptr %i.ai, align 1, !tbaa !22
  %i.aje = getelementptr inbounds nuw i8, ptr %.2270446, i64 13
  %i.ajf = load i8, ptr %i.aje, align 1, !tbaa !22
  %i.ajg = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.ajh = or i8 %i.ajg, %i.ajf
  store i8 %i.ajh, ptr %i.aj, align 1, !tbaa !22
  %i.aji = getelementptr inbounds nuw i8, ptr %.2270446, i64 14
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !22
  %i.ajk = load i8, ptr %i.ak, align 1, !tbaa !22
  %i.ajl = or i8 %i.ajk, %i.ajj
  store i8 %i.ajl, ptr %i.ak, align 1, !tbaa !22
  %i.ajm = getelementptr inbounds nuw i8, ptr %.2270446, i64 15
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !22
  %i.ajo = load i8, ptr %i.al, align 1, !tbaa !22
  %i.ajp = or i8 %i.ajo, %i.ajn
  store i8 %i.ajp, ptr %i.al, align 1, !tbaa !22
  %i.ajq = getelementptr inbounds nuw i8, ptr %.2270446, i64 16
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !22
  %i.ajs = load i8, ptr %i.am, align 1, !tbaa !22
  %i.ajt = or i8 %i.ajs, %i.ajr
  store i8 %i.ajt, ptr %i.am, align 1, !tbaa !22
  %i.aju = getelementptr inbounds nuw i8, ptr %.2270446, i64 17
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !22
  %i.ajw = load i8, ptr %i.an, align 1, !tbaa !22
  %i.ajx = or i8 %i.ajw, %i.ajv
  store i8 %i.ajx, ptr %i.an, align 1, !tbaa !22
  %i.ajy = getelementptr inbounds nuw i8, ptr %.2270446, i64 18
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !22
  %i.aka = load i8, ptr %i.ao, align 1, !tbaa !22
  %i.akb = or i8 %i.aka, %i.ajz
  store i8 %i.akb, ptr %i.ao, align 1, !tbaa !22
  %i.akc = getelementptr inbounds nuw i8, ptr %.2270446, i64 19
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !22
  %i.ake = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.akf = or i8 %i.ake, %i.akd
  store i8 %i.akf, ptr %i.ap, align 1, !tbaa !22
  %i.akg = getelementptr inbounds nuw i8, ptr %.2270446, i64 20
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !22
  %i.aki = load i8, ptr %i.aq, align 1, !tbaa !22
  %i.akj = or i8 %i.aki, %i.akh
  store i8 %i.akj, ptr %i.aq, align 1, !tbaa !22
  %i.akk = getelementptr inbounds nuw i8, ptr %.2270446, i64 21
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !22
  %i.akm = load i8, ptr %i.ar, align 1, !tbaa !22
  %i.akn = or i8 %i.akm, %i.akl
  store i8 %i.akn, ptr %i.ar, align 1, !tbaa !22
  %i.ako = getelementptr inbounds nuw i8, ptr %.2270446, i64 22
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !22
  %i.akq = load i8, ptr %i.as, align 1, !tbaa !22
  %i.akr = or i8 %i.akq, %i.akp
  store i8 %i.akr, ptr %i.as, align 1, !tbaa !22
  %i.aks = getelementptr inbounds nuw i8, ptr %.2270446, i64 23
  %i.akt = load i8, ptr %i.aks, align 1, !tbaa !22
  %i.aku = load i8, ptr %i.at, align 1, !tbaa !22
  %i.akv = or i8 %i.aku, %i.akt
  store i8 %i.akv, ptr %i.at, align 1, !tbaa !22
  %i.akw = getelementptr inbounds nuw i8, ptr %.2270446, i64 24
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !22
  %i.aky = load i8, ptr %i.au, align 1, !tbaa !22
  %i.akz = or i8 %i.aky, %i.akx
  store i8 %i.akz, ptr %i.au, align 1, !tbaa !22
  %i.ala = getelementptr inbounds nuw i8, ptr %.2270446, i64 25
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !22
  %i.alc = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ald = or i8 %i.alc, %i.alb
  store i8 %i.ald, ptr %i.av, align 1, !tbaa !22
  %i.ale = getelementptr inbounds nuw i8, ptr %.2270446, i64 26
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !22
  %i.alg = load i8, ptr %i.aw, align 1, !tbaa !22
  %i.alh = or i8 %i.alg, %i.alf
  store i8 %i.alh, ptr %i.aw, align 1, !tbaa !22
  %i.ali = getelementptr inbounds nuw i8, ptr %.2270446, i64 27
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !22
  %i.alk = load i8, ptr %i.ax, align 1, !tbaa !22
  %i.all = or i8 %i.alk, %i.alj
  store i8 %i.all, ptr %i.ax, align 1, !tbaa !22
  %i.alm = getelementptr inbounds nuw i8, ptr %.2270446, i64 28
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !22
  %i.alo = load i8, ptr %i.ay, align 1, !tbaa !22
  %i.alp = or i8 %i.alo, %i.aln
  store i8 %i.alp, ptr %i.ay, align 1, !tbaa !22
  %i.alq = getelementptr inbounds nuw i8, ptr %.2270446, i64 29
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !22
  %i.als = load i8, ptr %i.az, align 1, !tbaa !22
  %i.alt = or i8 %i.als, %i.alr
  store i8 %i.alt, ptr %i.az, align 1, !tbaa !22
  %i.alu = getelementptr inbounds nuw i8, ptr %.2270446, i64 30
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !22
  %i.alw = load i8, ptr %i.ba, align 1, !tbaa !22
  %i.alx = or i8 %i.alw, %i.alv
  store i8 %i.alx, ptr %i.ba, align 1, !tbaa !22
  %i.aly = getelementptr inbounds nuw i8, ptr %.2270446, i64 31
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !22
  %i.ama = load i8, ptr %i.bb, align 1, !tbaa !22
  %i.amb = or i8 %i.ama, %i.alz
  br label %.preheader479.preheader.rtcont

.preheader479.preheader.rtcont:                   ; preds = %.preheader479.preheader.rtscalar, %.preheader479.preheader.rtvec
  %storemerge = phi i8 [ %i.aho, %.preheader479.preheader.rtvec ], [ %i.amb, %.preheader479.preheader.rtscalar ]
  store i8 %storemerge, ptr %i.bb, align 1, !tbaa !22
  br label %.loopexit477
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_minlength(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.recurse_check, align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = and i32 %i.b, 2097152
  %.not = icmp eq i32 %i.c, 0                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.h = load i8, ptr %1, align 1, !tbaa !22      ; 2 uses
  %i.i = add i8 %i.h, 116
  %or.cond493 = icmp ult i8 %i.i, 5
  br i1 %or.cond493, label %.thread563, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %5, align 4, !tbaa !12     ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %5, align 4, !tbaa !12
  %i.l = icmp sgt i32 %i.j, 1000
  br i1 %i.l, label %.thread563, label %.preheader581

.preheader581:                                    ; preds = %bb.b
  %.off = add i8 %i.h, 119
  %switch = icmp ult i8 %.off, 2
  %spec.select505.v = select i1 %switch, i64 5, i64 3
  %spec.select505 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select505.v
  %i.m = zext i8 %i.e to i64
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = zext i8 %i.g to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %.not481 = icmp eq i32 %3, 0                    ; 4 uses
  %.not482590 = icmp eq ptr %4, null              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %scevgep = getelementptr i8, ptr %6, i64 4      ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.preheader581
  %.0429 = phi i32 [ -1, %.preheader581 ], [ %.0429.be, %.backedge ] ; 34 uses
  %.0421 = phi i32 [ 0, %.preheader581 ], [ %.0421.be, %.backedge ] ; 2 uses
  %.0417 = phi i32 [ -1, %.preheader581 ], [ %.0417.be, %.backedge ] ; 33 uses
  %.0413 = phi i32 [ 0, %.preheader581 ], [ %.0413.be, %.backedge ] ; 32 uses
  %.0407 = phi i32 [ -1, %.preheader581 ], [ %.0407.be, %.backedge ] ; 35 uses
  %.0401 = phi i32 [ 0, %.preheader581 ], [ %.0401.be, %.backedge ] ; 35 uses
  %.0398 = phi i32 [ 0, %.preheader581 ], [ %.0398.be, %.backedge ] ; 31 uses
  %.0382 = phi i32 [ 0, %.preheader581 ], [ %.0382.be, %.backedge ] ; 39 uses
  %.0379 = phi ptr [ %i.q, %.preheader581 ], [ %.0379.be, %.backedge ] ; 32 uses
  %.1368 = phi ptr [ %spec.select505, %.preheader581 ], [ %.1368.be, %.backedge ]
  %i.v = icmp sgt i32 %.0421, 65534               ; 2 uses
  %spec.select = select i1 %i.v, i32 65535, i32 %.0421 ; 38 uses
  %spec.select494 = select i1 %i.v, ptr %.0379, ptr %.1368 ; 98 uses
  %i.w = load i8, ptr %spec.select494, align 1, !tbaa !22 ; 30 uses
  switch i8 %i.w, label %.thread563 [
    i8 -117, label %bb.d
    i8 -112, label %bb.d
    i8 -121, label %bb.f
    i8 -123, label %bb.h
    i8 -122, label %bb.h
    i8 -116, label %bb.h
    i8 -120, label %bb.h
    i8 -115, label %bb.h
    i8 -119, label %bb.j
    i8 -114, label %bb.j
    i8 -118, label %bb.j
    i8 -113, label %bb.j
    i8 -92, label %.thread563.loopexit677
    i8 -91, label %.thread563.loopexit677
    i8 120, label %bb.o
    i8 121, label %bb.o
    i8 122, label %bb.o
    i8 123, label %bb.o
    i8 124, label %bb.o
    i8 0, label %bb.o
    i8 127, label %.preheader676
    i8 -128, label %.preheader676
    i8 -127, label %.preheader676
    i8 -126, label %.preheader676
    i8 -125, label %.preheader676
    i8 -124, label %.preheader676
    i8 125, label %.loopexit
    i8 126, label %.loopexit
    i8 -111, label %.loopexit
    i8 -110, label %.loopexit
    i8 -109, label %.loopexit
    i8 -108, label %.loopexit
    i8 -107, label %.loopexit
    i8 -106, label %.loopexit
    i8 118, label %.loopexit
    i8 1, label %.loopexit
    i8 2, label %.loopexit
    i8 24, label %.loopexit
    i8 23, label %.loopexit
    i8 27, label %.loopexit
    i8 28, label %.loopexit
    i8 25, label %.loopexit
    i8 26, label %.loopexit
    i8 4, label %.loopexit
    i8 5, label %.loopexit
    i8 -87, label %.loopexit
    i8 -86, label %.loopexit
    i8 119, label %bb.u
    i8 -105, label %bb.v
    i8 -104, label %bb.v
    i8 -103, label %bb.v
    i8 -89, label %bb.v
    i8 29, label %bb.y
    i8 30, label %bb.y
    i8 31, label %bb.y
    i8 32, label %bb.y
    i8 35, label %bb.y
    i8 48, label %bb.y
    i8 36, label %bb.y
    i8 49, label %bb.y
    i8 43, label %bb.y
    i8 56, label %bb.y
    i8 61, label %bb.y
    i8 74, label %bb.y
    i8 62, label %bb.y
    i8 75, label %bb.y
    i8 69, label %bb.y
    i8 82, label %bb.y
    i8 87, label %bb.ab
    i8 88, label %bb.ab
    i8 95, label %bb.ab
    i8 41, label %bb.ac
    i8 54, label %bb.ac
    i8 67, label %bb.ac
    i8 80, label %bb.ac
    i8 93, label %bb.af
    i8 16, label %bb.ag
    i8 15, label %bb.ag
    i8 6, label %bb.ah
    i8 7, label %bb.ah
    i8 8, label %bb.ah
    i8 9, label %bb.ah
    i8 10, label %bb.ah
    i8 11, label %bb.ah
    i8 12, label %bb.ah
    i8 13, label %bb.ah
    i8 22, label %bb.ah
    i8 19, label %bb.ah
    i8 18, label %bb.ah
    i8 21, label %bb.ah
    i8 20, label %bb.ah
    i8 17, label %bb.ai
    i8 14, label %bb.aj
    i8 85, label %bb.al
    i8 86, label %bb.al
    i8 89, label %bb.al
    i8 90, label %bb.al
    i8 94, label %bb.al
    i8 96, label %bb.al
    i8 91, label %bb.am
    i8 92, label %bb.am
    i8 97, label %bb.am
    i8 110, label %8
    i8 111, label %8
    i8 112, label %8
    i8 115, label %bb.au
    i8 116, label %bb.au
    i8 113, label %bb.bd
    i8 114, label %bb.bd
    i8 117, label %bb.br
    i8 39, label %bb.bw
    i8 52, label %bb.bw
    i8 65, label %bb.bw
    i8 78, label %bb.bw
    i8 40, label %bb.bw
    i8 53, label %bb.bw
    i8 66, label %bb.bw
    i8 79, label %bb.bw
    i8 45, label %bb.bw
    i8 58, label %bb.bw
    i8 71, label %bb.bw
    i8 84, label %bb.bw
    i8 33, label %bb.bw
    i8 46, label %bb.bw
    i8 59, label %bb.bw
    i8 72, label %bb.bw
    i8 34, label %bb.bw
    i8 47, label %bb.bw
    i8 60, label %bb.bw
    i8 73, label %bb.bw
    i8 42, label %bb.bw
    i8 55, label %bb.bw
    i8 68, label %bb.bw
    i8 81, label %bb.bw
    i8 37, label %bb.bw
    i8 50, label %bb.bw
    i8 63, label %bb.bw
    i8 76, label %bb.bw
    i8 38, label %bb.bw
    i8 51, label %bb.bw
    i8 64, label %bb.bw
    i8 77, label %bb.bw
    i8 44, label %bb.bw
    i8 57, label %bb.bw
    i8 70, label %bb.bw
    i8 83, label %bb.bw
    i8 -102, label %bb.bz
    i8 -94, label %bb.bz
    i8 -100, label %bb.bz
    i8 -98, label %bb.bz
    i8 -96, label %bb.bz
    i8 -90, label %bb.ca
    i8 -95, label %bb.ca
    i8 -93, label %bb.ca
    i8 -101, label %bb.ca
    i8 3, label %bb.ca
    i8 -99, label %bb.ca
    i8 -97, label %bb.ca
  ]

.preheader676:                                    ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.t

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !22
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select494, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !22
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %.not492 = icmp eq i8 %i.ag, 120
  br i1 %.not492, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  br label %.backedge

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select494, i64 3 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ak = icmp eq i8 %i.aj, 117
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select494, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22
  %i.an = icmp eq i8 %i.am, 121
  br i1 %i.an, label %.backedge, label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.g, %bb.f, %bb.d
  %i.ao = call fastcc i32 @find_minlength(ptr noundef %0, ptr noundef nonnull %spec.select494, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.thread563, label %.preheader666

.preheader666:                                    ; preds = %bb.h, %.preheader666
  %.3370 = phi ptr [ %i.ay, %.preheader666 ], [ %spec.select494, %bb.h ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.3370, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !22
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 8
  %i.au = getelementptr inbounds nuw i8, ptr %.3370, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !22
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.3370, i64 %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !22
  %i.ba = icmp eq i8 %i.az, 120
  br i1 %i.ba, label %.preheader666, label %bb.i, !llvm.loop !137

bb.i:                                             ; preds = %.preheader666
  %i.bb = add nsw i32 %i.ao, %spec.select
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  br label %.backedge

bb.j:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %spec.select494, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !22
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %spec.select494, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !22
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bg, %i.bj            ; 2 uses
  %.not491 = icmp eq i32 %i.bk, %.0417
  %or.cond495 = select i1 %.not, i1 %.not491, i1 false
  br i1 %or.cond495, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = call fastcc i32 @find_minlength(ptr noundef %0, ptr noundef nonnull %spec.select494, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 3 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.thread563, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.1418 = phi i32 [ %i.bk, %bb.k ], [ %.0417, %bb.j ]
  %.1414 = phi i32 [ %i.bl, %bb.k ], [ %.0413, %bb.j ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.4371 = phi ptr [ %spec.select494, %bb.l ], [ %i.bv, %bb.m ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.4371, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !22
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %.4371, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !22
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.4371, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !22
  %i.bx = icmp eq i8 %i.bw, 120
  br i1 %i.bx, label %bb.m, label %bb.n, !llvm.loop !138

bb.n:                                             ; preds = %bb.m
  %i.by = add nsw i32 %.1414, %spec.select
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  br label %.backedge

bb.o:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.ca = icmp slt i32 %.0429, 0
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not490 = icmp eq i32 %.0382, 0
  %i.cb = icmp slt i32 %spec.select, %.0429
  %or.cond496 = select i1 %.not490, i1 %i.cb, i1 false
  br i1 %or.cond496, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1430 = phi i32 [ %spec.select, %bb.q ], [ %.0429, %bb.p ] ; 3 uses
  %i.cc = icmp ne i8 %i.w, 120
  %i.cd = icmp eq i32 %.1430, 0
  %or.cond = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond, label %.thread563, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !22
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 8
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select494, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !22
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %spec.select494, i64 3
  br label %.backedge

bb.t:                                             ; preds = %.preheader676, %bb.t
  %.5372 = phi ptr [ %i.cw, %bb.t ], [ %spec.select494, %.preheader676 ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.5372, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !22
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.5372, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !22
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.5372, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !22  ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 120
  br i1 %i.cy, label %bb.t, label %.loopexit, !llvm.loop !139

.loopexit:                                        ; preds = %bb.t, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.cz = phi i8 [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.w, %bb.c ], [ %i.cx, %bb.t ]
  %.6373 = phi ptr [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %i.cw, %bb.t ]
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !22
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.6373, i64 %i.dd
  br label %.backedge

bb.u:                                             ; preds = %bb.c
  %i.df = getelementptr inbounds nuw i8, ptr %spec.select494, i64 5
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !22
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 8
  %i.dj = getelementptr inbounds nuw i8, ptr %spec.select494, i64 6
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !22
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl
  br label %.backedge

bb.v:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.do = zext i8 %i.w to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !22
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %i.dr
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.7374 = phi ptr [ %i.ds, %bb.v ], [ %i.eb, %bb.w ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.7374, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !22
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.7374, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !22
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %.7374, i64 %i.dw
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !22
  %i.ed = icmp eq i8 %i.ec, 120
  br i1 %i.ed, label %bb.w, label %bb.x, !llvm.loop !140

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 3
  br label %.backedge

bb.y:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.ef = add nsw i32 %spec.select, 1             ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %spec.select494, i64 2 ; 3 uses
  br i1 %.not481, label %.backedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !22  ; 2 uses
  %i.ej = icmp ugt i8 %i.ei, -65
  br i1 %i.ej, label %bb.aa, label %.backedge

bb.aa:                                            ; preds = %bb.z
  %i.ek = and i8 %i.ei, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @_pcre2_utf8_table4, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !22
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eo
  br label %.backedge

bb.ab:                                            ; preds = %bb.c, %bb.c, %bb.c
  %i.eq = add nsw i32 %spec.select, 1
  %i.er = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !22
  %i.et = add i8 %i.es, -15
  %i.eu = icmp ult i8 %i.et, 2
  %i.ev = select i1 %i.eu, i64 4, i64 2
  %i.ew = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %i.ev
  br label %.backedge

bb.ac:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.ex = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8
  %i.fb = getelementptr inbounds nuw i8, ptr %spec.select494, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !22
  %i.fd = zext i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fa, %i.fd
  %i.ff = add i32 %i.fe, %spec.select             ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %spec.select494, i64 4 ; 3 uses
  br i1 %.not481, label %.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %spec.select494, i64 3
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !22  ; 2 uses
  %i.fj = icmp ugt i8 %i.fi, -65
  br i1 %i.fj, label %bb.ae, label %.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.fk = and i8 %i.fi, 63
  %i.fl = zext nneg i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @_pcre2_utf8_table4, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !22
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fo
  br label %.backedge

bb.af:                                            ; preds = %bb.c
  %i.fq = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !22
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 8
  %i.fu = getelementptr inbounds nuw i8, ptr %spec.select494, i64 2
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !22
  %i.fw = zext i8 %i.fv to i32
  %i.fx = or disjoint i32 %i.ft, %i.fw
  %i.fy = add i32 %i.fx, %spec.select
  %i.fz = getelementptr inbounds nuw i8, ptr %spec.select494, i64 3
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !22
  %i.gb = add i8 %i.ga, -15
  %i.gc = icmp ult i8 %i.gb, 2
  %i.gd = select i1 %i.gc, i64 6, i64 4
  %i.ge = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %i.gd
  br label %.backedge

bb.ag:                                            ; preds = %bb.c, %bb.c
  %i.gf = getelementptr inbounds nuw i8, ptr %spec.select494, i64 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.8375 = phi ptr [ %i.gf, %bb.ag ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ], [ %spec.select494, %bb.c ]
  %i.gg = add nsw i32 %spec.select, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.8375, i64 1
  br label %.backedge

bb.ai:                                            ; preds = %bb.c
  %i.gi = add nsw i32 %spec.select, 1
  %i.gj = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  br label %.backedge

bb.aj:                                            ; preds = %bb.c
  br i1 %.not481, label %bb.ak, label %.thread563

bb.ak:                                            ; preds = %bb.aj
  %i.gk = add nsw i32 %spec.select, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  br label %.backedge

bb.al:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.gm = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !22
  %.off506 = add i8 %i.gn, -15
  %switch507 = icmp ult i8 %.off506, 2
  %spec.select508.idx = select i1 %switch507, i64 2, i64 0
  %spec.select508 = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %spec.select508.idx
  %i.go = zext nneg i8 %i.w to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !22
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %spec.select508, i64 %i.gr
  br label %.backedge

bb.am:                                            ; preds = %bb.c, %bb.c, %bb.c
  %i.gt = getelementptr inbounds nuw i8, ptr %spec.select494, i64 3
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !22
  %.off509 = add i8 %i.gu, -15
  %switch510 = icmp ult i8 %.off509, 2
  %spec.select511.idx = select i1 %switch510, i64 2, i64 0
  %spec.select511 = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %spec.select511.idx
  %i.gv = zext nneg i8 %i.w to i64
  %i.gw = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !22
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %spec.select511, i64 %i.gy
  br label %.backedge

8:                                                ; preds = %bb.c, %bb.c, %bb.c
  %9 = icmp eq i8 %i.w, 112
  br i1 %9, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %8
  %i.ha = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !22
  %i.hc = zext i8 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 8
  %i.he = getelementptr inbounds nuw i8, ptr %spec.select494, i64 2
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !22
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %i.hd
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hg
  br label %bb.ap

bb.ao:                                            ; preds = %8
  %i.hj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_pcre2_OP_lengths_8, i64 110), align 1, !tbaa !22
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %spec.select494, i64 %i.hk
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.11378 = phi ptr [ %i.hi, %bb.an ], [ %i.hl, %bb.ao ] ; 6 uses
  %i.hm = load i8, ptr %.11378, align 1, !tbaa !22
  switch i8 %i.hm, label %bb.at [
    i8 100, label %bb.aq
    i8 101, label %bb.aq
    i8 107, label %bb.aq
    i8 98, label %bb.ar
    i8 99, label %bb.ar
    i8 102, label %bb.ar
    i8 103, label %bb.ar
    i8 106, label %bb.ar
    i8 108, label %bb.ar
    i8 104, label %bb.as
    i8 105, label %bb.as
    i8 109, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap, %bb.ap
  %i.hn = add nsw i32 %spec.select, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap
  %.2423 = phi i32 [ %i.hn, %bb.aq ], [ %spec.select, %bb.ap ], [ %spec.select, %bb.ap ], [ %spec.select, %bb.ap ], [ %spec.select, %bb.ap ], [ %spec.select, %bb.ap ], [ %spec.select, %bb.ap ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.11378, i64 1
  br label %.backedge

bb.as:                                            ; preds = %bb.ap, %bb.ap, %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %.11378, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !22
  %i.hr = zext i8 %i.hq to i32
  %i.hs = shl nuw nsw i32 %i.hr, 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.11378, i64 2
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !22
  %i.hv = zext i8 %i.hu to i32
  %i.hw = or disjoint i32 %i.hs, %i.hv
  %i.hx = add i32 %i.hw, %spec.select
  %i.hy = getelementptr inbounds nuw i8, ptr %.11378, i64 5
  br label %.backedge

bb.at:                                            ; preds = %bb.ap
  %i.hz = add nsw i32 %spec.select, 1
  br label %.backedge

bb.au:                                            ; preds = %bb.c, %bb.c
  br i1 %.not, label %bb.av, label %.thread537

bb.av:                                            ; preds = %bb.au
  %i.ia = load i32, ptr %i.s, align 8, !tbaa !19
  %i.ib = and i32 %i.ia, 512
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.aw, label %.thread537

bb.aw:                                            ; preds = %bb.av
  %i.id = getelementptr inbounds nuw i8, ptr %spec.select494, i64 3
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !22
  %i.if = zext i8 %i.ie to i32
  %i.ig = shl nuw nsw i32 %i.if, 8
  %i.ih = getelementptr inbounds nuw i8, ptr %spec.select494, i64 4
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !22
  %i.ij = zext i8 %i.ii to i32
  %i.ik = or disjoint i32 %i.ig, %i.ij            ; 2 uses
  %.not619 = icmp eq i32 %i.ik, 0
  br i1 %.not619, label %.thread537, label %.lr.ph612.preheader

.lr.ph612.preheader:                              ; preds = %bb.aw
  %i.il = getelementptr inbounds nuw i8, ptr %spec.select494, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !22
  %i.in = zext i8 %i.im to i64
  %i.io = shl nuw nsw i64 %i.in, 8
  %i.ip = getelementptr inbounds nuw i8, ptr %spec.select494, i64 2
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !22
  %i.ir = zext i8 %i.iq to i64
  %i.is = or disjoint i64 %i.io, %i.ir
  %i.it = load i16, ptr %i.u, align 4, !tbaa !20
  %i.iu = zext i16 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.is, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.iv
  %.pre = load i32, ptr %6, align 4, !tbaa !12
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %.lr.ph612.preheader, %bb.bc
  %i.ix = phi i32 [ %i.kr, %bb.bc ], [ %.pre, %.lr.ph612.preheader ] ; 2 uses
  %.in = phi i32 [ %i.iy, %bb.bc ], [ %i.ik, %.lr.ph612.preheader ] ; 2 uses
  %.0349610 = phi ptr [ %i.kv, %bb.bc ], [ %i.iw, %.lr.ph612.preheader ] ; 3 uses
  %.0356609 = phi i32 [ %spec.select498, %bb.bc ], [ 2147483647, %.lr.ph612.preheader ]
  %.1383608 = phi i32 [ %.5387, %bb.bc ], [ %.0382, %.lr.ph612.preheader ] ; 2 uses
  %i.iy = add nsw i32 %.in, -1
  %i.iz = load i8, ptr %.0349610, align 1, !tbaa !22
  %i.ja = zext i8 %i.iz to i32
  %i.jb = shl nuw nsw i32 %i.ja, 8                ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0349610, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !22
  %i.je = zext i8 %i.jd to i32                    ; 2 uses
  %i.jf = or disjoint i32 %i.jb, %i.je            ; 7 uses
  %.not485 = icmp sgt i32 %i.jf, %i.ix
  br i1 %.not485, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph612
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !12 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, -1
  br i1 %i.jj, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph612
  %i.jk = call ptr @_pcre2_find_bracket_8(ptr noundef %2, i32 noundef %3, i32 noundef %i.jf) #6 ; 6 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %.thread563, label %.preheader576

.preheader576:                                    ; preds = %bb.ay, %.preheader576
  %.0352 = phi ptr [ %i.ju, %.preheader576 ], [ %i.jk, %bb.ay ] ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0352, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !22
  %i.jo = zext i8 %i.jn to i64
  %i.jp = shl nuw nsw i64 %i.jo, 8
  %i.jq = getelementptr inbounds nuw i8, ptr %.0352, i64 2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !22
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %.0352, i64 %i.jp
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.js ; 3 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !22
  %i.jw = icmp eq i8 %i.jv, 120
  br i1 %i.jw, label %.preheader576, label %bb.az, !llvm.loop !141

bb.az:                                            ; preds = %.preheader576
  %i.jx = icmp ugt ptr %spec.select494, %i.jk
  %i.jy = icmp ult ptr %spec.select494, %i.ju
  %or.cond497 = and i1 %i.jx, %i.jy
  br i1 %or.cond497, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.az
  br i1 %.not482590, label %._crit_edge602, label %.lr.ph601

.lr.ph601:                                        ; preds = %.preheader, %bb.ba
  %.0346600 = phi ptr [ %i.kc, %bb.ba ], [ %4, %.preheader ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0346600, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !149
  %i.kb = icmp eq ptr %i.ka, %i.jk
  br i1 %i.kb, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph601
  %i.kc = load ptr, ptr %.0346600, align 8, !tbaa !150 ; 2 uses
  %.not486 = icmp eq ptr %i.kc, null
  br i1 %.not486, label %._crit_edge602, label %.lr.ph601, !llvm.loop !142

._crit_edge602:                                   ; preds = %bb.ba, %.preheader
  store ptr %4, ptr %7, align 8, !tbaa !150
  store ptr %i.jk, ptr %i.r, align 8, !tbaa !149
  %i.kd = call fastcc i32 @find_minlength(ptr noundef %0, ptr noundef nonnull %i.jk, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %7, ptr noundef %5, ptr noundef %6) ; 3 uses
  %i.ke = icmp sgt i32 %i.kd, -1
  br i1 %i.ke, label %.thread, label %.thread563

.thread:                                          ; preds = %.lr.ph601, %bb.az, %._crit_edge602
  %.4386 = phi i32 [ %.1383608, %._crit_edge602 ], [ 1, %bb.az ], [ 1, %.lr.ph601 ]
  %.2 = phi i32 [ %i.kd, %._crit_edge602 ], [ 0, %bb.az ], [ 0, %.lr.ph601 ] ; 2 uses
  %i.kf = zext nneg i32 %i.jf to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.kf
  store i32 %.2, ptr %i.kg, align 4, !tbaa !12
  %i.kh = load i32, ptr %6, align 4, !tbaa !12    ; 3 uses
  %.0347603 = add nsw i32 %i.kh, 1
  %i.ki = icmp slt i32 %.0347603, %i.jf
  br i1 %i.ki, label %.lr.ph605.preheader, label %._crit_edge606

.lr.ph605.preheader:                              ; preds = %.thread
  %i.kj = sext i32 %i.kh to i64
  %i.kk = shl nsw i64 %i.kj, 2
  %scevgep631 = getelementptr i8, ptr %scevgep, i64 %i.kk
  %i.kl = add nsw i32 %i.jb, -2
  %i.km = add nsw i32 %i.kl, %i.je
  %i.kn = sub i32 %i.km, %i.kh
  %i.ko = zext i32 %i.kn to i64
  %i.kp = shl nuw nsw i64 %i.ko, 2
  %i.kq = add nuw nsw i64 %i.kp, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep631, i8 -1, i64 %i.kq, i1 false), !tbaa !12
  br label %._crit_edge606

._crit_edge606:                                   ; preds = %.lr.ph605.preheader, %.thread
  store i32 %i.jf, ptr %6, align 4, !tbaa !12
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ax, %._crit_edge606
  %i.kr = phi i32 [ %i.jf, %._crit_edge606 ], [ %i.ix, %bb.ax ]
  %.5387 = phi i32 [ %.4386, %._crit_edge606 ], [ %.1383608, %bb.ax ] ; 3 uses
  %.3 = phi i32 [ %.2, %._crit_edge606 ], [ %i.ji, %bb.ax ] ; 2 uses
  %spec.select498 = call i32 @llvm.smin.i32(i32 %.3, i32 %.0356609) ; 3 uses
  %i.ks = icmp eq i32 %.3, 0
  br i1 %i.ks, label %.thread537, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kt = load i16, ptr %i.u, align 4, !tbaa !20
  %i.ku = zext i16 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %.0349610, i64 %i.ku
  %i.kw = icmp sgt i32 %.in, 1
  br i1 %i.kw, label %.lr.ph612, label %.thread537
end_hunk_0

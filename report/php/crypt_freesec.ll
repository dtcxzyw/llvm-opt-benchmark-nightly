Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/crypt_freesec?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_crypt_extended_init:.preheader150
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.zb = load i32, ptr %i.yx, align 4, !tbaa !14
  %i.zc = or i32 %i.yr, %i.zb
  store i32 %i.zc, ptr %i.vz, align 4, !tbaa !14
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %bb.eb, %bb.ea
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next215, 128
  br i1 %exitcond217.not, label %bb.eg, label %bb.bn, !llvm.loop !23

bb.eg:                                            ; preds = %bb.ef
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next219, 8
  br i1 %exitcond221.not, label %.preheader140.preheader, label %.preheader142, !llvm.loop !24

.preheader140.preheader:                          ; preds = %bb.eg
  %i.zd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <16 x i8> <i8 8, i8 16, i8 22, i8 30, i8 12, i8 27, i8 1, i8 17, i8 23, i8 15, i8 29, i8 5, i8 25, i8 19, i8 9, i8 0>, ptr %i.f, align 16, !tbaa !12
  store <16 x i8> <i8 7, i8 13, i8 24, i8 2, i8 3, i8 28, i8 10, i8 18, i8 31, i8 11, i8 21, i8 6, i8 4, i8 26, i8 14, i8 20>, ptr %i.zd, align 16, !tbaa !12
  br label %.preheader

.preheader:                                       ; preds = %.preheader140.preheader, %bb.ey
  %indvars.iv234 = phi i64 [ 0, %.preheader140.preheader ], [ %indvars.iv.next235, %bb.ey ] ; 3 uses
  %i.ze = getelementptr inbounds nuw [1024 x i8], ptr @psbox, i64 %indvars.iv234
  %i.zf = shl nuw nsw i64 %indvars.iv234, 3       ; 8 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.zf
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 1
  %i.zj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.zf
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 2
  %i.zl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.zf
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 3
  %i.zn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.zf
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %i.zp = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.zf
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 5
  %i.zr = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.zf
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 6
  %i.zt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.zf
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 7
  br label %bb.eh

bb.eh:                                            ; preds = %.preheader, %bb.ex
  %indvars.iv230 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next231, %bb.ex ] ; 3 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv230 ; 9 uses
  store i32 0, ptr %i.zv, align 4, !tbaa !14
  %i.zw = trunc nuw nsw i64 %indvars.iv230 to i32 ; 8 uses
  %i.zx = and i32 %i.zw, 128
  %.not = icmp eq i32 %i.zx, 0
  br i1 %.not, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.zy = load i8, ptr %i.zg, align 8, !tbaa !12
  %i.zz = zext i8 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr @bits32, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !14 ; 2 uses
  store i32 %i.aab, ptr %i.zv, align 4, !tbaa !14
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %i.aac = phi i32 [ 0, %bb.eh ], [ %i.aab, %bb.ei ] ; 2 uses
  %i.aad = and i32 %i.zw, 64
  %.not.1 = icmp eq i32 %i.aad, 0
  br i1 %.not.1, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aae = load i8, ptr %i.zi, align 1, !tbaa !12
  %i.aaf = zext i8 %i.aae to i64
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr @bits32, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !14
  %i.aai = or i32 %i.aac, %i.aah                  ; 2 uses
  store i32 %i.aai, ptr %i.zv, align 4, !tbaa !14
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.aaj = phi i32 [ %i.aai, %bb.ek ], [ %i.aac, %bb.ej ] ; 2 uses
  %i.aak = and i32 %i.zw, 32
  %.not.2 = icmp eq i32 %i.aak, 0
  br i1 %.not.2, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aal = load i8, ptr %i.zk, align 2, !tbaa !12
  %i.aam = zext i8 %i.aal to i64
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr @bits32, i64 %i.aam
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !14
  %i.aap = or i32 %i.aaj, %i.aao                  ; 2 uses
  store i32 %i.aap, ptr %i.zv, align 4, !tbaa !14
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.aaq = phi i32 [ %i.aap, %bb.em ], [ %i.aaj, %bb.el ] ; 2 uses
  %i.aar = and i32 %i.zw, 16
  %.not.3 = icmp eq i32 %i.aar, 0
  br i1 %.not.3, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aas = load i8, ptr %i.zm, align 1, !tbaa !12
  %i.aat = zext i8 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr @bits32, i64 %i.aat
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !14
  %i.aaw = or i32 %i.aaq, %i.aav                  ; 2 uses
  store i32 %i.aaw, ptr %i.zv, align 4, !tbaa !14
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.aax = phi i32 [ %i.aaw, %bb.eo ], [ %i.aaq, %bb.en ] ; 2 uses
  %i.aay = and i32 %i.zw, 8
  %.not.4 = icmp eq i32 %i.aay, 0
  br i1 %.not.4, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aaz = load i8, ptr %i.zo, align 4, !tbaa !12
  %i.aba = zext i8 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr @bits32, i64 %i.aba
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !14
  %i.abd = or i32 %i.aax, %i.abc                  ; 2 uses
  store i32 %i.abd, ptr %i.zv, align 4, !tbaa !14
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.abe = phi i32 [ %i.abd, %bb.eq ], [ %i.aax, %bb.ep ] ; 2 uses
  %i.abf = and i32 %i.zw, 4
  %.not.5 = icmp eq i32 %i.abf, 0
  br i1 %.not.5, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.abg = load i8, ptr %i.zq, align 1, !tbaa !12
  %i.abh = zext i8 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr @bits32, i64 %i.abh
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !14
  %i.abk = or i32 %i.abe, %i.abj                  ; 2 uses
  store i32 %i.abk, ptr %i.zv, align 4, !tbaa !14
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.abl = phi i32 [ %i.abk, %bb.es ], [ %i.abe, %bb.er ] ; 2 uses
  %i.abm = and i32 %i.zw, 2
  %.not.6 = icmp eq i32 %i.abm, 0
  br i1 %.not.6, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.abn = load i8, ptr %i.zs, align 2, !tbaa !12
  %i.abo = zext i8 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr @bits32, i64 %i.abo
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !14
  %i.abr = or i32 %i.abl, %i.abq                  ; 2 uses
  store i32 %i.abr, ptr %i.zv, align 4, !tbaa !14
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.abs = phi i32 [ %i.abr, %bb.eu ], [ %i.abl, %bb.et ]
  %i.abt = and i32 %i.zw, 1
  %.not.7 = icmp eq i32 %i.abt, 0
  br i1 %.not.7, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.abu = load i8, ptr %i.zu, align 1, !tbaa !12
  %i.abv = zext i8 %i.abu to i64
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr @bits32, i64 %i.abv
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !14
  %i.aby = or i32 %i.abs, %i.abx
  store i32 %i.aby, ptr %i.zv, align 4, !tbaa !14
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next231, 256
  br i1 %exitcond233.not, label %bb.ey, label %bb.eh, !llvm.loop !25

bb.ey:                                            ; preds = %bb.ex
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next235, 4
  br i1 %exitcond237.not, label %bb.ez, label %.preheader, !llvm.loop !26

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_crypt_extended_r(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(ret: address, provenance) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [2 x i32], align 4                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.f = load i32, ptr %2, align 4, !tbaa !27
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 272
  store i32 0, ptr %i.g, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 268
  store i32 0, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.j, align 4, !tbaa !28
  store i32 1, ptr %2, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %i.l = shl i8 %i.k, 1                           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store i8 %i.l, ptr %i.e, align 4, !tbaa !12
  %.not106 = icmp ne i8 %i.k, 0
  %spec.select.idx = zext i1 %.not106 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 2 uses
  %i.n = load i8, ptr %spec.select, align 1, !tbaa !12 ; 2 uses
  %i.o = shl i8 %i.n, 1                           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  store i8 %i.o, ptr %i.m, align 1, !tbaa !12
  %.not106.1 = icmp ne i8 %i.n, 0
  %spec.select.idx.1 = zext i1 %.not106.1 to i64
  %spec.select.1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %spec.select.idx.1 ; 2 uses
  %i.q = load i8, ptr %spec.select.1, align 1, !tbaa !12 ; 2 uses
  %i.r = shl i8 %i.q, 1                           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  store i8 %i.r, ptr %i.p, align 2, !tbaa !12
  %.not106.2 = icmp ne i8 %i.q, 0
  %spec.select.idx.2 = zext i1 %.not106.2 to i64
  %spec.select.2 = getelementptr inbounds nuw i8, ptr %spec.select.1, i64 %spec.select.idx.2 ; 2 uses
  %i.t = load i8, ptr %spec.select.2, align 1, !tbaa !12 ; 2 uses
  %i.u = shl i8 %i.t, 1                           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i8 %i.u, ptr %i.s, align 1, !tbaa !12
  %.not106.3 = icmp ne i8 %i.t, 0
  %spec.select.idx.3 = zext i1 %.not106.3 to i64
  %spec.select.3 = getelementptr inbounds nuw i8, ptr %spec.select.2, i64 %spec.select.idx.3 ; 2 uses
  %i.w = load i8, ptr %spec.select.3, align 1, !tbaa !12 ; 2 uses
  %i.x = shl i8 %i.w, 1                           ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  store i8 %i.x, ptr %i.v, align 4, !tbaa !12
  %.not106.4 = icmp ne i8 %i.w, 0
  %spec.select.idx.4 = zext i1 %.not106.4 to i64
  %spec.select.4 = getelementptr inbounds nuw i8, ptr %spec.select.3, i64 %spec.select.idx.4 ; 2 uses
  %i.z = load i8, ptr %spec.select.4, align 1, !tbaa !12 ; 2 uses
  %i.aa = shl i8 %i.z, 1                          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !12
  %.not106.5 = icmp ne i8 %i.z, 0
  %spec.select.idx.5 = zext i1 %.not106.5 to i64
  %spec.select.5 = getelementptr inbounds nuw i8, ptr %spec.select.4, i64 %spec.select.idx.5 ; 2 uses
  %i.ac = load i8, ptr %spec.select.5, align 1, !tbaa !12 ; 2 uses
  %i.ad = shl i8 %i.ac, 1                         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 7 ; 2 uses
  store i8 %i.ad, ptr %i.ab, align 2, !tbaa !12
  %.not106.6 = icmp ne i8 %i.ac, 0
  %spec.select.idx.6 = zext i1 %.not106.6 to i64
  %spec.select.6 = getelementptr inbounds nuw i8, ptr %spec.select.5, i64 %spec.select.idx.6 ; 2 uses
  %i.af = load i8, ptr %spec.select.6, align 1, !tbaa !12 ; 2 uses
  %i.ag = shl i8 %i.af, 1                         ; 2 uses
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !12
  %.not106.7 = icmp ne i8 %i.af, 0
  %spec.select.idx.7 = zext i1 %.not106.7 to i64
  %spec.select.7 = getelementptr inbounds nuw i8, ptr %spec.select.6, i64 %spec.select.idx.7 ; 2 uses
  call fastcc void @des_setkey(ptr noundef %i.e, ptr noundef nonnull %2)
  %i.ah = load i8, ptr %1, align 1, !tbaa !12     ; 5 uses
  switch i8 %i.ah, label %bb.h [
    i8 95, label %.preheader122.preheader
    i8 10, label %ascii_is_unsafe.exit.thread
    i8 0, label %ascii_is_unsafe.exit.thread
    i8 58, label %ascii_is_unsafe.exit.thread
  ]

.preheader122.preheader:                          ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12  ; 4 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = icmp sgt i8 %i.aj, 64
  %i.am = icmp samesign ugt i8 %i.aj, 96
  %spec.select.v.i = select i1 %i.am, i32 5, i32 11
  %.0.v.i = select i1 %i.al, i32 %spec.select.v.i, i32 18
  %.0.i = add nuw nsw i32 %.0.v.i, %i.ak
  %i.an = and i32 %.0.i, 63                       ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  %i.ar = zext i8 %i.aq to i32
  %i.as = sext i8 %i.aj to i32
  %.not105 = icmp eq i32 %i.ar, %i.as
  br i1 %.not105, label %.preheader122.1, label %ascii_is_unsafe.exit.thread

.preheader122.1:                                  ; preds = %.preheader122.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12  ; 4 uses
  %i.av = zext i8 %i.au to i32
  %i.aw = icmp sgt i8 %i.au, 64
  %i.ax = icmp samesign ugt i8 %i.au, 96
  %spec.select.v.i.1 = select i1 %i.ax, i32 5, i32 11
  %.0.v.i.1 = select i1 %i.aw, i32 %spec.select.v.i.1, i32 18
  %.0.i.1 = add nuw nsw i32 %.0.v.i.1, %i.av
  %i.ay = and i32 %.0.i.1, 63                     ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !12
  %i.bc = zext i8 %i.bb to i32
  %i.bd = sext i8 %i.au to i32
  %.not105.1 = icmp eq i32 %i.bc, %i.bd
  br i1 %.not105.1, label %.preheader122.2, label %ascii_is_unsafe.exit.thread

.preheader122.2:                                  ; preds = %.preheader122.1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12  ; 4 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = icmp sgt i8 %i.bf, 64
  %i.bi = icmp samesign ugt i8 %i.bf, 96
  %spec.select.v.i.2 = select i1 %i.bi, i32 5, i32 11
  %.0.v.i.2 = select i1 %i.bh, i32 %spec.select.v.i.2, i32 18
  %.0.i.2 = add nuw nsw i32 %.0.v.i.2, %i.bg
  %i.bj = and i32 %.0.i.2, 63                     ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !12
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sext i8 %i.bf to i32
  %.not105.2 = icmp eq i32 %i.bn, %i.bo
  br i1 %.not105.2, label %.preheader122.3, label %ascii_is_unsafe.exit.thread

.preheader122.3:                                  ; preds = %.preheader122.2
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !12  ; 4 uses
  %i.br = zext i8 %i.bq to i32
  %i.bs = icmp sgt i8 %i.bq, 64
  %i.bt = icmp samesign ugt i8 %i.bq, 96
  %spec.select.v.i.3 = select i1 %i.bt, i32 5, i32 11
  %.0.v.i.3 = select i1 %i.bs, i32 %spec.select.v.i.3, i32 18
  %.0.i.3 = add nuw nsw i32 %.0.v.i.3, %i.br
  %i.bu = and i32 %.0.i.3, 63                     ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !12
  %i.by = zext i8 %i.bx to i32
  %i.bz = sext i8 %i.bq to i32
  %.not105.3 = icmp eq i32 %i.by, %i.bz
  br i1 %.not105.3, label %bb.d, label %ascii_is_unsafe.exit.thread

bb.d:                                             ; preds = %.preheader122.3
  %i.ca = shl nuw nsw i32 %i.bj, 12
  %i.cb = shl nuw nsw i32 %i.ay, 6
  %i.cc = or disjoint i32 %i.cb, %i.ca
  %i.cd = shl nuw nsw i32 %i.bu, 18
  %i.ce = or disjoint i32 %i.cc, %i.cd
  %i.cf = or disjoint i32 %i.ce, %i.an            ; 2 uses
  %.not101 = icmp eq i32 %i.cf, 0
  br i1 %.not101, label %ascii_is_unsafe.exit.thread, label %.preheader121.preheader

.preheader121.preheader:                          ; preds = %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !12  ; 4 uses
  %i.ci = zext i8 %i.ch to i32
  %i.cj = icmp sgt i8 %i.ch, 64
  %i.ck = icmp samesign ugt i8 %i.ch, 96
  %spec.select.v.i107 = select i1 %i.ck, i32 5, i32 11
  %.0.v.i108 = select i1 %i.cj, i32 %spec.select.v.i107, i32 18
  %.0.i109 = add nuw nsw i32 %.0.v.i108, %i.ci
  %i.cl = and i32 %.0.i109, 63                    ; 2 uses
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !12
  %i.cp = zext i8 %i.co to i32
  %i.cq = sext i8 %i.ch to i32
  %.not104 = icmp eq i32 %i.cp, %i.cq
  br i1 %.not104, label %.preheader121.1, label %ascii_is_unsafe.exit.thread

.lr.ph138:                                        ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.e

.preheader121.1:                                  ; preds = %.preheader121.preheader
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !12  ; 4 uses
  %i.db = zext i8 %i.da to i32
  %i.dc = icmp sgt i8 %i.da, 64
  %i.dd = icmp samesign ugt i8 %i.da, 96
  %spec.select.v.i107.1 = select i1 %i.dd, i32 5, i32 11
  %.0.v.i108.1 = select i1 %i.dc, i32 %spec.select.v.i107.1, i32 18
  %.0.i109.1 = add nuw nsw i32 %.0.v.i108.1, %i.db
  %i.de = and i32 %.0.i109.1, 63                  ; 2 uses
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !12
  %i.di = zext i8 %i.dh to i32
  %i.dj = sext i8 %i.da to i32
  %.not104.1 = icmp eq i32 %i.di, %i.dj
  br i1 %.not104.1, label %.preheader121.2, label %ascii_is_unsafe.exit.thread

.preheader121.2:                                  ; preds = %.preheader121.1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !12  ; 4 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = icmp sgt i8 %i.dl, 64
  %i.do = icmp samesign ugt i8 %i.dl, 96
  %spec.select.v.i107.2 = select i1 %i.do, i32 5, i32 11
  %.0.v.i108.2 = select i1 %i.dn, i32 %spec.select.v.i107.2, i32 18
  %.0.i109.2 = add nuw nsw i32 %.0.v.i108.2, %i.dm
  %i.dp = and i32 %.0.i109.2, 63                  ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !12
  %i.dt = zext i8 %i.ds to i32
  %i.du = sext i8 %i.dl to i32
  %.not104.2 = icmp eq i32 %i.dt, %i.du
  br i1 %.not104.2, label %.preheader121.3, label %ascii_is_unsafe.exit.thread

.preheader121.3:                                  ; preds = %.preheader121.2
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !12  ; 4 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = icmp sgt i8 %i.dw, 64
  %i.dz = icmp samesign ugt i8 %i.dw, 96
  %spec.select.v.i107.3 = select i1 %i.dz, i32 5, i32 11
  %.0.v.i108.3 = select i1 %i.dy, i32 %spec.select.v.i107.3, i32 18
  %.0.i109.3 = add nuw nsw i32 %.0.v.i108.3, %i.dx
  %i.ea = and i32 %.0.i109.3, 63                  ; 2 uses
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !12
  %i.ee = zext i8 %i.ed to i32
  %i.ef = sext i8 %i.dw to i32
  %.not104.3 = icmp eq i32 %i.ee, %i.ef
  br i1 %.not104.3, label %.preheader, label %ascii_is_unsafe.exit.thread

.preheader:                                       ; preds = %.preheader121.3
  %i.eg = shl nuw nsw i32 %i.dp, 12
  %i.eh = shl nuw nsw i32 %i.de, 6
  %i.ei = or disjoint i32 %i.eh, %i.eg
  %i.ej = shl nuw nsw i32 %i.ea, 18
  %i.ek = or disjoint i32 %i.ei, %i.ej
  %i.el = or disjoint i32 %i.ek, %i.cl
  %i.em = load i8, ptr %spec.select.7, align 1, !tbaa !12
  %.not102136 = icmp eq i8 %i.em, 0
  br i1 %.not102136, label %._crit_edge, label %.lr.ph138

bb.e:                                             ; preds = %.lr.ph138, %.critedge
  %3 = phi i8 [ %i.ag, %.lr.ph138 ], [ %31, %.critedge ]
  %4 = phi i8 [ %i.ad, %.lr.ph138 ], [ %32, %.critedge ]
  %5 = phi i8 [ %i.aa, %.lr.ph138 ], [ %33, %.critedge ]
  %6 = phi i8 [ %i.x, %.lr.ph138 ], [ %34, %.critedge ]
  %7 = phi i8 [ %i.u, %.lr.ph138 ], [ %35, %.critedge ]
  %8 = phi i8 [ %i.r, %.lr.ph138 ], [ %36, %.critedge ]
  %9 = phi i8 [ %i.o, %.lr.ph138 ], [ %37, %.critedge ]
  %10 = phi i8 [ %i.l, %.lr.ph138 ], [ %38, %.critedge ]
  %.296137 = phi ptr [ %spec.select.7, %.lr.ph138 ], [ %.397.lcssa.ph, %.critedge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.en = load i32, ptr %i.cr, align 4, !tbaa !28
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.cr, align 4, !tbaa !28
  store i32 0, ptr %i.cs, align 4, !tbaa !18
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %bb.e
  %11 = zext i8 %7 to i32
  %12 = zext i8 %8 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %13, %11
  %15 = zext i8 %9 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or disjoint i32 %14, %16
  %18 = zext i8 %10 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %17, %19
  %21 = zext i8 %3 to i32
  %22 = zext i8 %4 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or disjoint i32 %23, %21
  %25 = zext i8 %5 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or disjoint i32 %24, %26
  %28 = zext i8 %6 to i32
  %29 = shl nuw i32 %28, 24
  %30 = or disjoint i32 %27, %29
  call fastcc void @do_des(i32 noundef %20, i32 noundef %30, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull %2)
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !14  ; 4 uses
  %i.eq = lshr i32 %i.ep, 24
  %i.er = trunc nuw i32 %i.eq to i8               ; 3 uses
  store i8 %i.er, ptr %i.e, align 4, !tbaa !12
  %i.es = lshr i32 %i.ep, 16
  %i.et = trunc i32 %i.es to i8                   ; 4 uses
  store i8 %i.et, ptr %i.m, align 1, !tbaa !12
  %i.eu = lshr i32 %i.ep, 8
  %i.ev = trunc i32 %i.eu to i8                   ; 5 uses
  store i8 %i.ev, ptr %i.cu, align 2, !tbaa !12
  %i.ew = trunc i32 %i.ep to i8                   ; 6 uses
  store i8 %i.ew, ptr %i.ct, align 1, !tbaa !12
  %i.ex = load i32, ptr %i.b, align 4, !tbaa !14  ; 4 uses
  %i.ey = lshr i32 %i.ex, 24
  %i.ez = trunc nuw i32 %i.ey to i8               ; 7 uses
  store i8 %i.ez, ptr %i.cy, align 4, !tbaa !12
  %i.fa = lshr i32 %i.ex, 16
  %i.fb = trunc i32 %i.fa to i8                   ; 8 uses
  store i8 %i.fb, ptr %i.cx, align 1, !tbaa !12
  %i.fc = lshr i32 %i.ex, 8
  %i.fd = trunc i32 %i.fc to i8                   ; 9 uses
  store i8 %i.fd, ptr %i.cw, align 2, !tbaa !12
  %i.fe = trunc i32 %i.ex to i8                   ; 10 uses
  store i8 %i.fe, ptr %i.cv, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ff = load i8, ptr %.296137, align 1, !tbaa !12 ; 2 uses
  %.not103 = icmp eq i8 %i.ff, 0
  br i1 %.not103, label %.critedge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.fg = getelementptr inbounds nuw i8, ptr %.296137, i64 1 ; 2 uses
  %i.fh = shl i8 %i.ff, 1
  %i.fi = xor i8 %i.fh, %i.er                     ; 9 uses
  store i8 %i.fi, ptr %i.e, align 4, !tbaa !12
  %i.fj = load i8, ptr %i.fg, align 1, !tbaa !12  ; 2 uses
  %.not103.1 = icmp eq i8 %i.fj, 0
  br i1 %.not103.1, label %.critedge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.fk = getelementptr inbounds nuw i8, ptr %.296137, i64 2 ; 2 uses
  %i.fl = shl i8 %i.fj, 1
  %i.fm = xor i8 %i.fl, %i.et                     ; 8 uses
  store i8 %i.fm, ptr %i.m, align 1, !tbaa !12
  %i.fn = load i8, ptr %i.fk, align 1, !tbaa !12  ; 2 uses
  %.not103.2 = icmp eq i8 %i.fn, 0
  br i1 %.not103.2, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.fo = getelementptr inbounds nuw i8, ptr %.296137, i64 3 ; 2 uses
  %i.fp = shl i8 %i.fn, 1
  %i.fq = xor i8 %i.fp, %i.ev                     ; 7 uses
  store i8 %i.fq, ptr %i.p, align 2, !tbaa !12
  %i.fr = load i8, ptr %i.fo, align 1, !tbaa !12  ; 2 uses
  %.not103.3 = icmp eq i8 %i.fr, 0
  br i1 %.not103.3, label %.critedge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.fs = getelementptr inbounds nuw i8, ptr %.296137, i64 4 ; 2 uses
  %i.ft = shl i8 %i.fr, 1
  %i.fu = xor i8 %i.ft, %i.ew                     ; 6 uses
  store i8 %i.fu, ptr %i.s, align 1, !tbaa !12
  %i.fv = load i8, ptr %i.fs, align 1, !tbaa !12  ; 2 uses
  %.not103.4 = icmp eq i8 %i.fv, 0
  br i1 %.not103.4, label %.critedge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.fw = getelementptr inbounds nuw i8, ptr %.296137, i64 5 ; 2 uses
  %i.fx = shl i8 %i.fv, 1
  %i.fy = xor i8 %i.fx, %i.ez                     ; 5 uses
  store i8 %i.fy, ptr %i.v, align 4, !tbaa !12
  %i.fz = load i8, ptr %i.fw, align 1, !tbaa !12  ; 2 uses
  %.not103.5 = icmp eq i8 %i.fz, 0
  br i1 %.not103.5, label %.critedge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.ga = getelementptr inbounds nuw i8, ptr %.296137, i64 6 ; 2 uses
  %i.gb = shl i8 %i.fz, 1
  %i.gc = xor i8 %i.gb, %i.fb                     ; 4 uses
  store i8 %i.gc, ptr %i.y, align 1, !tbaa !12
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !12  ; 2 uses
  %.not103.6 = icmp eq i8 %i.gd, 0
  br i1 %.not103.6, label %.critedge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.ge = getelementptr inbounds nuw i8, ptr %.296137, i64 7 ; 2 uses
  %i.gf = shl i8 %i.gd, 1
  %i.gg = xor i8 %i.gf, %i.fd                     ; 3 uses
  store i8 %i.gg, ptr %i.ab, align 2, !tbaa !12
  %i.gh = load i8, ptr %i.ge, align 1, !tbaa !12  ; 2 uses
  %.not103.7 = icmp eq i8 %i.gh, 0
  br i1 %.not103.7, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.7
  %i.gi = getelementptr inbounds nuw i8, ptr %.296137, i64 8
  %i.gj = shl i8 %i.gh, 1
  %i.gk = xor i8 %i.gj, %i.fe                     ; 2 uses
  store i8 %i.gk, ptr %i.ae, align 1, !tbaa !12
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.g
  %31 = phi i8 [ %i.fe, %.lr.ph.preheader ], [ %i.gk, %bb.g ], [ %i.fe, %.lr.ph.1 ], [ %i.fe, %.lr.ph.7 ], [ %i.fe, %.lr.ph.2 ], [ %i.fe, %.lr.ph.5 ], [ %i.fe, %.lr.ph.3 ], [ %i.fe, %.lr.ph.6 ], [ %i.fe, %.lr.ph.4 ]
  %32 = phi i8 [ %i.fd, %.lr.ph.preheader ], [ %i.gg, %bb.g ], [ %i.fd, %.lr.ph.1 ], [ %i.gg, %.lr.ph.7 ], [ %i.fd, %.lr.ph.2 ], [ %i.fd, %.lr.ph.5 ], [ %i.fd, %.lr.ph.3 ], [ %i.fd, %.lr.ph.6 ], [ %i.fd, %.lr.ph.4 ]
  %33 = phi i8 [ %i.fb, %.lr.ph.preheader ], [ %i.gc, %bb.g ], [ %i.fb, %.lr.ph.1 ], [ %i.gc, %.lr.ph.7 ], [ %i.fb, %.lr.ph.2 ], [ %i.fb, %.lr.ph.5 ], [ %i.fb, %.lr.ph.3 ], [ %i.gc, %.lr.ph.6 ], [ %i.fb, %.lr.ph.4 ]
  %34 = phi i8 [ %i.ez, %.lr.ph.preheader ], [ %i.fy, %bb.g ], [ %i.ez, %.lr.ph.1 ], [ %i.fy, %.lr.ph.7 ], [ %i.ez, %.lr.ph.2 ], [ %i.fy, %.lr.ph.5 ], [ %i.ez, %.lr.ph.3 ], [ %i.fy, %.lr.ph.6 ], [ %i.ez, %.lr.ph.4 ]
  %35 = phi i8 [ %i.ew, %.lr.ph.preheader ], [ %i.fu, %bb.g ], [ %i.ew, %.lr.ph.1 ], [ %i.fu, %.lr.ph.7 ], [ %i.ew, %.lr.ph.2 ], [ %i.fu, %.lr.ph.5 ], [ %i.ew, %.lr.ph.3 ], [ %i.fu, %.lr.ph.6 ], [ %i.fu, %.lr.ph.4 ]
  %36 = phi i8 [ %i.ev, %.lr.ph.preheader ], [ %i.fq, %bb.g ], [ %i.ev, %.lr.ph.1 ], [ %i.fq, %.lr.ph.7 ], [ %i.ev, %.lr.ph.2 ], [ %i.fq, %.lr.ph.5 ], [ %i.fq, %.lr.ph.3 ], [ %i.fq, %.lr.ph.6 ], [ %i.fq, %.lr.ph.4 ]
  %37 = phi i8 [ %i.et, %.lr.ph.preheader ], [ %i.fm, %bb.g ], [ %i.et, %.lr.ph.1 ], [ %i.fm, %.lr.ph.7 ], [ %i.fm, %.lr.ph.2 ], [ %i.fm, %.lr.ph.5 ], [ %i.fm, %.lr.ph.3 ], [ %i.fm, %.lr.ph.6 ], [ %i.fm, %.lr.ph.4 ]
  %38 = phi i8 [ %i.er, %.lr.ph.preheader ], [ %i.fi, %bb.g ], [ %i.fi, %.lr.ph.1 ], [ %i.fi, %.lr.ph.7 ], [ %i.fi, %.lr.ph.2 ], [ %i.fi, %.lr.ph.5 ], [ %i.fi, %.lr.ph.3 ], [ %i.fi, %.lr.ph.6 ], [ %i.fi, %.lr.ph.4 ]
  %.397.lcssa.ph = phi ptr [ %.296137, %.lr.ph.preheader ], [ %i.gi, %bb.g ], [ %i.fg, %.lr.ph.1 ], [ %i.ge, %.lr.ph.7 ], [ %i.fk, %.lr.ph.2 ], [ %i.fw, %.lr.ph.5 ], [ %i.fo, %.lr.ph.3 ], [ %i.ga, %.lr.ph.6 ], [ %i.fs, %.lr.ph.4 ] ; 2 uses
  call fastcc void @des_setkey(ptr noundef %i.e, ptr noundef nonnull %2)
  %i.gl = load i8, ptr %.397.lcssa.ph, align 1, !tbaa !12
  %.not102 = icmp eq i8 %i.gl, 0
  br i1 %.not102, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %.critedge, %.preheader
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.gm, ptr noundef nonnull align 1 dereferenceable(9) %1, i64 9, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 285 ; 2 uses
  store i8 0, ptr %i.gn, align 1, !tbaa !12
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !12  ; 4 uses
  switch i8 %i.gp, label %bb.i [
    i8 10, label %ascii_is_unsafe.exit.thread
    i8 0, label %ascii_is_unsafe.exit.thread
    i8 58, label %ascii_is_unsafe.exit.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.gq = zext i8 %i.gp to i32
  %i.gr = icmp sgt i8 %i.gp, 64
  %i.gs = icmp samesign ugt i8 %i.gp, 96
  %spec.select.v.i111 = select i1 %i.gs, i32 5, i32 11
  %.0.v.i112 = select i1 %i.gr, i32 %spec.select.v.i111, i32 18
  %.0.i113 = add nuw nsw i32 %.0.v.i112, %i.gq
  %i.gt = shl nuw nsw i32 %.0.i113, 6
  %i.gu = and i32 %i.gt, 4032
  %i.gv = zext i8 %i.ah to i32
  %i.gw = icmp sgt i8 %i.ah, 64
  %i.gx = icmp samesign ugt i8 %i.ah, 96
  %spec.select.v.i114 = select i1 %i.gx, i32 5, i32 11
  %.0.v.i115 = select i1 %i.gw, i32 %spec.select.v.i114, i32 18
  %.0.i116 = add nuw nsw i32 %.0.v.i115, %i.gv
  %i.gy = and i32 %.0.i116, 63
  %i.gz = or disjoint i32 %i.gu, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 276
  store i8 %i.ah, ptr %i.ha, align 4, !tbaa !12
  %i.hb = load i8, ptr %i.go, align 1, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 277
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !12
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 278
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.288 = phi i32 [ %i.cf, %._crit_edge ], [ 25, %bb.i ]
  %.2 = phi i32 [ %i.el, %._crit_edge ], [ %i.gz, %bb.i ] ; 3 uses
  %.083 = phi ptr [ %i.gn, %._crit_edge ], [ %i.hd, %bb.i ] ; 12 uses
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !28
  %i.hg = icmp eq i32 %.2, %i.hf
  br i1 %i.hg, label %setup_salt.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.2, ptr %i.he, align 4, !tbaa !28
  %trunc.i = trunc nuw i32 %.2 to i24
  %rev.i = tail call i24 @llvm.bitreverse.i24(i24 %trunc.i)
  %spec.select.23.i = zext i24 %rev.i to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %spec.select.23.i, ptr %i.hh, align 4, !tbaa !18
  br label %setup_salt.exit

setup_salt.exit:                                  ; preds = %bb.j, %bb.k
  call fastcc void @do_des(i32 noundef 0, i32 noundef 0, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %.288, ptr noundef nonnull %2)
  %i.hi = load i32, ptr %i.c, align 4, !tbaa !14  ; 5 uses
  %i.hj = lshr i32 %i.hi, 8
  %i.hk = lshr i32 %i.hi, 26
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %.083, i64 1
  store i8 %i.hn, ptr %.083, align 1, !tbaa !12
  %i.hp = lshr i32 %i.hi, 20
  %i.hq = and i32 %i.hp, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %.083, i64 2
  store i8 %i.ht, ptr %i.ho, align 1, !tbaa !12
  %i.hv = lshr i32 %i.hi, 14
  %i.hw = and i32 %i.hv, 63
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %.083, i64 3
  store i8 %i.hz, ptr %i.hu, align 1, !tbaa !12
  %i.ib = and i32 %i.hj, 63
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !12
  %i.if = getelementptr inbounds nuw i8, ptr %.083, i64 4
  store i8 %i.ie, ptr %i.ia, align 1, !tbaa !12
  %i.ig = load i32, ptr %i.d, align 4, !tbaa !14  ; 2 uses
  %i.ih = tail call i32 @llvm.fshl.i32(i32 %i.hi, i32 %i.ig, i32 16) ; 4 uses
  %i.ii = lshr i32 %i.ih, 18
  %i.ij = and i32 %i.ii, 63
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %.083, i64 5
  store i8 %i.im, ptr %i.if, align 1, !tbaa !12
  %i.io = lshr i32 %i.ih, 12
  %i.ip = and i32 %i.io, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !12
  %i.it = getelementptr inbounds nuw i8, ptr %.083, i64 6
  store i8 %i.is, ptr %i.in, align 1, !tbaa !12
  %i.iu = lshr i32 %i.ih, 6
  %i.iv = and i32 %i.iu, 63
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %.083, i64 7
  store i8 %i.iy, ptr %i.it, align 1, !tbaa !12
  %i.ja = and i32 %i.ih, 63
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !12
  %i.je = getelementptr inbounds nuw i8, ptr %.083, i64 8
  store i8 %i.jd, ptr %i.iz, align 1, !tbaa !12
  %i.jf = shl i32 %i.ig, 2                        ; 3 uses
  %i.jg = lshr i32 %i.jf, 12
  %i.jh = and i32 %i.jg, 63
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !12
  %i.jl = getelementptr inbounds nuw i8, ptr %.083, i64 9
  store i8 %i.jk, ptr %i.je, align 1, !tbaa !12
  %i.jm = lshr i32 %i.jf, 6
  %i.jn = and i32 %i.jm, 63
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %.083, i64 10
  store i8 %i.jq, ptr %i.jl, align 1, !tbaa !12
  %i.js = and i32 %i.jf, 60
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr @ascii64, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 4, !tbaa !12
  %i.jw = getelementptr inbounds nuw i8, ptr %.083, i64 11
  store i8 %i.jv, ptr %i.jr, align 1, !tbaa !12
  store i8 0, ptr %i.jw, align 1, !tbaa !12
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 276
  br label %ascii_is_unsafe.exit.thread

ascii_is_unsafe.exit.thread:                      ; preds = %.preheader122.preheader, %.preheader122.1, %.preheader122.2, %.preheader122.3, %.preheader121.preheader, %.preheader121.1, %.preheader121.2, %.preheader121.3, %bb.h, %bb.h, %bb.h, %bb.c, %bb.c, %bb.c, %bb.d, %setup_salt.exit
  %.4 = phi ptr [ null, %bb.d ], [ null, %.preheader121.preheader ], [ null, %bb.h ], [ %i.jx, %setup_salt.exit ], [ null, %bb.h ], [ null, %bb.c ], [ null, %bb.c ], [ null, %bb.c ], [ null, %bb.h ], [ null, %.preheader121.3 ], [ null, %.preheader121.2 ], [ null, %.preheader121.1 ], [ null, %.preheader122.3 ], [ null, %.preheader122.2 ], [ null, %.preheader122.1 ], [ null, %.preheader122.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret ptr %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @des_setkey(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = load i8, ptr %0, align 1, !tbaa !12
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = shl nuw i32 %i.m, 24
  %i.o = or disjoint i32 %i.g, %i.k
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = or disjoint i32 %i.p, %i.c               ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.v = load i8, ptr %i.u, align 1, !tbaa !12
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = shl nuw i32 %i.ae, 24
  %i.ag = or disjoint i32 %i.x, %i.ab
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = or disjoint i32 %i.ah, %i.t             ; 3 uses
  %i.aj = or i32 %i.ai, %i.q
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@do_des:bb.a
  %i.au = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ip_maskr, i64 1024), i64 %i.h
  %i.av = load i32, ptr %i.au, align 4, !tbaa !14
  %i.aw = or i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ip_maskr, i64 2048), i64 %i.n
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
  %i.az = or i32 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ip_maskr, i64 3072), i64 %i.s
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !14
  %i.bc = or i32 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ip_maskr, i64 4096), i64 %i.x
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.bf = or i32 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ip_maskr, i64 5120), i64 %i.ad
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.bi = or i32 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ip_maskr, i64 6144), i64 %i.aj
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = or i32 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ip_maskr, i64 7168), i64 %i.ao
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14
  %i.bo = or i32 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !18
  %spec.select = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  br label %.preheader

select.unfold.loopexit:                           ; preds = %bb.b
  %i.br = add nsw i32 %.in, -1                    ; 2 uses
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.c, label %.preheader, !llvm.loop !30

.preheader:                                       ; preds = %bb.a, %select.unfold.loopexit
  %.in = phi i32 [ %spec.select, %bb.a ], [ %i.br, %select.unfold.loopexit ]
  %.08095 = phi i32 [ %i.bo, %bb.a ], [ %.18190, %select.unfold.loopexit ]
  %.08294 = phi i32 [ %i.ar, %bb.a ], [ %i.ej, %select.unfold.loopexit ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.093 = phi i32 [ 16, %.preheader ], [ %i.bs, %bb.b ]
  %.07892 = phi ptr [ %.076, %.preheader ], [ %i.da, %bb.b ] ; 2 uses
  %.07991 = phi ptr [ %.077, %.preheader ], [ %i.cw, %bb.b ] ; 2 uses
  %.18190 = phi i32 [ %.08095, %.preheader ], [ %i.ej, %bb.b ] ; 16 uses
  %.18389 = phi i32 [ %.08294, %.preheader ], [ %.18190, %bb.b ]
  %i.bs = add nsw i32 %.093, -1                   ; 2 uses
  %i.bt = shl i32 %.18190, 23
  %i.bu = and i32 %i.bt, 8388608
  %i.bv = lshr i32 %.18190, 9
  %i.bw = and i32 %i.bv, 8126464
  %i.bx = or disjoint i32 %i.bu, %i.bw
  %i.by = lshr i32 %.18190, 11
  %i.bz = and i32 %i.by, 258048
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = lshr i32 %.18190, 13
  %i.cc = and i32 %i.cb, 4032
  %i.cd = or disjoint i32 %i.ca, %i.cc
  %i.ce = lshr i32 %.18190, 15
  %i.cf = and i32 %i.ce, 63
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 2 uses
  %i.ch = shl i32 %.18190, 7
  %i.ci = and i32 %i.ch, 16515072
  %i.cj = shl i32 %.18190, 5
  %i.ck = and i32 %i.cj, 258048
  %i.cl = shl i32 %.18190, 3
  %i.cm = and i32 %i.cl, 4032
  %i.cn = shl i32 %.18190, 1
  %i.co = and i32 %i.cn, 62
  %i.cp = lshr i32 %.18190, 31
  %i.cq = or disjoint i32 %i.ck, %i.cp
  %i.cr = or disjoint i32 %i.cq, %i.ci
  %i.cs = or disjoint i32 %i.cr, %i.cm
  %i.ct = or disjoint i32 %i.cs, %i.co            ; 2 uses
  %i.cu = xor i32 %i.cg, %i.ct
  %i.cv = and i32 %i.cu, %i.bq                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.07991, i64 4
  %i.cx = load i32, ptr %.07991, align 4, !tbaa !14
  %i.cy = xor i32 %i.cg, %i.cx
  %i.cz = xor i32 %i.cy, %i.cv                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.07892, i64 4
  %i.db = load i32, ptr %.07892, align 4, !tbaa !14
  %i.dc = xor i32 %i.ct, %i.db
  %i.dd = xor i32 %i.dc, %i.cv                    ; 2 uses
  %i.de = lshr i32 %i.cz, 12
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @m_sbox, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !12
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @psbox, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !14
  %i.dl = and i32 %i.cz, 4095
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @m_sbox, i64 4096), i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !12
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @psbox, i64 1024), i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !14
  %i.ds = or i32 %i.dr, %i.dk
  %i.dt = lshr i32 %i.dd, 12
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @m_sbox, i64 8192), i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !12
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @psbox, i64 2048), i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !14
  %i.ea = or i32 %i.ds, %i.dz
  %i.eb = and i32 %i.dd, 4095
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @m_sbox, i64 12288), i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !12
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @psbox, i64 3072), i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !14
  %i.ei = or i32 %i.ea, %i.eh
  %i.ej = xor i32 %i.ei, %.18389                  ; 6 uses
  %.not88 = icmp eq i32 %i.bs, 0
  br i1 %.not88, label %select.unfold.loopexit, label %bb.b, !llvm.loop !31

bb.c:                                             ; preds = %select.unfold.loopexit
  %i.ek = lshr i32 %i.ej, 24
  %i.el = zext nneg i32 %i.ek to i64              ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @fp_maskl, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !14
  %i.eo = lshr i32 %i.ej, 16
  %i.ep = and i32 %i.eo, 255
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskl, i64 1024), i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !14
  %i.et = or i32 %i.es, %i.en
  %i.eu = lshr i32 %i.ej, 8
  %i.ev = and i32 %i.eu, 255
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskl, i64 2048), i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %i.ez = or i32 %i.et, %i.ey
  %i.fa = and i32 %i.ej, 255
  %i.fb = zext nneg i32 %i.fa to i64              ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskl, i64 3072), i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !14
  %i.fe = or i32 %i.ez, %i.fd
  %i.ff = lshr i32 %.18190, 24
  %i.fg = zext nneg i32 %i.ff to i64              ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskl, i64 4096), i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !14
  %i.fj = or i32 %i.fe, %i.fi
  %i.fk = lshr i32 %.18190, 16
  %i.fl = and i32 %i.fk, 255
  %i.fm = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskl, i64 5120), i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !14
  %i.fp = or i32 %i.fj, %i.fo
  %i.fq = lshr i32 %.18190, 8
  %i.fr = and i32 %i.fq, 255
  %i.fs = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskl, i64 6144), i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !14
  %i.fv = or i32 %i.fp, %i.fu
  %i.fw = and i32 %.18190, 255
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskl, i64 7168), i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !14
  %i.ga = or i32 %i.fv, %i.fz
  store i32 %i.ga, ptr %2, align 4, !tbaa !14
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @fp_maskr, i64 %i.el
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !14
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskr, i64 1024), i64 %i.eq
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !14
  %i.gf = or i32 %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskr, i64 2048), i64 %i.ew
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !14
  %i.gi = or i32 %i.gf, %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskr, i64 3072), i64 %i.fb
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !14
  %i.gl = or i32 %i.gi, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskr, i64 4096), i64 %i.fg
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !14
  %i.go = or i32 %i.gl, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskr, i64 5120), i64 %i.fm
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !14
  %i.gr = or i32 %i.go, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskr, i64 6144), i64 %i.fs
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !14
  %i.gu = or i32 %i.gr, %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @fp_maskr, i64 7168), i64 %i.fx
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !14
  %i.gx = or i32 %i.gu, %i.gw
  store i32 %i.gx, ptr %3, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i24 @llvm.bitreverse.i24(i24) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!9, !9, i64 0}
!15 = !{!"php_crypt_extended_data", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !8, i64 76, !8, i64 140, !8, i64 204, !9, i64 268, !9, i64 272, !8, i64 276}
!16 = !{!15, !9, i64 272}
!17 = !{!15, !9, i64 268}
!18 = !{!15, !9, i64 4}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = !{!15, !9, i64 0}
!28 = !{!15, !9, i64 8}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
end_hunk_1

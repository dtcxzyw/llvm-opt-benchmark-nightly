inline.NumInlined: 3630
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN11OpenImageIO4v3_18IffInput16read_native_tileEiiiiiPv:bb.a

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread: ; preds = %bb.o, %bb.n, %bb.a, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit34, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit, %bb.m
  %.1 = phi i1 [ false, %bb.m ], [ false, %bb.a ], [ false, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit34 ], [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit ], [ true, %bb.n ], [ true, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.j = icmp eq i32 %2, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18IffInput7readimgEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i16, align 2                      ; 12 uses
  %i.d = alloca i16, align 2                      ; 16 uses
  %i.e = alloca i16, align 2                      ; 12 uses
  %i.f = alloca i16, align 2                      ; 15 uses
  %1 = alloca %"class.std::vector.15", align 8    ; 14 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i16, align 2                      ; 7 uses
  %i.i = alloca i16, align 2                      ; 8 uses
  %i.j = alloca i16, align 2                      ; 7 uses
  %i.k = alloca i16, align 2                      ; 7 uses
  %2 = alloca %"class.std::vector.15", align 8    ; 14 uses
  %i.l = alloca [6 x i8], align 1                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %3 = alloca %"class.std::vector.15", align 8    ; 8 uses
  %4 = alloca %"class.std::allocator.17", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator.17", align 1 ; 4 uses
  %i.n = alloca i32, align 4                      ; 8 uses
  %i.o = alloca i16, align 2                      ; 7 uses
  %i.p = alloca i16, align 2                      ; 8 uses
  %i.q = alloca i16, align 2                      ; 9 uses
  %i.r = alloca i16, align 2                      ; 9 uses
  %i.s = alloca i16, align 2                      ; 10 uses
  %i.t = alloca i16, align 2                      ; 12 uses
  %i.u = alloca i16, align 2                      ; 10 uses
  %i.v = alloca i16, align 2                      ; 11 uses
  %6 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %i.w = alloca i16, align 2                      ; 8 uses
  %i.x = alloca i16, align 2                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = load i32, ptr %i.y, align 8, !tbaa !99
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aa, i32 noundef 0) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 17 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.af = lshr i8 %i.ae, 3
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 22 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 15 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 16 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = lshr i8 %i.ao, 3
  %narrow.i.i.i = select i1 %.not.i.i.i, i8 0, i8 %i.ap
  %i.aq = zext nneg i8 %narrow.i.i.i to i64
  %i.ar = add nuw nsw i64 %i.ak, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 7 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !30
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !31
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw i64 %i.ax, %i.au
  %i.az = mul i64 %i.ay, %i.ar
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.ex, %bb.a
  %.0251.ph = phi i16 [ %.1252, %bb.ex ], [ 0, %bb.a ] ; 6 uses
  %.0246.ph = phi i16 [ %.0246.ph1442, %bb.ex ], [ 0, %bb.a ]
  br label %.outer1441

.outer1441:                                       ; preds = %.outer, %bb.dh
  %.0246.ph1442 = phi i16 [ %.0246.ph, %.outer ], [ %i.ws, %bb.dh ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer1441, %bb.ez
  %i.bm = load i16, ptr %i.ba, align 2, !tbaa !102 ; 2 uses
  %i.bn = icmp ult i16 %.0246.ph1442, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i8, ptr %i.ah, align 1, !tbaa !74
  %.not = icmp eq i8 %i.bo, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bp = icmp uge i16 %.0251.ph, %i.bm
  %.pre1140 = load i8, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not406 = icmp eq i8 %.pre1140, 0
  %or.cond1297 = select i1 %i.bp, i1 true, i1 %.not406
  br i1 %or.cond1297, label %.critedge40, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.bq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4)
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.br = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1)
  br i1 %i.br, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.39)
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit708

bb.g:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !3
  %i.bt = call noundef i32 @llvm.bswap.i32(i32 %i.bs) ; 3 uses
  store i32 %i.bt, ptr %i.b, align 4, !tbaa !3
  %i.bu = and i32 %i.bt, 3                        ; 2 uses
  %.not.i = icmp eq i32 %i.bu, 0
  %i.bv = sub nuw nsw i32 4, %i.bu
  %i.bw = select i1 %.not.i, i32 0, i32 %i.bv
  %.0.i = add i32 %i.bw, %i.bt                    ; 3 uses
  %i.bx = load i32, ptr %i.a, align 1
  %i.by = icmp ne i32 %i.bx, 1094862674
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.h, label %bb.dj

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.cb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.c, i64 noundef 2, i64 noundef 1)
  br i1 %i.cb, label %.lr.ph.i.i.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %.promoted948 = load i16, ptr %i.c, align 2, !tbaa !24
  %i.cc = call i16 @llvm.bswap.i16(i16 %.promoted948)
  store i16 %i.cc, ptr %i.c, align 2, !tbaa !24
  %i.cd = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.e, i64 noundef 2, i64 noundef 1)
  br i1 %i.cd, label %.lr.ph.i.i515.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i515.preheader:                          ; preds = %.lr.ph.i.i.preheader
  %.promoted950 = load i16, ptr %i.e, align 2, !tbaa !24
  %i.ce = call i16 @llvm.bswap.i16(i16 %.promoted950)
  store i16 %i.ce, ptr %i.e, align 2, !tbaa !24
  %i.cf = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1)
  br i1 %i.cf, label %.lr.ph.i.i521.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i521.preheader:                          ; preds = %.lr.ph.i.i515.preheader
  %.promoted952 = load i16, ptr %i.d, align 2, !tbaa !24
  %i.cg = call i16 @llvm.bswap.i16(i16 %.promoted952)
  store i16 %i.cg, ptr %i.d, align 2, !tbaa !24
  %i.ch = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.f, i64 noundef 2, i64 noundef 1)
  br i1 %i.ch, label %.lr.ph.i.i527.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i527.preheader:                          ; preds = %.lr.ph.i.i521.preheader
  %.promoted954 = load i16, ptr %i.f, align 2, !tbaa !24
  %i.ci = call i16 @llvm.bswap.i16(i16 %.promoted954) ; 3 uses
  store i16 %i.ci, ptr %i.f, align 2, !tbaa !24
  %i.cj = load i16, ptr %i.d, align 2, !tbaa !24  ; 2 uses
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = load i16, ptr %i.c, align 2, !tbaa !24  ; 2 uses
  %i.cm = zext i16 %i.cl to i32
  %i.cn = sub nsw i32 %i.ck, %i.cm
  %i.co = add nsw i32 %i.cn, 1                    ; 8 uses
  %i.cp = zext i16 %i.ci to i32                   ; 2 uses
  %i.cq = load i16, ptr %i.e, align 2, !tbaa !24  ; 2 uses
  %i.cr = zext i16 %i.cq to i32
  %i.cs = sub nsw i32 %i.cp, %i.cr
  %i.ct = add nsw i32 %i.cs, 1                    ; 2 uses
  %i.cu = add i32 %.0.i, -8                       ; 2 uses
  %i.cv = icmp ugt i16 %i.cl, %i.cj
  %i.cw = icmp ugt i16 %i.cq, %i.ci
  %or.cond480 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond480, label %bb.k, label %bb.i

_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit: ; preds = %.lr.ph.i.i521.preheader, %.lr.ph.i.i515.preheader, %.lr.ph.i.i.preheader, %bb.h
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.40)
  br label %.thread832

bb.i:                                             ; preds = %.lr.ph.i.i527.preheader
  %i.cx = load i32, ptr %i.bb, align 4, !tbaa !127
  %.not427 = icmp sgt i32 %i.cx, %i.ck
  br i1 %.not427, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cy = load i32, ptr %i.bc, align 8, !tbaa !128
  %i.cz = icmp sgt i32 %i.cy, %i.cp
  %i.da = icmp ne i32 %i.co, 0
  %or.cond = select i1 %i.cz, i1 %i.da, i1 false
  %i.db = icmp ne i32 %i.ct, 0
  %or.cond43 = select i1 %or.cond, i1 %i.db, i1 false
  br i1 %or.cond43, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.i.i527.preheader
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.41)
  br label %.thread832

bb.l:                                             ; preds = %bb.j
  %i.dc = mul i32 %i.ct, %i.co                    ; 4 uses
  %i.dd = zext i32 %i.dc to i64                   ; 8 uses
  %i.de = load i8, ptr %i.ad, align 8, !tbaa !26  ; 2 uses
  %i.df = lshr i8 %i.de, 3
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.di = zext i8 %i.dh to i32
  %i.dj = mul i32 %i.dc, %i.di
  %i.dk = mul i32 %i.dj, %i.dg
  %i.dl = add i32 %i.dk, 8
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !3
  %i.dn = icmp ugt i32 %i.dl, %i.dm               ; 2 uses
  switch i8 %i.de, label %bb.de [
    i8 8, label %bb.m
    i8 16, label %bb.az
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.do = zext i32 %i.cu to i64
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.do)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dp = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.dq = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.dp, i64 noundef 1, i64 noundef %i.dt)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dv = load ptr, ptr %1, align 8, !tbaa !18    ; 7 uses
  br i1 %i.du, label %bb.q, label %.critedge487

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.q:                                             ; preds = %bb.o
  br i1 %i.dn, label %bb.r, label %bb.ap

bb.r:                                             ; preds = %bb.q
  %i.dx = load ptr, ptr %i.bk, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.dy = load i8, ptr %i.ah, align 1, !tbaa !74  ; 2 uses
  %i.dz = zext i8 %i.dy to i32
  %storemerge4641024 = add nsw i32 %i.dz, -1
  store i32 %storemerge4641024, ptr %i.g, align 4, !tbaa !3
  %.not1034 = icmp eq i8 %i.dy, 0
  br i1 %.not1034, label %.thread790, label %.lr.ph1028

.lr.ph1028:                                       ; preds = %bb.r
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = ptrtoint ptr %i.dv to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %.not.i.i.i.i = icmp eq i32 %i.dc, 0
  %i.ed = add nsw i64 %i.dd, -1                   ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br label %bb.s

.thread790:                                       ; preds = %bb.al, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %.critedge510

bb.s:                                             ; preds = %.lr.ph1028, %bb.al
  %.sroa.8782.01026 = phi i64 [ %i.ec, %.lr.ph1028 ], [ %.sroa.8782.1, %bb.al ] ; 5 uses
  %.sroa.0781.01025 = phi ptr [ %i.dv, %.lr.ph1028 ], [ %.sroa.0781.1, %bb.al ] ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #33
          to label %.noexc unwind label %bb.ae    ; 5 uses

.noexc:                                           ; preds = %bb.t
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.dd  ; 3 uses
  store i8 0, ptr %i.ef, align 1, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  br i1 %i.ee, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.u

bb.u:                                             ; preds = %.noexc
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eh, i8 0, i64 %i.ed, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.u, %.noexc, %bb.s
  %.sroa.11779.0 = phi ptr [ %i.eg, %bb.u ], [ %i.eg, %.noexc ], [ null, %bb.s ] ; 2 uses
  %.sroa.0775.0 = phi ptr [ %i.ef, %bb.u ], [ %i.ef, %.noexc ], [ null, %bb.s ] ; 8 uses
  %.0.i.i.i.i.i = phi ptr [ %i.eg, %bb.u ], [ %i.eh, %.noexc ], [ null, %bb.s ]
  %i.ei = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ej = ptrtoint ptr %.sroa.0775.0 to i64       ; 3 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0781.01025, i64 %.sroa.8782.01026 ; 3 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ek, i64 %i.dd) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0775.0, i64 %.sroa.speculated.i ; 3 uses
  %i.en = icmp ne i64 %.sroa.speculated.i, 0
  %i.eo = icmp ne i64 %.sroa.8782.01026, 0
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i
  %.03661.i = phi ptr [ %.2.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i ], [ %.sroa.0775.0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 5 uses
  %.03760.i = phi ptr [ %.239.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i ], [ %.sroa.0781.01025, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.03760.i, i64 1 ; 9 uses
  %i.er = load i8, ptr %.03760.i, align 1, !tbaa !16 ; 2 uses
  %i.es = and i8 %i.er, 127                       ; 2 uses
  %i.et = add nuw i8 %i.es, 1                     ; 2 uses
  %.not.i532 = icmp sgt i8 %i.er, -1
  br i1 %.not.i532, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.lr.ph.i
  %i.eu = zext i8 %i.et to i64                    ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eu ; 3 uses
  %i.ew = icmp ugt ptr %i.ev, %i.el
  br i1 %i.ew, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %.03661.i, i64 %i.eu ; 3 uses
  %i.ey = icmp ugt ptr %i.ex, %i.em
  br i1 %i.ey, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not59.i = icmp eq i8 %i.es, 0
  br i1 %.not59.i, label %bb.z, label %bb.y, !prof !130

bb.y:                                             ; preds = %bb.x
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03661.i, ptr noundef nonnull align 1 dereferenceable(1) %i.eq, i64 %i.eu, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ez = load i8, ptr %i.eq, align 1, !tbaa !16
  store i8 %i.ez, ptr %.03661.i, align 1, !tbaa !16
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i

bb.aa:                                            ; preds = %.lr.ph.i
  %.not47.i = icmp ult ptr %i.eq, %i.el
  br i1 %.not47.i, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.fa = zext i8 %i.et to i64                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.03661.i, i64 %i.fa ; 2 uses
  %i.fc = icmp ugt ptr %i.fb, %i.em
  br i1 %i.fc, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %.03760.i, i64 2
  %i.fe = load i8, ptr %i.eq, align 1, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03661.i, i8 %i.fe, i64 %i.fa, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i:               ; preds = %bb.ac, %bb.z, %bb.y
  %.239.i = phi ptr [ %i.ev, %bb.y ], [ %i.fd, %bb.ac ], [ %i.ev, %bb.z ] ; 3 uses
  %.2.i = phi ptr [ %i.ex, %bb.y ], [ %i.fb, %bb.ac ], [ %i.ex, %bb.z ] ; 2 uses
  %i.ff = icmp ult ptr %.2.i, %i.em
  %i.fg = icmp ult ptr %.239.i, %i.el
  %i.fh = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %i.fh, label %.lr.ph.i, label %.loopexit

.loopexit:                                        ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i, %bb.ab, %bb.aa, %bb.w, %bb.v, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.3.i = phi ptr [ %.sroa.0781.01025, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.239.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i ], [ %i.eq, %bb.v ], [ %i.eq, %bb.ab ], [ %i.eq, %bb.aa ], [ %i.eq, %bb.w ]
  %i.fi = ptrtoint ptr %.3.i to i64
  %i.fj = ptrtoint ptr %.sroa.0781.01025 to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = icmp ugt i64 %i.fk, %.sroa.8782.01026
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18IffInput7readimgEv:bb.a

bb.ae:                                            ; preds = %bb.t
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit538

bb.af:                                            ; preds = %bb.ad
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ag:                                            ; preds = %.loopexit
  %i.fo = sub nuw i64 %.sroa.8782.01026, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0781.01025, i64 %i.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.fq = load i16, ptr %i.e, align 2, !tbaa !24  ; 3 uses
  store i16 %i.fq, ptr %i.h, align 2, !tbaa !24
  %i.fr = load i16, ptr %i.f, align 2, !tbaa !24  ; 2 uses
  %.not4661019 = icmp ugt i16 %i.fq, %i.fr
  br i1 %.not4661019, label %.sink.split, label %.lr.ph1023.preheader

.lr.ph1023.preheader:                             ; preds = %bb.ag
  %.pre1137 = load i16, ptr %i.d, align 2, !tbaa !24
  br label %.lr.ph1023

.lr.ph1023:                                       ; preds = %.lr.ph1023.preheader, %._crit_edge1017
  %i.fs = phi i16 [ %i.hl, %._crit_edge1017 ], [ %i.fr, %.lr.ph1023.preheader ]
  %i.ft = phi i16 [ %i.hn, %._crit_edge1017 ], [ %.pre1137, %.lr.ph1023.preheader ] ; 2 uses
  %.03221021 = phi i64 [ %.1323.lcssa, %._crit_edge1017 ], [ 0, %.lr.ph1023.preheader ] ; 4 uses
  %storemerge4651020 = phi i16 [ %i.ho, %._crit_edge1017 ], [ %i.fq, %.lr.ph1023.preheader ] ; 2 uses
  %i.fu = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.fv = load i32, ptr %i.as, align 4, !tbaa !76
  %i.fw = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.fx = lshr i8 %i.fw, 3
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.ga = zext i8 %i.fz to i64
  %i.gb = mul nuw nsw i64 %i.fy, %i.ga
  %i.gc = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i.i = icmp eq i8 %i.gc, 0
  %i.gd = load i8, ptr %i.an, align 1
  %i.ge = lshr i8 %i.gd, 3
  %narrow.i.i = select i1 %.not.i.i, i8 0, i8 %i.ge
  %i.gf = zext nneg i8 %narrow.i.i to i64
  %i.gg = add nuw nsw i64 %i.gb, %i.gf
  %i.gh = zext i16 %storemerge4651020 to i32
  %i.gi = mul i32 %i.fv, %i.gh
  %i.gj = zext i32 %i.gi to i64
  %i.gk = mul nuw nsw i64 %i.gg, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.gm = load i16, ptr %i.c, align 2, !tbaa !24  ; 3 uses
  store i16 %i.gm, ptr %i.i, align 2, !tbaa !24
  %.not4681012 = icmp ugt i16 %i.gm, %i.ft
  br i1 %.not4681012, label %._crit_edge1017, label %.lr.ph1016.preheader

.lr.ph1016.preheader:                             ; preds = %.lr.ph1023
  %umax1118 = call i64 @llvm.umax.i64(i64 %.03221021, i64 %i.ek)
  %exitcond1119.not1392.not = icmp ult i64 %.03221021, %i.ek
  br i1 %exitcond1119.not1392.not, label %.lr.ph1395, label %.lr.ph1016.preheader._crit_edge

.lr.ph1016:                                       ; preds = %.lr.ph1395
  %exitcond1119.not = icmp eq i64 %i.hf, %umax1118
  br i1 %exitcond1119.not, label %.lr.ph1016.preheader._crit_edge, label %.lr.ph1395, !llvm.loop !131

.lr.ph1016.preheader._crit_edge:                  ; preds = %.lr.ph1016.preheader, %.lr.ph1016
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.43, ptr noundef nonnull align 2 dereferenceable(2) %i.i, ptr noundef nonnull align 2 dereferenceable(2) %i.h)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %.lr.ph1016.preheader._crit_edge
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %bb.am

.lr.ph1395:                                       ; preds = %.lr.ph1016.preheader, %.lr.ph1016
  %storemerge46710131394 = phi i16 [ %i.hj, %.lr.ph1016 ], [ %i.gm, %.lr.ph1016.preheader ]
  %.132310141393 = phi i64 [ %i.hf, %.lr.ph1016 ], [ %.03221021, %.lr.ph1016.preheader ] ; 2 uses
  %i.go = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.gp = lshr i8 %i.go, 3
  %i.gq = zext nneg i8 %i.gp to i64
  %i.gr = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.gs = zext i8 %i.gr to i64
  %i.gt = mul nuw nsw i64 %i.gq, %i.gs
  %i.gu = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i.i534 = icmp eq i8 %i.gu, 0
  %i.gv = load i8, ptr %i.an, align 1
  %i.gw = lshr i8 %i.gv, 3
  %narrow.i.i535 = select i1 %.not.i.i534, i8 0, i8 %i.gw
  %i.gx = zext nneg i8 %narrow.i.i535 to i64
  %i.gy = add nuw nsw i64 %i.gt, %i.gx
  %i.gz = zext i16 %storemerge46710131394 to i64
  %i.ha = mul nuw nsw i64 %i.gy, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.ha
  %i.hc = load i32, ptr %i.g, align 4, !tbaa !3
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr %i.hb, i64 %i.hd
  %i.hf = add i64 %.132310141393, 1               ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0775.0, i64 %.132310141393
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !16
  store i8 %i.hh, ptr %i.he, align 1, !tbaa !16
  %i.hi = load i16, ptr %i.i, align 2, !tbaa !24
  %i.hj = add i16 %i.hi, 1                        ; 3 uses
  store i16 %i.hj, ptr %i.i, align 2, !tbaa !24
  %i.hk = load i16, ptr %i.d, align 2, !tbaa !24  ; 2 uses
  %.not468 = icmp ugt i16 %i.hj, %i.hk
  br i1 %.not468, label %._crit_edge1017.loopexit, label %.lr.ph1016, !llvm.loop !131

._crit_edge1017.loopexit:                         ; preds = %.lr.ph1395
  %.pre1138 = load i16, ptr %i.h, align 2, !tbaa !24
  %.pre1139 = load i16, ptr %i.f, align 2, !tbaa !24
  br label %._crit_edge1017

._crit_edge1017:                                  ; preds = %._crit_edge1017.loopexit, %.lr.ph1023
  %i.hl = phi i16 [ %i.fs, %.lr.ph1023 ], [ %.pre1139, %._crit_edge1017.loopexit ] ; 2 uses
  %i.hm = phi i16 [ %storemerge4651020, %.lr.ph1023 ], [ %.pre1138, %._crit_edge1017.loopexit ]
  %i.hn = phi i16 [ %i.ft, %.lr.ph1023 ], [ %i.hk, %._crit_edge1017.loopexit ]
  %.1323.lcssa = phi i64 [ %.03221021, %.lr.ph1023 ], [ %i.hf, %._crit_edge1017.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  %i.ho = add i16 %i.hm, 1                        ; 3 uses
  store i16 %i.ho, ptr %i.h, align 2, !tbaa !24
  %.not466 = icmp ugt i16 %i.ho, %i.hl
  br i1 %.not466, label %.sink.split, label %.lr.ph1023, !llvm.loop !132

bb.ai:                                            ; preds = %.lr.ph1016.preheader._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge1017, %bb.ag, %bb.ai
  %cond36.ph = phi i1 [ false, %bb.ai ], [ true, %bb.ag ], [ true, %._crit_edge1017 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.ad
  %.sroa.0781.1 = phi ptr [ %.sroa.0781.01025, %bb.ad ], [ %i.fp, %.sink.split ]
  %.sroa.8782.1 = phi i64 [ %.sroa.8782.01026, %bb.ad ], [ %i.fo, %.sink.split ]
  %cond36 = phi i1 [ false, %bb.ad ], [ %cond36.ph, %.sink.split ]
  %.not.i.i.i536 = icmp eq ptr %.sroa.0775.0, null
  br i1 %.not.i.i.i536, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hp = ptrtoint ptr %.sroa.11779.0 to i64
  %i.hq = sub i64 %i.hp, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0775.0, i64 noundef %i.hq) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.aj, %bb.ak
  br i1 %cond36, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.hr = load i32, ptr %i.g, align 4, !tbaa !3   ; 2 uses
  %storemerge464 = add nsw i32 %i.hr, -1
  store i32 %storemerge464, ptr %i.g, align 4, !tbaa !3
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %bb.s, label %.thread790, !llvm.loop !133

bb.am:                                            ; preds = %bb.ah, %bb.af
  %.pn473 = phi { ptr, i32 } [ %i.fn, %bb.af ], [ %i.gn, %bb.ah ] ; 2 uses
  %.not.i.i.i537 = icmp eq ptr %.sroa.0775.0, null
  br i1 %.not.i.i.i537, label %_ZNSt6vectorIhSaIhEED2Ev.exit538, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ht = ptrtoint ptr %.sroa.11779.0 to i64
  %i.hu = sub i64 %i.ht, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0775.0, i64 noundef %i.hu) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit538

_ZNSt6vectorIhSaIhEED2Ev.exit538:                 ; preds = %bb.an, %bb.am, %bb.ae
  %.pn473.pn = phi { ptr, i32 } [ %i.fm, %bb.ae ], [ %.pn473, %bb.am ], [ %.pn473, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.ax

bb.ao:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.av

bb.ap:                                            ; preds = %bb.q
  %i.hv = load i16, ptr %i.f, align 2, !tbaa !24  ; 3 uses
  %i.hw = zext i16 %i.hv to i32
  %i.hx = load i16, ptr %i.e, align 2, !tbaa !24  ; 4 uses
  %i.hy = zext i16 %i.hx to i32
  %i.hz = add nuw nsw i32 %i.hw, 1
  %i.ia = sub nsw i32 %i.hz, %i.hy
  %i.ib = mul i32 %i.ia, %i.co
  %i.ic = zext i32 %i.ib to i64
  %i.id = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.ie = lshr i8 %i.id, 3
  %i.if = zext nneg i8 %i.ie to i64
  %i.ig = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.ih = zext i8 %i.ig to i64
  %i.ii = mul nuw nsw i64 %i.if, %i.ih
  %i.ij = mul nuw nsw i64 %i.ii, %i.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i16 %i.hx, ptr %i.j, align 2, !tbaa !24
  %.not4561008 = icmp ugt i16 %i.hx, %i.hv
  br i1 %.not4561008, label %.thread796, label %.lr.ph1011.preheader

.lr.ph1011.preheader:                             ; preds = %bb.ap
  %.pre1134 = load i16, ptr %i.d, align 2, !tbaa !24 ; 2 uses
  br label %.lr.ph1011

.lr.ph1011:                                       ; preds = %.lr.ph1011.preheader, %.thread794
  %i.ik = phi i16 [ %i.mm, %.thread794 ], [ %i.hv, %.lr.ph1011.preheader ]
  %i.il = phi i16 [ %i.mn, %.thread794 ], [ %.pre1134, %.lr.ph1011.preheader ] ; 2 uses
  %i.im = phi i16 [ %i.mo, %.thread794 ], [ %.pre1134, %.lr.ph1011.preheader ] ; 2 uses
  %i.in = phi i16 [ %i.mp, %.thread794 ], [ %i.hx, %.lr.ph1011.preheader ] ; 2 uses
  %.03211009 = phi i32 [ %i.mq, %.thread794 ], [ 0, %.lr.ph1011.preheader ] ; 2 uses
  %i.io = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 3 uses
  %i.ip = load i32, ptr %i.as, align 4, !tbaa !76
  %i.iq = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.ir = lshr i8 %i.iq, 3
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.iu = zext i8 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.is, %i.iu
  %i.iw = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i.i539 = icmp eq i8 %i.iw, 0
  %i.ix = load i8, ptr %i.an, align 1
  %i.iy = lshr i8 %i.ix, 3
  %narrow.i.i540 = select i1 %.not.i.i539, i8 0, i8 %i.iy
  %i.iz = zext nneg i8 %narrow.i.i540 to i64
  %i.ja = add nuw nsw i64 %i.iv, %i.iz
  %i.jb = zext i16 %i.in to i32
  %i.jc = mul i32 %i.ip, %i.jb
  %i.jd = zext i32 %i.jc to i64
  %i.je = mul nuw nsw i64 %i.ja, %i.jd            ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.je
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  %i.jg = load i16, ptr %i.c, align 2, !tbaa !24  ; 3 uses
  store i16 %i.jg, ptr %i.k, align 2, !tbaa !24
  %.not4571004 = icmp ugt i16 %i.jg, %i.im
  br i1 %.not4571004, label %.thread794, label %.lr.ph1007

.lr.ph1007:                                       ; preds = %.lr.ph1011
  %i.jh = mul i32 %.03211009, %i.co
  %scevgep = getelementptr i8, ptr %i.io, i64 %i.je
  %scevgep1397 = getelementptr i8, ptr %i.io, i64 %i.je
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph1007, %._crit_edge1003
  %i.ji = phi i16 [ %i.il, %.lr.ph1007 ], [ %i.mk, %._crit_edge1003 ]
  %indvars.iv1116 = phi i64 [ 0, %.lr.ph1007 ], [ %indvars.iv.next1117, %._crit_edge1003 ] ; 2 uses
  %i.jj = phi i16 [ %i.jg, %.lr.ph1007 ], [ %i.ml, %._crit_edge1003 ] ; 2 uses
  %i.jk = trunc nuw nsw i64 %indvars.iv1116 to i32
  %i.jl = add i32 %i.jh, %i.jk
  %i.jm = zext i32 %i.jl to i64                   ; 2 uses
  %i.jn = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.jo = lshr i8 %i.jn, 3
  %i.jp = zext nneg i8 %i.jo to i64               ; 2 uses
  %i.jq = load i8, ptr %i.ah, align 1, !tbaa !29  ; 4 uses
  %i.jr = zext i8 %i.jq to i64                    ; 20 uses
  %i.js = mul nuw nsw i64 %i.jp, %i.jr            ; 3 uses
  %i.jt = mul nuw nsw i64 %i.js, %i.jm            ; 2 uses
  %i.ju = add nuw nsw i64 %i.jt, %i.js
  %.not463 = icmp samesign ugt i64 %i.ju, %i.ij
  br i1 %.not463, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.44, ptr noundef nonnull align 2 dereferenceable(2) %i.k, ptr noundef nonnull align 2 dereferenceable(2) %i.j)
          to label %.thread795 unwind label %bb.as

.thread795:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %bb.ax

bb.at:                                            ; preds = %bb.aq
  %i.jw = getelementptr i8, ptr %i.dv, i64 %i.jt  ; 10 uses
  %.not1033 = icmp eq i8 %i.jq, 0
  br i1 %.not1033, label %._crit_edge1003, label %iter.check

iter.check:                                       ; preds = %bb.at
  %i.jx = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i.i545 = icmp eq i8 %i.jx, 0
  %i.jy = load i8, ptr %i.an, align 1
  %i.jz = lshr i8 %i.jy, 3
  %narrow.i.i546 = select i1 %.not.i.i545, i8 0, i8 %i.jz
  %i.ka = zext nneg i8 %narrow.i.i546 to i64
  %i.kb = add nuw nsw i64 %i.js, %i.ka
  %i.kc = zext i16 %i.jj to i64
  %i.kd = mul nuw nsw i64 %i.kb, %i.kc            ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.kd ; 19 uses
  %min.iters.check = icmp ult i8 %i.jq, 8
  br i1 %min.iters.check, label %.lr.ph1002.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep1396 = getelementptr i8, ptr %scevgep, i64 %i.kd
  %i.kf = getelementptr i8, ptr %scevgep1397, i64 %i.kd
  %scevgep1398 = getelementptr i8, ptr %i.kf, i64 %i.jr
  %i.kg = mul nuw nsw i64 %i.jp, %i.jm
  %i.kh = add nuw nsw i64 %i.kg, 1
  %i.ki = mul nuw nsw i64 %i.kh, %i.jr
  %scevgep1399 = getelementptr i8, ptr %i.dv, i64 %i.ki
  %bound0 = icmp ult ptr %scevgep1396, %scevgep1399
  %bound1 = icmp ult ptr %i.jw, %scevgep1398
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1002.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1400 = icmp ult i8 %i.jq, 32
  br i1 %min.iters.check1400, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kj = and i64 %i.jr, 24
  %n.vec = and i64 %i.jr, 224                     ; 9 uses
  %i.kk = and i64 %i.jr, 31
  %i.kl = getelementptr i8, ptr %i.ke, i64 %n.vec
  %i.km = getelementptr i8, ptr %i.jw, i64 -1
  %i.kn = getelementptr i8, ptr %i.km, i64 %i.jr  ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -15
  %i.kp = getelementptr inbounds i8, ptr %i.kn, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ko, align 1, !tbaa !16, !alias.scope !134
  %wide.load1401 = load <16 x i8>, ptr %i.kp, align 1, !tbaa !16, !alias.scope !134
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1402 = shufflevector <16 x i8> %wide.load1401, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.kq = getelementptr i8, ptr %i.ke, i64 16
  store <16 x i8> %reverse, ptr %i.ke, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  store <16 x i8> %reverse1402, ptr %i.kq, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  %i.kr = icmp eq i64 %n.vec, 32
  br i1 %i.kr, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.ke, i64 32
  %i.ks = getelementptr i8, ptr %i.jw, i64 -33
  %i.kt = getelementptr i8, ptr %i.ks, i64 %i.jr  ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 -15
  %i.kv = getelementptr inbounds i8, ptr %i.kt, i64 -31
  %wide.load.1 = load <16 x i8>, ptr %i.ku, align 1, !tbaa !16, !alias.scope !134
  %wide.load1401.1 = load <16 x i8>, ptr %i.kv, align 1, !tbaa !16, !alias.scope !134
  %reverse.1 = shufflevector <16 x i8> %wide.load.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1402.1 = shufflevector <16 x i8> %wide.load1401.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.kw = getelementptr i8, ptr %i.ke, i64 48
  store <16 x i8> %reverse.1, ptr %next.gep.1, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  store <16 x i8> %reverse1402.1, ptr %i.kw, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  %i.kx = icmp eq i64 %n.vec, 64
  br i1 %i.kx, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %i.ke, i64 64
  %i.ky = getelementptr i8, ptr %i.jw, i64 -65
  %i.kz = getelementptr i8, ptr %i.ky, i64 %i.jr  ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 -15
  %i.lb = getelementptr inbounds i8, ptr %i.kz, i64 -31
  %wide.load.2 = load <16 x i8>, ptr %i.la, align 1, !tbaa !16, !alias.scope !134
  %wide.load1401.2 = load <16 x i8>, ptr %i.lb, align 1, !tbaa !16, !alias.scope !134
  %reverse.2 = shufflevector <16 x i8> %wide.load.2, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1402.2 = shufflevector <16 x i8> %wide.load1401.2, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lc = getelementptr i8, ptr %i.ke, i64 80
  store <16 x i8> %reverse.2, ptr %next.gep.2, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  store <16 x i8> %reverse1402.2, ptr %i.lc, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  %i.ld = icmp eq i64 %n.vec, 96
  br i1 %i.ld, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %i.ke, i64 96
  %i.le = getelementptr i8, ptr %i.jw, i64 -97
  %i.lf = getelementptr i8, ptr %i.le, i64 %i.jr  ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -15
  %i.lh = getelementptr inbounds i8, ptr %i.lf, i64 -31
  %wide.load.3 = load <16 x i8>, ptr %i.lg, align 1, !tbaa !16, !alias.scope !134
  %wide.load1401.3 = load <16 x i8>, ptr %i.lh, align 1, !tbaa !16, !alias.scope !134
  %reverse.3 = shufflevector <16 x i8> %wide.load.3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1402.3 = shufflevector <16 x i8> %wide.load1401.3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.li = getelementptr i8, ptr %i.ke, i64 112
  store <16 x i8> %reverse.3, ptr %next.gep.3, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  store <16 x i8> %reverse1402.3, ptr %i.li, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  %i.lj = icmp eq i64 %n.vec, 128
  br i1 %i.lj, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %i.ke, i64 128
  %i.lk = getelementptr i8, ptr %i.jw, i64 -129
  %i.ll = getelementptr i8, ptr %i.lk, i64 %i.jr  ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -15
  %i.ln = getelementptr inbounds i8, ptr %i.ll, i64 -31
  %wide.load.4 = load <16 x i8>, ptr %i.lm, align 1, !tbaa !16, !alias.scope !134
  %wide.load1401.4 = load <16 x i8>, ptr %i.ln, align 1, !tbaa !16, !alias.scope !134
  %reverse.4 = shufflevector <16 x i8> %wide.load.4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1402.4 = shufflevector <16 x i8> %wide.load1401.4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lo = getelementptr i8, ptr %i.ke, i64 144
  store <16 x i8> %reverse.4, ptr %next.gep.4, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  store <16 x i8> %reverse1402.4, ptr %i.lo, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  %i.lp = icmp eq i64 %n.vec, 160
  br i1 %i.lp, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %i.ke, i64 160
  %i.lq = getelementptr i8, ptr %i.jw, i64 -161
  %i.lr = getelementptr i8, ptr %i.lq, i64 %i.jr  ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 -15
  %i.lt = getelementptr inbounds i8, ptr %i.lr, i64 -31
  %wide.load.5 = load <16 x i8>, ptr %i.ls, align 1, !tbaa !16, !alias.scope !134
  %wide.load1401.5 = load <16 x i8>, ptr %i.lt, align 1, !tbaa !16, !alias.scope !134
  %reverse.5 = shufflevector <16 x i8> %wide.load.5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1402.5 = shufflevector <16 x i8> %wide.load1401.5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lu = getelementptr i8, ptr %i.ke, i64 176
  store <16 x i8> %reverse.5, ptr %next.gep.5, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  store <16 x i8> %reverse1402.5, ptr %i.lu, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  %i.lv = icmp eq i64 %n.vec, 192
  br i1 %i.lv, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %i.ke, i64 192
  %i.lw = getelementptr i8, ptr %i.jw, i64 -193
  %i.lx = getelementptr i8, ptr %i.lw, i64 %i.jr  ; 2 uses
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 -15
  %i.lz = getelementptr inbounds i8, ptr %i.lx, i64 -31
  %wide.load.6 = load <16 x i8>, ptr %i.ly, align 1, !tbaa !16, !alias.scope !134
  %wide.load1401.6 = load <16 x i8>, ptr %i.lz, align 1, !tbaa !16, !alias.scope !134
  %reverse.6 = shufflevector <16 x i8> %wide.load.6, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1402.6 = shufflevector <16 x i8> %wide.load1401.6, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ma = getelementptr i8, ptr %i.ke, i64 208
  store <16 x i8> %reverse.6, ptr %next.gep.6, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  store <16 x i8> %reverse1402.6, ptr %i.ma, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.jr
  br i1 %cmp.n, label %._crit_edge1003.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1002.preheader, label %vec.epilog.ph, !prof !139

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1404 = and i64 %i.jr, 248                 ; 3 uses
  %i.mb = and i64 %i.jr, 7
  %i.mc = getelementptr i8, ptr %i.ke, i64 %n.vec1404
  %invariant.gep1673 = getelementptr i8, ptr %i.jw, i64 %i.jr
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1405 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1409, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1406 = getelementptr i8, ptr %i.ke, i64 %index1405
  %i.md = xor i64 %index1405, -1
  %gep1674 = getelementptr i8, ptr %invariant.gep1673, i64 %i.md
  %i.me = getelementptr inbounds i8, ptr %gep1674, i64 -7
  %wide.load1407 = load <8 x i8>, ptr %i.me, align 1, !tbaa !16, !alias.scope !134
  %reverse1408 = shufflevector <8 x i8> %wide.load1407, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1408, ptr %next.gep1406, align 1, !tbaa !16, !alias.scope !137, !noalias !134
  %index.next1409 = add nuw i64 %index1405, 8     ; 2 uses
  %i.mf = icmp eq i64 %index.next1409, %n.vec1404
  br i1 %i.mf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !140

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1410 = icmp eq i64 %n.vec1404, %i.jr
  br i1 %cmp.n1410, label %._crit_edge1003.loopexit, label %.lr.ph1002.preheader

.lr.ph1002.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1112.ph = phi i64 [ %i.jr, %iter.check ], [ %i.jr, %vector.memcheck ], [ %i.kk, %vec.epilog.iter.check ], [ %i.mb, %vec.epilog.middle.block ]
  %.0319999.ph = phi ptr [ %i.ke, %iter.check ], [ %i.ke, %vector.memcheck ], [ %i.kl, %vec.epilog.iter.check ], [ %i.mc, %vec.epilog.middle.block ]
  br label %.lr.ph1002

.lr.ph1002:                                       ; preds = %.lr.ph1002.preheader, %.lr.ph1002
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %.lr.ph1002 ], [ %indvars.iv1112.ph, %.lr.ph1002.preheader ] ; 2 uses
  %.0319999 = phi ptr [ %i.mi, %.lr.ph1002 ], [ %.0319999.ph, %.lr.ph1002.preheader ] ; 2 uses
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -1 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jw, i64 %indvars.iv.next1113
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !16
  %i.mi = getelementptr inbounds nuw i8, ptr %.0319999, i64 1
  store i8 %i.mh, ptr %.0319999, align 1, !tbaa !16
  %i.mj = icmp samesign ugt i64 %indvars.iv1112, 1
  br i1 %i.mj, label %.lr.ph1002, label %._crit_edge1003.loopexit, !llvm.loop !143

._crit_edge1003.loopexit:                         ; preds = %.lr.ph1002, %vec.epilog.middle.block, %middle.block
  %.pre1135 = load i16, ptr %i.d, align 2, !tbaa !24
  br label %._crit_edge1003

._crit_edge1003:                                  ; preds = %._crit_edge1003.loopexit, %bb.at
  %i.mk = phi i16 [ %.pre1135, %._crit_edge1003.loopexit ], [ %i.ji, %bb.at ] ; 4 uses
  %i.ml = add i16 %i.jj, 1                        ; 3 uses
  store i16 %i.ml, ptr %i.k, align 2, !tbaa !24
  %indvars.iv.next1117 = add nuw nsw i64 %indvars.iv1116, 1
  %.not457 = icmp ugt i16 %i.ml, %i.mk
  br i1 %.not457, label %.thread794.loopexit, label %bb.aq, !llvm.loop !144

.thread794.loopexit:                              ; preds = %._crit_edge1003
  %.pre1136 = load i16, ptr %i.f, align 2, !tbaa !24
  br label %.thread794

.thread794:                                       ; preds = %.thread794.loopexit, %.lr.ph1011
  %i.mm = phi i16 [ %.pre1136, %.thread794.loopexit ], [ %i.ik, %.lr.ph1011 ] ; 2 uses
  %i.mn = phi i16 [ %i.mk, %.thread794.loopexit ], [ %i.il, %.lr.ph1011 ]
  %i.mo = phi i16 [ %i.mk, %.thread794.loopexit ], [ %i.im, %.lr.ph1011 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  %i.mp = add i16 %i.in, 1                        ; 3 uses
  store i16 %i.mp, ptr %i.j, align 2, !tbaa !24
  %i.mq = add nuw nsw i32 %.03211009, 1
  %.not456 = icmp ugt i16 %i.mp, %i.mm
  br i1 %.not456, label %.thread796, label %.lr.ph1011, !llvm.loop !145

.thread796:                                       ; preds = %.thread794, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %.critedge510

.critedge510:                                     ; preds = %.thread796, %.thread790
  %i.mr = load ptr, ptr %1, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i547 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i547, label %_ZNSt6vectorIhSaIhEED2Ev.exit548, label %bb.au

bb.au:                                            ; preds = %.critedge510
  %i.ms = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = ptrtoint ptr %i.mr to i64
  %i.mv = sub i64 %i.mt, %i.mu
  call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef %i.mv) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit548

_ZNSt6vectorIhSaIhEED2Ev.exit548:                 ; preds = %.critedge510, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.dh

bb.av:                                            ; preds = %.thread795, %bb.ao
  %i.mw = load ptr, ptr %1, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i549 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i549, label %_ZNSt6vectorIhSaIhEED2Ev.exit550, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mx = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mw to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %i.mw, i64 noundef %i.na) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit550

_ZNSt6vectorIhSaIhEED2Ev.exit550:                 ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.thread832

bb.ax:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit538, %bb.as, %bb.p
  %.pn473.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.p ], [ %.pn473.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit538 ], [ %i.jv, %bb.as ]
  %i.nb = load ptr, ptr %1, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i551 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i551, label %_ZNSt6vectorIhSaIhEED2Ev.exit552, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nc = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.nf) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit552

_ZNSt6vectorIhSaIhEED2Ev.exit552:                 ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.di

bb.az:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ng = zext i32 %i.cu to i64
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ng)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.nh = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ni = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %i.nh to i64
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.nh, i64 noundef 1, i64 noundef %i.nl)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.nn = load ptr, ptr %2, align 8, !tbaa !18    ; 6 uses
  br i1 %i.nm, label %bb.bd, label %.critedge499

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit587

bb.bd:                                            ; preds = %bb.bb
  %i.np = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %i.nn to i64
  %i.ns = sub i64 %i.nq, %i.nr
  br i1 %i.dn, label %bb.be, label %bb.cj

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @__const._ZN11OpenImageIO4v3_18IffInput7readimgEv.rgb16, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  store i64 505813836079825408, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.nt = load i8, ptr %i.ah, align 1, !tbaa !74
  %.not441 = icmp eq i8 %i.nt, 3
  br i1 %.not441, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.l, ptr noundef nonnull %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.critedge511 unwind label %bb.bi

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.m, ptr noundef nonnull %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.critedge489 unwind label %bb.bh

.critedge489:                                     ; preds = %bb.bg
  %i.nu = load ptr, ptr %3, align 8, !tbaa !18
  %i.nv = load ptr, ptr %i.bh, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.critedge492

.critedge511:                                     ; preds = %bb.bf
  %i.nw = load ptr, ptr %3, align 8, !tbaa !18
  %i.nx = load ptr, ptr %i.bh, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge492

.critedge492:                                     ; preds = %.critedge489, %.critedge511
  %i.ny = phi ptr [ %i.nv, %.critedge489 ], [ %i.nx, %.critedge511 ] ; 2 uses
  %i.nz = phi ptr [ %i.nu, %.critedge489 ], [ %i.nw, %.critedge511 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  %i.oa = load i8, ptr %i.ah, align 1, !tbaa !74
  %i.ob = zext i8 %i.oa to i32
  %i.oc = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.od = lshr i8 %i.oc, 3
  %i.oe = zext nneg i8 %i.od to i32
  %i.of = mul nuw nsw i32 %i.oe, %i.ob            ; 2 uses
  %storemerge991 = add nsw i32 %i.of, -1          ; 2 uses
  store i32 %storemerge991, ptr %i.n, align 4, !tbaa !3
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %._crit_edge996, label %.lr.ph995

.lr.ph995:                                        ; preds = %.critedge492
  %.not.i.i.i.i555 = icmp eq i32 %i.dc, 0
  %i.oh = add nsw i64 %i.dd, -1                   ; 2 uses
  %i.oi = icmp eq i64 %i.oh, 0
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.thread807

bb.bi:                                            ; preds = %bb.bf
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.thread807

.thread807:                                       ; preds = %bb.bi, %bb.bh
  %.pn439799 = phi { ptr, i32 } [ %i.oj, %bb.bh ], [ %i.ok, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit587

bb.bj:                                            ; preds = %.lr.ph995, %bb.cd
  %storemerge994 = phi i32 [ %storemerge991, %.lr.ph995 ], [ %storemerge, %bb.cd ]
  %.sroa.0762.0993 = phi ptr [ %i.nn, %.lr.ph995 ], [ %.sroa.0762.1, %bb.cd ] ; 6 uses
  %.sroa.8763.0992 = phi i64 [ %i.ns, %.lr.ph995 ], [ %.sroa.8763.1, %bb.cd ] ; 5 uses
  %i.ol = zext nneg i32 %storemerge994 to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !16
  br i1 %.not.i.i.i.i555, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit559, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #33
          to label %.noexc558 unwind label %.thread813 ; 5 uses

.noexc558:                                        ; preds = %bb.bk
  %i.op = getelementptr i8, ptr %i.oo, i64 %i.dd  ; 3 uses
  store i8 0, ptr %i.oo, align 1, !tbaa !16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 1 ; 2 uses
  br i1 %i.oi, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit559, label %bb.bl

bb.bl:                                            ; preds = %.noexc558
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.oq, i8 0, i64 %i.oh, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit559

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit559:            ; preds = %bb.bl, %.noexc558, %bb.bj
  %.sroa.0748.0 = phi ptr [ %i.oo, %bb.bl ], [ %i.oo, %.noexc558 ], [ null, %bb.bj ] ; 8 uses
  %.sroa.11752.0 = phi ptr [ %i.op, %bb.bl ], [ %i.op, %.noexc558 ], [ null, %bb.bj ] ; 2 uses
  %.0.i.i.i.i.i556 = phi ptr [ %i.op, %bb.bl ], [ %i.oq, %.noexc558 ], [ null, %bb.bj ]
  %i.or = ptrtoint ptr %.0.i.i.i.i.i556 to i64
  %i.os = ptrtoint ptr %.sroa.0748.0 to i64       ; 3 uses
  %i.ot = sub i64 %i.or, %i.os                    ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0762.0993, i64 %.sroa.8763.0992 ; 3 uses
  %.sroa.speculated.i560 = call i64 @llvm.umin.i64(i64 %i.ot, i64 %i.dd) ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0748.0, i64 %.sroa.speculated.i560 ; 3 uses
  %i.ow = icmp ne i64 %.sroa.speculated.i560, 0
  %i.ox = icmp ne i64 %.sroa.8763.0992, 0
end_hunk_1

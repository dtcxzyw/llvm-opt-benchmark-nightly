Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iffinput?download=true
inline.NumInlined: 3630
inline.NumDeleted: 1091
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18IffInput7readimgEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i16, align 2                      ; 13 uses
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
  %i.z = load i32, ptr %i.y, align 8, !tbaa !126
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aa, i32 noundef 0) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 18 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.af = lshr i8 %i.ae, 3
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 23 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.aj = zext i8 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 16 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i.i = icmp eq i8 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 16 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = lshr i8 %i.ao, 3
  %narrow.i.i.i = select i1 %.not.i.i.i, i8 0, i8 %i.ap
  %i.aq = zext nneg i8 %narrow.i.i.i to i64
  %i.ar = add nuw nsw i64 %i.ak, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 7 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !68
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !69
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw i64 %i.ax, %i.au
  %i.az = mul i64 %i.ay, %i.ar                    ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !59 ; 2 uses
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp ugt i64 %i.az, %i.bf
  br i1 %i.bg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bh = sub nuw i64 %i.az, %i.bf
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.bh)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.bi = icmp ult i64 %i.az, %i.bf
  br i1 %i.bi, label %bb.d, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, %i.bj
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.bj, ptr %i.ba, align 8, !tbaa !59
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.fa, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.0251.ph = phi i16 [ %.1252, %bb.fa ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 6 uses
  %.0246.ph = phi i16 [ %.0246.ph1441, %bb.fa ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ]
  br label %.outer1440

.outer1440:                                       ; preds = %.outer, %bb.dk
  %.0246.ph1441 = phi i16 [ %.0246.ph, %.outer ], [ %i.xn, %bb.dk ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.outer1440, %bb.fc
  %i.bw = load i16, ptr %i.bk, align 2, !tbaa !127 ; 2 uses
  %i.bx = icmp ult i16 %.0246.ph1441, %i.bw
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.by = load i8, ptr %i.ah, align 1, !tbaa !108
  %.not = icmp eq i8 %i.by, 0
  br i1 %.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bz = icmp uge i16 %.0251.ph, %i.bw
  %.pre1141 = load i8, ptr %i.al, align 8, !tbaa !66 ; 2 uses
  %.not406 = icmp eq i8 %.pre1141, 0
  %or.cond1296 = select i1 %i.bz, i1 true, i1 %.not406
  br i1 %or.cond1296, label %.critedge40, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f
  %i.ca = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4)
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.cb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1)
  br i1 %i.cb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.39)
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit709

bb.j:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !45
  %i.cd = call noundef i32 @llvm.bswap.i32(i32 %i.cc) ; 3 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !45
  %i.ce = and i32 %i.cd, 3                        ; 2 uses
  %.not.i = icmp eq i32 %i.ce, 0
  %i.cf = sub nuw nsw i32 4, %i.ce
  %i.cg = select i1 %.not.i, i32 0, i32 %i.cf
  %.0.i = add i32 %i.cg, %i.cd                    ; 3 uses
  %i.ch = load i32, ptr %i.a, align 1
  %i.ci = icmp ne i32 %i.ch, 1094862674
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.k, label %bb.dm

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.cl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.c, i64 noundef 2, i64 noundef 1)
  br i1 %i.cl, label %.lr.ph.i.i.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %.promoted949 = load i16, ptr %i.c, align 2, !tbaa !63
  %i.cm = call i16 @llvm.bswap.i16(i16 %.promoted949)
  store i16 %i.cm, ptr %i.c, align 2, !tbaa !63
  %i.cn = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.e, i64 noundef 2, i64 noundef 1)
  br i1 %i.cn, label %.lr.ph.i.i515.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i515.preheader:                          ; preds = %.lr.ph.i.i.preheader
  %.promoted951 = load i16, ptr %i.e, align 2, !tbaa !63
  %i.co = call i16 @llvm.bswap.i16(i16 %.promoted951)
  store i16 %i.co, ptr %i.e, align 2, !tbaa !63
  %i.cp = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1)
  br i1 %i.cp, label %.lr.ph.i.i521.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i521.preheader:                          ; preds = %.lr.ph.i.i515.preheader
  %.promoted953 = load i16, ptr %i.d, align 2, !tbaa !63
  %i.cq = call i16 @llvm.bswap.i16(i16 %.promoted953)
  store i16 %i.cq, ptr %i.d, align 2, !tbaa !63
  %i.cr = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.f, i64 noundef 2, i64 noundef 1)
  br i1 %i.cr, label %.lr.ph.i.i527.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i527.preheader:                          ; preds = %.lr.ph.i.i521.preheader
  %.promoted955 = load i16, ptr %i.f, align 2, !tbaa !63
  %i.cs = call i16 @llvm.bswap.i16(i16 %.promoted955) ; 3 uses
  store i16 %i.cs, ptr %i.f, align 2, !tbaa !63
  %i.ct = load i16, ptr %i.d, align 2, !tbaa !63  ; 2 uses
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = load i16, ptr %i.c, align 2, !tbaa !63  ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = sub nsw i32 %i.cu, %i.cw
  %i.cy = add nsw i32 %i.cx, 1                    ; 8 uses
  %i.cz = zext i16 %i.cs to i32                   ; 2 uses
  %i.da = load i16, ptr %i.e, align 2, !tbaa !63  ; 2 uses
  %i.db = zext i16 %i.da to i32
  %i.dc = sub nsw i32 %i.cz, %i.db
  %i.dd = add nsw i32 %i.dc, 1                    ; 2 uses
  %i.de = add i32 %.0.i, -8                       ; 2 uses
  %i.df = icmp ugt i16 %i.cv, %i.ct
  %i.dg = icmp ugt i16 %i.da, %i.cs
  %or.cond480 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond480, label %bb.n, label %bb.l

_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit: ; preds = %.lr.ph.i.i521.preheader, %.lr.ph.i.i515.preheader, %.lr.ph.i.i.preheader, %bb.k
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.40)
  br label %.thread833

bb.l:                                             ; preds = %.lr.ph.i.i527.preheader
  %i.dh = load i32, ptr %i.bl, align 4, !tbaa !134
  %.not427 = icmp sgt i32 %i.dh, %i.cu
  br i1 %.not427, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.di = load i32, ptr %i.bm, align 8, !tbaa !135
  %i.dj = icmp sgt i32 %i.di, %i.cz
  %7 = icmp ne i32 %i.cy, 0
  %or.cond = select i1 %i.dj, i1 %7, i1 false
  %8 = icmp ne i32 %i.dd, 0
  %or.cond43 = select i1 %or.cond, i1 %8, i1 false
  br i1 %or.cond43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i.i527.preheader
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.41)
  br label %.thread833

bb.o:                                             ; preds = %bb.m
  %i.dk = mul i32 %i.dd, %i.cy                    ; 4 uses
  %i.dl = zext i32 %i.dk to i64                   ; 8 uses
  %i.dm = load i8, ptr %i.ad, align 8, !tbaa !65  ; 2 uses
  %i.dn = lshr i8 %i.dm, 3
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul i32 %i.dk, %i.dq
  %i.ds = mul i32 %i.dr, %i.do
  %i.dt = add i32 %i.ds, 8
  %i.du = load i32, ptr %i.b, align 4, !tbaa !45
  %i.dv = icmp ugt i32 %i.dt, %i.du               ; 2 uses
  switch i8 %i.dm, label %bb.dh [
    i8 8, label %bb.p
    i8 16, label %bb.bc
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.dw = zext i32 %i.de to i64
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dw)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dx = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %i.dy = load ptr, ptr %i.bu, align 8, !tbaa !59
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.dx, i64 noundef 1, i64 noundef %i.eb)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ed = load ptr, ptr %1, align 8, !tbaa !58    ; 7 uses
  br i1 %i.ec, label %bb.t, label %.critedge487

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.t:                                             ; preds = %bb.r
  br i1 %i.dv, label %bb.u, label %bb.as

bb.u:                                             ; preds = %bb.t
  %i.ef = load ptr, ptr %i.bu, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.eg = load i8, ptr %i.ah, align 1, !tbaa !108 ; 2 uses
  %i.eh = zext i8 %i.eg to i32
  %storemerge4641025 = add nsw i32 %i.eh, -1
  store i32 %storemerge4641025, ptr %i.g, align 4, !tbaa !45
  %.not1035 = icmp eq i8 %i.eg, 0
  br i1 %.not1035, label %.thread791, label %.lr.ph1029

.lr.ph1029:                                       ; preds = %bb.u
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = ptrtoint ptr %i.ed to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %.not.i.i.i.i = icmp eq i32 %i.dk, 0
  %i.el = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br label %bb.v

.thread791:                                       ; preds = %bb.ao, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %.critedge510

bb.v:                                             ; preds = %.lr.ph1029, %bb.ao
  %.sroa.8783.01027 = phi i64 [ %i.ek, %.lr.ph1029 ], [ %.sroa.8783.1, %bb.ao ] ; 5 uses
  %.sroa.0782.01026 = phi ptr [ %i.ed, %.lr.ph1029 ], [ %.sroa.0782.1, %bb.ao ] ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #33
          to label %.noexc unwind label %bb.ah    ; 5 uses

.noexc:                                           ; preds = %bb.w
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.dl  ; 3 uses
  store i8 0, ptr %i.en, align 1, !tbaa !55
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 2 uses
  br i1 %i.em, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.x

bb.x:                                             ; preds = %.noexc
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ep, i8 0, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.x, %.noexc, %bb.v
  %.sroa.11780.0 = phi ptr [ %i.eo, %bb.x ], [ %i.eo, %.noexc ], [ null, %bb.v ] ; 2 uses
  %.sroa.0776.0 = phi ptr [ %i.en, %bb.x ], [ %i.en, %.noexc ], [ null, %bb.v ] ; 8 uses
  %.0.i.i.i.i.i = phi ptr [ %i.eo, %bb.x ], [ %i.ep, %.noexc ], [ null, %bb.v ]
  %i.eq = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.er = ptrtoint ptr %.sroa.0776.0 to i64       ; 3 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0782.01026, i64 %.sroa.8783.01027 ; 3 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.es, i64 %i.dl) ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0776.0, i64 %.sroa.speculated.i ; 3 uses
  %i.ev = icmp ne i64 %.sroa.speculated.i, 0
  %i.ew = icmp ne i64 %.sroa.8783.01027, 0
  %i.ex = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %i.ex, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i
  %.03661.i = phi ptr [ %.2.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i ], [ %.sroa.0776.0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 5 uses
  %.03760.i = phi ptr [ %.239.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i ], [ %.sroa.0782.01026, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.03760.i, i64 1 ; 9 uses
  %i.ez = load i8, ptr %.03760.i, align 1, !tbaa !55 ; 2 uses
  %i.fa = and i8 %i.ez, 127                       ; 2 uses
  %i.fb = add nuw i8 %i.fa, 1                     ; 2 uses
  %.not.i532 = icmp sgt i8 %i.ez, -1
  br i1 %.not.i532, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %.lr.ph.i
  %i.fc = zext i8 %i.fb to i64                    ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fc ; 3 uses
  %i.fe = icmp ugt ptr %i.fd, %i.et
  br i1 %i.fe, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %.03661.i, i64 %i.fc ; 3 uses
  %i.fg = icmp ugt ptr %i.ff, %i.eu
  br i1 %i.fg, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not59.i = icmp eq i8 %i.fa, 0
  br i1 %.not59.i, label %bb.ac, label %bb.ab, !prof !136

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03661.i, ptr noundef nonnull align 1 dereferenceable(1) %i.ey, i64 %i.fc, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.fh = load i8, ptr %i.ey, align 1, !tbaa !55
  store i8 %i.fh, ptr %.03661.i, align 1, !tbaa !55
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i

bb.ad:                                            ; preds = %.lr.ph.i
  %.not47.i = icmp ult ptr %i.ey, %i.et
  br i1 %.not47.i, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.fi = zext i8 %i.fb to i64                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.03661.i, i64 %i.fi ; 2 uses
  %i.fk = icmp ugt ptr %i.fj, %i.eu
  br i1 %i.fk, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = getelementptr inbounds nuw i8, ptr %.03760.i, i64 2
  %i.fm = load i8, ptr %i.ey, align 1, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03661.i, i8 %i.fm, i64 %i.fi, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i:               ; preds = %bb.af, %bb.ac, %bb.ab
  %.239.i = phi ptr [ %i.fd, %bb.ab ], [ %i.fl, %bb.af ], [ %i.fd, %bb.ac ] ; 3 uses
  %.2.i = phi ptr [ %i.ff, %bb.ab ], [ %i.fj, %bb.af ], [ %i.ff, %bb.ac ] ; 2 uses
  %i.fn = icmp ult ptr %.2.i, %i.eu
  %i.fo = icmp ult ptr %.239.i, %i.et
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %.lr.ph.i, label %.loopexit

.loopexit:                                        ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i, %bb.ae, %bb.ad, %bb.z, %bb.y, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.3.i = phi ptr [ %.sroa.0782.01026, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.239.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i ], [ %i.ey, %bb.y ], [ %i.ey, %bb.ae ], [ %i.ey, %bb.ad ], [ %i.ey, %bb.z ]
  %i.fq = ptrtoint ptr %.3.i to i64
  %i.fr = ptrtoint ptr %.sroa.0782.01026 to i64
  %i.fs = sub i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = icmp ugt i64 %i.fs, %.sroa.8783.01027
  br i1 %i.ft, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.loopexit
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.42, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.am unwind label %bb.ai

bb.ah:                                            ; preds = %bb.w
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit539

bb.ai:                                            ; preds = %bb.ag
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %.loopexit
  %i.fw = sub nuw i64 %.sroa.8783.01027, %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0782.01026, i64 %i.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.fy = load i16, ptr %i.e, align 2, !tbaa !63  ; 3 uses
  store i16 %i.fy, ptr %i.h, align 2, !tbaa !63
  %i.fz = load i16, ptr %i.f, align 2, !tbaa !63  ; 2 uses
  %.not4661020 = icmp ugt i16 %i.fy, %i.fz
  br i1 %.not4661020, label %.sink.split, label %.lr.ph1024.preheader

.lr.ph1024.preheader:                             ; preds = %bb.aj
  %.pre1138 = load i16, ptr %i.d, align 2, !tbaa !63
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18IffInput7readimgEv:bb.a
  %i.wf = add nuw nsw i64 %i.wa, %i.we
  %i.wg = mul nuw nsw i64 %i.wf, %i.te
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ua, ptr align 2 %.sroa.0737.0, i64 %i.wg, i1 false)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge974
  %.not429877 = phi i1 [ false, %bb.cy ], [ true, %._crit_edge974 ]
  %.not.i.i.i605 = icmp eq ptr %.sroa.0737.0, null
  br i1 %.not.i.i.i605, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.wh = ptrtoint ptr %.sroa.12.0 to i64
  %i.wi = sub i64 %i.wh, %i.ul
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0737.0, i64 noundef %i.wi) #31
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.cz, %bb.da
  br i1 %.not429877, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.wj = load i16, ptr %i.q, align 2, !tbaa !63
  %i.wk = add i16 %i.wj, 1                        ; 3 uses
  store i16 %i.wk, ptr %i.q, align 2, !tbaa !63
  %i.wl = add nuw nsw i32 %.0260977, 1
  %i.wm = load i16, ptr %i.f, align 2, !tbaa !63
  %.not428 = icmp ugt i16 %i.wk, %i.wm
  br i1 %.not428, label %.thread829, label %bb.cn, !llvm.loop !354

bb.dc:                                            ; preds = %bb.cx
  %i.wn = ptrtoint ptr %.sroa.12.0 to i64
  %i.wo = sub i64 %i.wn, %i.ul
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0737.0, i64 noundef %i.wo) #31
  br label %_ZNSt6vectorItSaItEED2Ev.exit607

_ZNSt6vectorItSaItEED2Ev.exit607:                 ; preds = %bb.cp, %bb.cx, %bb.dc
  %.pn435.pn.pn = phi { ptr, i32 } [ %.pn433, %bb.dc ], [ %i.uw, %bb.cp ], [ %.pn433, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit588

bb.dd:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br label %.loopexit862

.critedge513:                                     ; preds = %.thread829, %_ZNSt6vectorIhSaIhEED2Ev.exit586
  %i.wp = load ptr, ptr %2, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i608 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i.i608, label %_ZNSt6vectorIhSaIhEED2Ev.exit609, label %bb.de

bb.de:                                            ; preds = %.critedge513
  %i.wq = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.wr = ptrtoint ptr %i.wq to i64
  %i.ws = ptrtoint ptr %i.wp to i64
  %i.wt = sub i64 %i.wr, %i.ws
  call void @_ZdlPvm(ptr noundef nonnull %i.wp, i64 noundef %i.wt) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit609

_ZNSt6vectorIhSaIhEED2Ev.exit609:                 ; preds = %.critedge513, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.dk

.loopexit862:                                     ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit586, %bb.dd
  %i.wu = load ptr, ptr %2, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i610 = icmp eq ptr %i.wu, null
  br i1 %.not.i.i.i610, label %_ZNSt6vectorIhSaIhEED2Ev.exit611, label %bb.df

bb.df:                                            ; preds = %.loopexit862
  %i.wv = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = ptrtoint ptr %i.wu to i64
  %i.wy = sub i64 %i.ww, %i.wx
  call void @_ZdlPvm(ptr noundef nonnull %i.wu, i64 noundef %i.wy) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit611

_ZNSt6vectorIhSaIhEED2Ev.exit611:                 ; preds = %.loopexit862, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread833

_ZNSt6vectorIhSaIhEED2Ev.exit588:                 ; preds = %_ZNSt6vectorItSaItEED2Ev.exit607, %.thread808, %bb.ck, %bb.cl, %bb.bf
  %.pn450.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nw, %bb.bf ], [ %.pn435.pn.pn, %_ZNSt6vectorItSaItEED2Ev.exit607 ], [ %.pn439800, %.thread808 ], [ %.pn450, %bb.ck ], [ %.pn450.pn817, %bb.cl ]
  %i.wz = load ptr, ptr %2, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i612 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i.i612, label %_ZNSt6vectorIhSaIhEED2Ev.exit613, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit588
  %i.xa = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.xb = ptrtoint ptr %i.xa to i64
  %i.xc = ptrtoint ptr %i.wz to i64
  %i.xd = sub i64 %i.xb, %i.xc
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xd) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit613

_ZNSt6vectorIhSaIhEED2Ev.exit613:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit588, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.dl

bb.dh:                                            ; preds = %bb.o
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %i.xe)
  br label %.thread833

.critedge487:                                     ; preds = %bb.r
  %.not.i.i.i614 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i614, label %_ZNSt6vectorIhSaIhEED2Ev.exit615, label %bb.di

bb.di:                                            ; preds = %.critedge487
  %i.xf = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.xg = ptrtoint ptr %i.xf to i64
  %i.xh = ptrtoint ptr %i.ed to i64
  %i.xi = sub i64 %i.xg, %i.xh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.xi) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit615

_ZNSt6vectorIhSaIhEED2Ev.exit615:                 ; preds = %.critedge487, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.thread833

.critedge499:                                     ; preds = %bb.be
  %.not.i.i.i616 = icmp eq ptr %i.nv, null
  br i1 %.not.i.i.i616, label %_ZNSt6vectorIhSaIhEED2Ev.exit617, label %bb.dj

bb.dj:                                            ; preds = %.critedge499
  %i.xj = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = ptrtoint ptr %i.nv to i64
  %i.xm = sub i64 %i.xk, %i.xl
  call void @_ZdlPvm(ptr noundef nonnull %i.nv, i64 noundef %i.xm) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit617

_ZNSt6vectorIhSaIhEED2Ev.exit617:                 ; preds = %.critedge499, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread833

.thread833:                                       ; preds = %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit, %bb.n, %_ZNSt6vectorIhSaIhEED2Ev.exit551, %_ZNSt6vectorIhSaIhEED2Ev.exit611, %bb.dh, %_ZNSt6vectorIhSaIhEED2Ev.exit615, %_ZNSt6vectorIhSaIhEED2Ev.exit617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit709

bb.dk:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit549, %_ZNSt6vectorIhSaIhEED2Ev.exit609
  %i.xn = add i16 %.0246.ph1441, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %.outer1440, !llvm.loop !355

bb.dl:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit613, %_ZNSt6vectorIhSaIhEED2Ev.exit553
  %.pn473.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn473.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit553 ], [ %.pn450.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit613 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.ff

bb.dm:                                            ; preds = %bb.j
  %i.xo = load i32, ptr %i.a, align 1
  %i.xp = icmp ne i32 %i.xo, 1179992666
  %i.xq = zext i1 %i.xp to i32
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %bb.dn, label %bb.fc

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #30
  %i.xs = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.s, i64 noundef 2, i64 noundef 1)
  br i1 %i.xs, label %.lr.ph.i.i619.preheader, label %.thread853

.lr.ph.i.i619.preheader:                          ; preds = %bb.dn
  %.promoted = load i16, ptr %i.s, align 2, !tbaa !63
  %i.xt = call i16 @llvm.bswap.i16(i16 %.promoted)
  store i16 %i.xt, ptr %i.s, align 2, !tbaa !63
  %i.xu = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.u, i64 noundef 2, i64 noundef 1)
  br i1 %i.xu, label %.lr.ph.i.i625.preheader, label %.thread853

.lr.ph.i.i625.preheader:                          ; preds = %.lr.ph.i.i619.preheader
  %.promoted918 = load i16, ptr %i.u, align 2, !tbaa !63
  %i.xv = call i16 @llvm.bswap.i16(i16 %.promoted918)
  store i16 %i.xv, ptr %i.u, align 2, !tbaa !63
  %i.xw = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.t, i64 noundef 2, i64 noundef 1)
  br i1 %i.xw, label %.lr.ph.i.i631.preheader, label %.thread853

.lr.ph.i.i631.preheader:                          ; preds = %.lr.ph.i.i625.preheader
  %.promoted920 = load i16, ptr %i.t, align 2, !tbaa !63
  %i.xx = call i16 @llvm.bswap.i16(i16 %.promoted920)
  store i16 %i.xx, ptr %i.t, align 2, !tbaa !63
  %i.xy = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.v, i64 noundef 2, i64 noundef 1)
  br i1 %i.xy, label %.lr.ph.i.i637.preheader, label %.thread853

.lr.ph.i.i637.preheader:                          ; preds = %.lr.ph.i.i631.preheader
  %.promoted922 = load i16, ptr %i.v, align 2, !tbaa !63
  %i.xz = call i16 @llvm.bswap.i16(i16 %.promoted922) ; 3 uses
  store i16 %i.xz, ptr %i.v, align 2, !tbaa !63
  %i.ya = load i16, ptr %i.t, align 2, !tbaa !63  ; 2 uses
  %i.yb = zext i16 %i.ya to i32                   ; 2 uses
  %i.yc = load i16, ptr %i.s, align 2, !tbaa !63  ; 2 uses
  %i.yd = zext i16 %i.yc to i32
  %i.ye = sub nsw i32 %i.yb, %i.yd
  %i.yf = add nsw i32 %i.ye, 1                    ; 3 uses
  %i.yg = zext i16 %i.xz to i32                   ; 2 uses
  %i.yh = load i16, ptr %i.u, align 2, !tbaa !63  ; 2 uses
  %i.yi = zext i16 %i.yh to i32
  %i.yj = sub nsw i32 %i.yg, %i.yi
  %i.yk = add nsw i32 %i.yj, 1                    ; 2 uses
  %i.yl = add i32 %.0.i, -8
  %i.ym = icmp ugt i16 %i.yc, %i.ya
  %i.yn = icmp ugt i16 %i.yh, %i.xz
  %or.cond500 = select i1 %i.ym, i1 true, i1 %i.yn
  br i1 %or.cond500, label %.thread853, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i.i637.preheader
  %i.yo = load i32, ptr %i.bl, align 4, !tbaa !134
  %.not408 = icmp sgt i32 %i.yo, %i.yb
  br i1 %.not408, label %bb.dp, label %.thread853

bb.dp:                                            ; preds = %bb.do
  %i.yp = load i32, ptr %i.bm, align 8, !tbaa !135
  %i.yq = icmp sgt i32 %i.yp, %i.yg
  %9 = icmp ne i32 %i.yf, 0
  %or.cond45 = select i1 %i.yq, i1 %9, i1 false
  %10 = icmp ne i32 %i.yk, 0
  %or.cond47 = select i1 %or.cond45, i1 %10, i1 false
  br i1 %or.cond47, label %bb.dq, label %.thread853

bb.dq:                                            ; preds = %bb.dp
  %i.yr = mul i32 %i.yk, %i.yf                    ; 3 uses
  %i.ys = zext i32 %i.yr to i64                   ; 5 uses
  %i.yt = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i642 = icmp eq i8 %i.yt, 0
  %i.yu = load i8, ptr %i.an, align 1
  %i.yv = lshr i8 %i.yu, 3
  %narrow.i = select i1 %.not.i642, i8 0, i8 %i.yv
  %i.yw = zext nneg i8 %narrow.i to i32
  %i.yx = mul i32 %i.yr, %i.yw
  %i.yy = add i32 %i.yx, 8
  %i.yz = load i32, ptr %i.b, align 4, !tbaa !45
  %i.za = icmp ugt i32 %i.yy, %i.yz
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.zb = zext i32 %i.yl to i64
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.zb)
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.zc = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.zd = load ptr, ptr %i.bn, align 8, !tbaa !59
  %i.ze = ptrtoint ptr %i.zd to i64
  %i.zf = ptrtoint ptr %i.zc to i64
  %i.zg = sub i64 %i.ze, %i.zf
  %i.zh = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.zc, i64 noundef 1, i64 noundef %i.zg)
          to label %bb.ds unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.zh, label %bb.du, label %.critedge508

bb.dt:                                            ; preds = %bb.dr, %bb.dq
  %i.zi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit677

bb.du:                                            ; preds = %bb.ds
  %i.zj = load ptr, ptr %6, align 8, !tbaa !58    ; 4 uses
  %i.zk = load ptr, ptr %i.bn, align 8, !tbaa !59
  %i.zl = ptrtoint ptr %i.zk to i64
  %i.zm = ptrtoint ptr %i.zj to i64
  %i.zn = sub i64 %i.zl, %i.zm                    ; 3 uses
  %i.zo = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i643 = icmp eq i8 %i.zo, 0
  %i.zp = load i8, ptr %i.an, align 1
  %i.zq = lshr i8 %i.zp, 3
  %narrow.i644 = select i1 %.not.i643, i8 0, i8 %i.zq ; 3 uses
  br i1 %i.za, label %bb.dv, label %bb.er

bb.dv:                                            ; preds = %bb.du
  %.not.i.i.i.i645 = icmp eq i32 %i.yr, 0
  %i.zr = add nsw i64 %i.ys, -1                   ; 2 uses
  %i.zs = icmp eq i64 %i.zr, 0
  %.not1435 = icmp eq i8 %narrow.i644, 0
  br i1 %.not1435, label %.thread845, label %.lr.ph1385

.lr.ph1385:                                       ; preds = %bb.dv
  %i.zt = zext nneg i8 %narrow.i644 to i64
  br label %bb.dx

bb.dw:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit675
  %i.zu = icmp sgt i64 %indvars.iv.next11041383.in, 1
  br i1 %i.zu, label %bb.dx, label %.thread845, !llvm.loop !356

bb.dx:                                            ; preds = %.lr.ph1385, %bb.dw
  %indvars.iv.next11041383.in = phi i64 [ %i.zt, %.lr.ph1385 ], [ %indvars.iv.next11041383, %bb.dw ] ; 2 uses
  %.sroa.0727.01382 = phi ptr [ %i.zj, %.lr.ph1385 ], [ %.sroa.0727.1, %bb.dw ] ; 6 uses
  %.sroa.7.01381 = phi i64 [ %i.zn, %.lr.ph1385 ], [ %.sroa.7.1, %bb.dw ] ; 5 uses
  %indvars.iv.next11041383 = add nsw i64 %indvars.iv.next11041383.in, -1 ; 2 uses
  br i1 %.not.i.i.i.i645, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit649, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.zv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ys) #33
          to label %.noexc648 unwind label %bb.ej ; 5 uses

.noexc648:                                        ; preds = %bb.dy
  %i.zw = getelementptr i8, ptr %i.zv, i64 %i.ys  ; 3 uses
  store i8 0, ptr %i.zv, align 1, !tbaa !55
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 1 ; 2 uses
  br i1 %i.zs, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit649, label %bb.dz

bb.dz:                                            ; preds = %.noexc648
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.zx, i8 0, i64 %i.zr, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit649

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit649:            ; preds = %bb.dz, %.noexc648, %bb.dx
  %.sroa.0722.0 = phi ptr [ %i.zv, %bb.dz ], [ %i.zv, %.noexc648 ], [ null, %bb.dx ] ; 8 uses
  %.sroa.11.0 = phi ptr [ %i.zw, %bb.dz ], [ %i.zw, %.noexc648 ], [ null, %bb.dx ] ; 2 uses
  %.0.i.i.i.i.i646 = phi ptr [ %i.zw, %bb.dz ], [ %i.zx, %.noexc648 ], [ null, %bb.dx ]
  %i.zy = ptrtoint ptr %.0.i.i.i.i.i646 to i64
  %i.zz = ptrtoint ptr %.sroa.0722.0 to i64       ; 3 uses
  %i.aaa = sub i64 %i.zy, %i.zz                   ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.0727.01382, i64 %.sroa.7.01381 ; 3 uses
  %.sroa.speculated.i650 = call i64 @llvm.umin.i64(i64 %i.aaa, i64 %i.ys) ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0722.0, i64 %.sroa.speculated.i650 ; 3 uses
  %i.aad = icmp ne i64 %.sroa.speculated.i650, 0
  %i.aae = icmp ne i64 %.sroa.7.01381, 0
  %i.aaf = select i1 %i.aad, i1 %i.aae, i1 false
  br i1 %i.aaf, label %.lr.ph.i652, label %.loopexit861

.lr.ph.i652:                                      ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit649, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i657
  %.03661.i653 = phi ptr [ %.2.i659, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i657 ], [ %.sroa.0722.0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit649 ] ; 5 uses
  %.03760.i654 = phi ptr [ %.239.i658, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i657 ], [ %.sroa.0727.01382, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit649 ] ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.03760.i654, i64 1 ; 9 uses
  %i.aah = load i8, ptr %.03760.i654, align 1, !tbaa !55 ; 2 uses
  %i.aai = and i8 %i.aah, 127                     ; 2 uses
  %i.aaj = add nuw i8 %i.aai, 1                   ; 2 uses
  %.not.i655 = icmp sgt i8 %i.aah, -1
  br i1 %.not.i655, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %.lr.ph.i652
  %i.aak = zext i8 %i.aaj to i64                  ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aak ; 3 uses
  %i.aam = icmp ugt ptr %i.aal, %i.aab
  br i1 %i.aam, label %.loopexit861, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aan = getelementptr inbounds nuw i8, ptr %.03661.i653, i64 %i.aak ; 3 uses
  %i.aao = icmp ugt ptr %i.aan, %i.aac
  br i1 %i.aao, label %.loopexit861, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.not59.i660 = icmp eq i8 %i.aai, 0
  br i1 %.not59.i660, label %bb.ee, label %bb.ed, !prof !136

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03661.i653, ptr noundef nonnull align 1 dereferenceable(1) %i.aag, i64 %i.aak, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i657

bb.ee:                                            ; preds = %bb.ec
  %i.aap = load i8, ptr %i.aag, align 1, !tbaa !55
  store i8 %i.aap, ptr %.03661.i653, align 1, !tbaa !55
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i657

bb.ef:                                            ; preds = %.lr.ph.i652
  %.not47.i656 = icmp ult ptr %i.aag, %i.aab
  br i1 %.not47.i656, label %bb.eg, label %.loopexit861

bb.eg:                                            ; preds = %bb.ef
  %i.aaq = zext i8 %i.aaj to i64                  ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.03661.i653, i64 %i.aaq ; 2 uses
  %i.aas = icmp ugt ptr %i.aar, %i.aac
  br i1 %i.aas, label %.loopexit861, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aat = getelementptr inbounds nuw i8, ptr %.03760.i654, i64 2
  %i.aau = load i8, ptr %i.aag, align 1, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03661.i653, i8 %i.aau, i64 %i.aaq, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i657

_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i657:            ; preds = %bb.eh, %bb.ee, %bb.ed
  %.239.i658 = phi ptr [ %i.aal, %bb.ed ], [ %i.aat, %bb.eh ], [ %i.aal, %bb.ee ] ; 3 uses
  %.2.i659 = phi ptr [ %i.aan, %bb.ed ], [ %i.aar, %bb.eh ], [ %i.aan, %bb.ee ] ; 2 uses
  %i.aav = icmp ult ptr %.2.i659, %i.aac
  %i.aaw = icmp ult ptr %.239.i658, %i.aab
  %i.aax = select i1 %i.aav, i1 %i.aaw, i1 false
  br i1 %i.aax, label %.lr.ph.i652, label %.loopexit861

.loopexit861:                                     ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i657, %bb.eg, %bb.ef, %bb.eb, %bb.ea, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit649
  %.3.i651 = phi ptr [ %.sroa.0727.01382, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit649 ], [ %.239.i658, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i657 ], [ %i.aag, %bb.ea ], [ %i.aag, %bb.eg ], [ %i.aag, %bb.ef ], [ %i.aag, %bb.eb ]
  %i.aay = ptrtoint ptr %.3.i651 to i64
  %i.aaz = ptrtoint ptr %.sroa.0727.01382 to i64
  %i.aba = sub i64 %i.aay, %i.aaz                 ; 3 uses
  %i.abb = icmp ugt i64 %i.aba, %.sroa.7.01381
  br i1 %i.abb, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %.loopexit861
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.49)
          to label %.loopexit860 unwind label %bb.ek

bb.ej:                                            ; preds = %bb.dy
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit677

bb.ek:                                            ; preds = %bb.ei
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.el:                                            ; preds = %.loopexit861
  %i.abe = sub nuw i64 %.sroa.7.01381, %i.aba     ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.0727.01382, i64 %i.aba ; 3 uses
  %i.abg = load i16, ptr %i.u, align 2, !tbaa !63 ; 2 uses
  %i.abh = load i16, ptr %i.v, align 2, !tbaa !63 ; 2 uses
  %.not418943 = icmp ugt i16 %i.abg, %i.abh
  br i1 %.not418943, label %.loopexit860, label %.lr.ph948

.lr.ph948:                                        ; preds = %bb.el
  %i.abi = zext i16 %i.abg to i32
  %.pre1125 = load i16, ptr %i.t, align 2, !tbaa !63
  br label %bb.em

bb.em:                                            ; preds = %.lr.ph948, %._crit_edge941
  %i.abj = phi i16 [ %i.abh, %.lr.ph948 ], [ %i.adb, %._crit_edge941 ]
  %i.abk = phi i16 [ %.pre1125, %.lr.ph948 ], [ %i.adc, %._crit_edge941 ] ; 2 uses
  %.0244946 = phi i32 [ %i.abi, %.lr.ph948 ], [ %i.add, %._crit_edge941 ] ; 3 uses
  %.sroa.0716.0945 = phi ptr [ %.sroa.0722.0, %.lr.ph948 ], [ %.sroa.0716.1.lcssa, %._crit_edge941 ] ; 2 uses
  %.sroa.8718.0944 = phi i64 [ %i.aaa, %.lr.ph948 ], [ %.sroa.8718.1.lcssa, %._crit_edge941 ] ; 3 uses
end_hunk_1

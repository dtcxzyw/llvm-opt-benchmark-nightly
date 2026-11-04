Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/dungeongen?download=true
inline.NumInlined: 312
inline.NumDeleted: 66
begin_hunk_0_@_ZN10DungeonGen8makeRoomEN4core8vector3dIsEES2_:bb.a
.preheader385.us.us:                              ; preds = %.preheader385.us.us.preheader, %._crit_edge406.us.us
  %.0105407.us.us = phi i16 [ %i.li, %._crit_edge406.us.us ], [ 1, %.preheader385.us.us.preheader ] ; 2 uses
  %i.jp = add i16 %.0105407.us.us, %.sroa.15.0.extract.trunc ; 3 uses
  %i.jq = sext i16 %i.jp to i32
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge404.us.us, %.preheader385.us.us
  %indvars.iv433 = phi i32 [ %indvars.iv.next434, %._crit_edge404.us.us ], [ 1, %.preheader385.us.us ] ; 3 uses
  %i.jr = trunc nuw nsw i32 %indvars.iv433 to i16
  %i.js = add i16 %i.jr, %.sroa.8.0.extract.trunc ; 3 uses
  %i.jt = sext i16 %i.js to i32
  br label %bb.w

bb.w:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us, %.preheader.us.us
  %indvars.iv429 = phi i32 [ %indvars.iv.next430, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us ], [ 1, %.preheader.us.us ] ; 3 uses
  %i.ju = trunc nuw nsw i32 %indvars.iv429 to i16
  %i.jv = add i16 %i.ju, %.sroa.0339.0.extract.trunc ; 3 uses
  %i.jw = load ptr, ptr %0, align 8, !tbaa !48    ; 9 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load i16, ptr %i.jx, align 4, !tbaa !59 ; 2 uses
  %.not.i238.us.us = icmp sgt i16 %i.jy, %i.jv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 14
  %i.ka = load i16, ptr %i.jz, align 2
  %.not6.i239.us.us = icmp slt i16 %i.ka, %i.jv
  %or.cond.i240.us.us = select i1 %.not.i238.us.us, i1 true, i1 %.not6.i239.us.us
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 10
  %i.kc = load i16, ptr %i.kb, align 2            ; 2 uses
  %.not7.i241.us.us = icmp sgt i16 %i.kc, %i.js
  %or.cond12.i242.us.us = select i1 %or.cond.i240.us.us, i1 true, i1 %.not7.i241.us.us
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.ke = load i16, ptr %i.kd, align 4
  %.not8.i243.us.us = icmp slt i16 %i.ke, %i.js
  %or.cond14.i244.us.us = select i1 %or.cond12.i242.us.us, i1 true, i1 %.not8.i243.us.us
  br i1 %or.cond14.i244.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %i.kg = load i16, ptr %i.kf, align 4, !tbaa !55 ; 2 uses
  %.not9.i245.us.us = icmp slt i16 %i.jp, %i.kg
  br i1 %.not9.i245.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us: ; preds = %bb.x
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jw, i64 18
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !67
  %.not365.us.us = icmp sgt i16 %i.jp, %i.ki
  br i1 %.not365.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us, label %bb.y

bb.y:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us
  %i.kj = sext i16 %i.kg to i32
  %i.kk = sub nsw i32 %i.jq, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  %i.km = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !56
  %i.ko = mul nsw i32 %i.kk, %i.kn
  %i.kp = load i32, ptr %i.kl, align 4, !tbaa !57
  %i.kq = sext i16 %i.kc to i32
  %i.kr = sub nsw i32 %i.jt, %i.kq
  %i.ks = add i32 %i.kr, %i.ko
  %i.kt = mul i32 %i.ks, %i.kp
  %i.ku = sext i16 %i.jv to i32
  %i.kv = sext i16 %i.jy to i32
  %i.kw = sub nsw i32 %i.ku, %i.kv
  %i.kx = add nsw i32 %i.kw, %i.kt
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !65
  %i.la = zext i32 %i.kx to i64                   ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.la ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !36
  %i.ld = or i8 %i.lc, 6
  store i8 %i.ld, ptr %i.lb, align 1, !tbaa !36
  %i.le = load ptr, ptr %0, align 8, !tbaa !48
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !62
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.la
  store i32 126, ptr %i.lh, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us: ; preds = %bb.y, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us, %bb.x, %bb.w
  %indvars.iv.next430 = add nuw nsw i32 %indvars.iv429, 1
  %exitcond432.not = icmp eq i32 %indvars.iv429, %i.jn
  br i1 %exitcond432.not, label %._crit_edge404.us.us, label %bb.w, !llvm.loop !153

._crit_edge404.us.us:                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us
  %indvars.iv.next434 = add nuw nsw i32 %indvars.iv433, 1
  %exitcond436.not = icmp eq i32 %indvars.iv433, %i.jo
  br i1 %exitcond436.not, label %._crit_edge406.us.us, label %.preheader.us.us, !llvm.loop !154

._crit_edge406.us.us:                             ; preds = %._crit_edge404.us.us
  %i.li = add i16 %.0105407.us.us, 1              ; 2 uses
  %i.lj = sext i16 %i.li to i32
  %i.lk = icmp sgt i32 %i.jj, %i.lj
  br i1 %i.lk, label %.preheader385.us.us, label %._crit_edge408, !llvm.loop !155

._crit_edge408:                                   ; preds = %._crit_edge406.us.us, %.preheader389.lr.ph.thread478, %.preheader390.thread, %.preheader388, %.preheader386
  ret void
}

declare noundef zeroext i1 @_ZN16GenerateNotifier8addEventE13GenNotifyTypeN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i48) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN10DungeonGen16findPlaceForDoorERN4core8vector3dIsEES3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 150
  %i.g = load ptr, ptr %0, align 8, !tbaa !48     ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i16, ptr %i.r, align 4              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 2 uses
  %.pre = load i16, ptr %i.a, align 4, !tbaa !15
  %.pre462 = load i16, ptr %i.b, align 2, !tbaa !15
  %.pre463 = load i16, ptr %i.c, align 2, !tbaa !16
  %.pre464 = load i16, ptr %i.d, align 4, !tbaa !16
  %.pre465 = load i16, ptr %i.e, align 8, !tbaa !17
  %.pre466 = load i16, ptr %i.f, align 2, !tbaa !17
  %i.v = load i8, ptr %i.u, align 2, !range !50   ; 2 uses
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = trunc nuw i8 %i.v to i1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.ad
  %i.y = phi i16 [ %.pre466, %bb.a ], [ %i.ne, %bb.ad ] ; 2 uses
  %i.z = phi i16 [ %.pre465, %bb.a ], [ %i.nf, %bb.ad ] ; 3 uses
  %i.aa = phi i16 [ %.pre464, %bb.a ], [ %i.ng, %bb.ad ] ; 2 uses
  %i.ab = phi i16 [ %.pre463, %bb.a ], [ %i.nh, %bb.ad ] ; 3 uses
  %i.ac = phi i16 [ %.pre462, %bb.a ], [ %i.ni, %bb.ad ] ; 2 uses
  %i.ad = phi i16 [ %.pre, %bb.a ], [ %i.nj, %bb.ad ] ; 3 uses
  %.017446 = phi i32 [ 0, %bb.a ], [ %i.nk, %bb.ad ] ; 2 uses
  %i.ae = add i16 %i.ac, %i.ad                    ; 12 uses
  %i.af = add i16 %i.aa, %i.ab                    ; 13 uses
  %i.ag = add i16 %i.y, %i.z                      ; 12 uses
  %i.ah = add i16 %i.af, 1                        ; 5 uses
  %i.ai = load i16, ptr %i.h, align 4, !tbaa !59  ; 8 uses
  %.not.i = icmp sgt i16 %i.ai, %i.ae
  %i.aj = load i16, ptr %i.i, align 2
  %.not6.i = icmp slt i16 %i.aj, %i.ae
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not6.i
  %i.ak = load i16, ptr %i.j, align 2             ; 15 uses
  %.not7.i = icmp sgt i16 %i.ak, %i.af
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %.not7.i
  %i.al = load i16, ptr %i.k, align 4             ; 8 uses
  %.not8.i = icmp slt i16 %i.al, %i.af
  %or.cond14.i = select i1 %or.cond12.i, i1 true, i1 %.not8.i
  br i1 %or.cond14.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load i16, ptr %i.l, align 4, !tbaa !55  ; 8 uses
  %.not9.i = icmp slt i16 %i.ag, %i.am
  br i1 %.not9.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit: ; preds = %bb.c
  %i.an = load i16, ptr %i.m, align 2, !tbaa !67
  %.not411 = icmp sgt i16 %i.ag, %i.an
  br i1 %.not411, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %.not7.i36 = icmp sgt i16 %i.ak, %i.ah
  %.not8.i38 = icmp slt i16 %i.al, %i.ah
  %or.cond14.i39 = select i1 %.not7.i36, i1 true, i1 %.not8.i38
  %i.ao = and i32 %.017446, 3
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond = or i1 %or.cond14.i39, %i.ap
  br i1 %or.cond, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.g

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread: ; preds = %bb.d, %bb.b, %bb.c, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %.pre.i.i = load i32, ptr %i.t, align 4, !tbaa !49 ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.aq = mul i32 %.pre.i.i, 1103515245
  %i.ar = add i32 %i.aq, 12345                    ; 3 uses
  %i.as = sdiv i32 %i.ar, 65536
  %i.at = and i32 %i.as, 3
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %i.av = phi i32 [ %i.ba, %.preheader.i.i ], [ %i.ar, %bb.e ]
  %.0.i.i = phi i32 [ %i.aw, %.preheader.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.aw = add nuw nsw i32 %.0.i.i, 1
  %i.ax = mul i32 %i.av, 1103515245
  %i.ay = add i32 %i.ax, 12345                    ; 2 uses
  %i.az = mul i32 %i.ay, 1103515245
  %i.ba = add i32 %i.az, 12345                    ; 3 uses
  %i.bb = insertelement <2 x i32> poison, i32 %i.ay, i64 0
  %i.bc = insertelement <2 x i32> %i.bb, i32 %i.ba, i64 1
  %i.bd = sdiv <2 x i32> %i.bc, splat (i32 65536)
  %i.be = trunc nsw <2 x i32> %i.bd to <2 x i16>
  %i.bf = and <2 x i16> %i.be, splat (i16 32767)
  %i.bg = urem <2 x i16> %i.bf, splat (i16 3)
  %i.bh = add nsw <2 x i16> %i.bg, splat (i16 -1) ; 2 uses
  %i.bi = icmp eq <2 x i16> %i.bh, zeroinitializer ; 2 uses
  %3 = extractelement <2 x i1> %i.bi, i64 0
  %4 = extractelement <2 x i1> %i.bi, i64 1
  %or.cond.i.i = select i1 %4, i1 true, i1 %3
  %i.bj = icmp samesign ult i32 %.0.i.i, 9
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.bj, i1 false
  br i1 %or.cond5.i.i, label %.preheader.i.i, label %.critedge.loopexit.i.i, !llvm.loop !0

bb.f:                                             ; preds = %bb.e, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.bk = phi i32 [ %i.ar, %bb.e ], [ %.pre.i.i, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread ]
  %i.bl = mul i32 %i.bk, 1103515245
  %i.bm = add i32 %i.bl, 12345                    ; 2 uses
  %i.bn = mul i32 %i.bm, 1103515245
  %i.bo = add i32 %i.bn, 12345                    ; 2 uses
  store i32 %i.bo, ptr %i.t, align 4, !tbaa !49
  %i.bp = insertelement <2 x i32> poison, i32 %i.bo, i64 0
  %i.bq = insertelement <2 x i32> %i.bp, i32 %i.bm, i64 1
  %i.br = sdiv <2 x i32> %i.bq, splat (i32 65536)
  %i.bs = and <2 x i32> %i.br, splat (i32 1)
  %i.bt = icmp eq <2 x i32> %i.bs, zeroinitializer ; 2 uses
  %i.bu = extractelement <2 x i1> %i.bt, i64 0
  %spec.select.i.i = select i1 %i.bu, i16 1, i16 -1 ; 2 uses
  %i.bv = extractelement <2 x i1> %i.bt, i64 1    ; 2 uses
  %.spec.select.i.i = select i1 %i.bv, i16 0, i16 %spec.select.i.i
  %spec.select..i.i = select i1 %i.bv, i16 %spec.select.i.i, i16 0
  %i.bw = insertelement <2 x i16> poison, i16 %.spec.select.i.i, i64 0
  %i.bx = insertelement <2 x i16> %i.bw, i16 %spec.select..i.i, i64 1
  br label %_ZN10DungeonGen12randomizeDirEv.exit

.critedge.loopexit.i.i:                           ; preds = %.preheader.i.i
  store i32 %i.ba, ptr %i.t, align 4, !tbaa !49
  br label %_ZN10DungeonGen12randomizeDirEv.exit

_ZN10DungeonGen12randomizeDirEv.exit:             ; preds = %bb.f, %.critedge.loopexit.i.i
  %i.by = phi <2 x i16> [ %i.bh, %.critedge.loopexit.i.i ], [ %i.bx, %bb.f ] ; 2 uses
  %i.bz = extractelement <2 x i16> %i.by, i64 0   ; 2 uses
  %.sroa.13.0.insert.ext.i.i = zext i16 %i.bz to i48
  %.sroa.13.0.insert.shift.i.i = shl nuw i48 %.sroa.13.0.insert.ext.i.i, 32
  %i.ca = extractelement <2 x i16> %i.by, i64 1   ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.ca to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.13.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %i.b, align 2, !tbaa !29
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.cb = sext i16 %i.ag to i32
  %i.cc = sext i16 %i.am to i32
  %i.cd = sub nsw i32 %i.cb, %i.cc
  %i.ce = load i32, ptr %i.o, align 4, !tbaa !56
  %i.cf = mul nsw i32 %i.ce, %i.cd
  %i.cg = load i32, ptr %i.n, align 4, !tbaa !57
  %i.ch = sext i16 %i.af to i32
  %i.ci = sext i16 %i.ak to i32
  %i.cj = sub nsw i32 %i.ch, %i.ci
  %i.ck = add i32 %i.cj, %i.cf
  %i.cl = mul i32 %i.ck, %i.cg
  %i.cm = sext i16 %i.ae to i32
  %i.cn = sext i16 %i.ai to i32
  %i.co = sub nsw i32 %i.cm, %i.cn
  %i.cp = add nsw i32 %i.co, %i.cl
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.cr = sext i32 %i.cp to i64                   ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !36
  %i.cu = and i8 %i.ct, 1
  %.not.i44 = icmp eq i8 %i.cu, 0
  br i1 %.not.i44, label %bb.h, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

bb.h:                                             ; preds = %bb.g
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cr
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = trunc i32 %i.cx to i16
  br label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit: ; preds = %bb.g, %bb.h
  %.sroa.6.0.i = phi i16 [ %i.cy, %bb.h ], [ 127, %bb.g ]
  %i.cz = icmp eq i16 %.sroa.6.0.i, %i.s
  br i1 %i.cz, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit
  %i.da = sext i16 %i.ag to i32
  %i.db = sext i16 %i.am to i32
  %i.dc = sub nsw i32 %i.da, %i.db
  %i.dd = load i32, ptr %i.o, align 8, !tbaa !56
  %i.de = mul nsw i32 %i.dd, %i.dc
  %i.df = load i32, ptr %i.n, align 4, !tbaa !57
  %i.dg = sext i16 %i.ah to i32
  %i.dh = sext i16 %i.ak to i32
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = add i32 %i.di, %i.de
  %i.dk = mul i32 %i.dj, %i.df
  %i.dl = sext i16 %i.ae to i32
  %i.dm = sext i16 %i.ai to i32
  %i.dn = sub nsw i32 %i.dl, %i.dm
  %i.do = add nsw i32 %i.dn, %i.dk
  %i.dp = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.dq = sext i32 %i.do to i64                   ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !36
  %i.dt = and i8 %i.ds, 1
  %.not.i59 = icmp eq i8 %i.dt, 0
  br i1 %.not.i59, label %bb.j, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit60

bb.j:                                             ; preds = %bb.i
  %i.du = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dq
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = trunc i32 %i.dw to i16
  br label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit60

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit60: ; preds = %bb.i, %bb.j
  %.sroa.6.0.i58 = phi i16 [ %i.dx, %bb.j ], [ 127, %bb.i ]
  %i.dy = icmp eq i16 %.sroa.6.0.i58, %i.s
  br i1 %i.dy, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit60
  store i16 %i.ae, ptr %1, align 2, !tbaa !29
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.af, ptr %.sroa.20.0..sroa_idx, align 2, !tbaa !29
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ag, ptr %.sroa.32.0..sroa_idx, align 2, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 2 dereferenceable(6) %i.b, i64 6, i1 false), !tbaa.struct !66
  %i.dz = load i8, ptr %i.u, align 2, !tbaa !42, !range !50, !noundef !51
  %i.ea = trunc nuw i8 %i.dz to i1
  %.pre.i.i61 = load i32, ptr %i.t, align 4, !tbaa !49 ; 2 uses
  br i1 %i.ea, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eb = mul i32 %.pre.i.i61, 1103515245
  %i.ec = add i32 %i.eb, 12345                    ; 3 uses
  %i.ed = sdiv i32 %i.ec, 65536
  %i.ee = and i32 %i.ed, 3
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %.preheader.i.i72, label %bb.m

.preheader.i.i72:                                 ; preds = %bb.l, %.preheader.i.i72
  %i.eg = phi i32 [ %i.el, %.preheader.i.i72 ], [ %i.ec, %bb.l ]
  %.0.i.i73 = phi i32 [ %i.eh, %.preheader.i.i72 ], [ 0, %bb.l ] ; 2 uses
  %i.eh = add nuw nsw i32 %.0.i.i73, 1
  %i.ei = mul i32 %i.eg, 1103515245
  %i.ej = add i32 %i.ei, 12345                    ; 2 uses
  %i.ek = mul i32 %i.ej, 1103515245
  %i.el = add i32 %i.ek, 12345                    ; 3 uses
  %i.em = insertelement <2 x i32> poison, i32 %i.ej, i64 0
  %i.en = insertelement <2 x i32> %i.em, i32 %i.el, i64 1
  %i.eo = sdiv <2 x i32> %i.en, splat (i32 65536)
  %i.ep = trunc nsw <2 x i32> %i.eo to <2 x i16>
  %i.eq = and <2 x i16> %i.ep, splat (i16 32767)
  %i.er = urem <2 x i16> %i.eq, splat (i16 3)
  %i.es = add nsw <2 x i16> %i.er, splat (i16 -1) ; 2 uses
  %i.et = icmp eq <2 x i16> %i.es, zeroinitializer ; 2 uses
  %5 = extractelement <2 x i1> %i.et, i64 0
  %6 = extractelement <2 x i1> %i.et, i64 1
  %or.cond.i.i76 = select i1 %6, i1 true, i1 %5
  %i.eu = icmp samesign ult i32 %.0.i.i73, 9
  %or.cond5.i.i77 = select i1 %or.cond.i.i76, i1 %i.eu, i1 false
  br i1 %or.cond5.i.i77, label %.preheader.i.i72, label %.critedge.loopexit.i.i78, !llvm.loop !0

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ev = phi i32 [ %i.ec, %bb.l ], [ %.pre.i.i61, %bb.k ]
  %i.ew = mul i32 %i.ev, 1103515245
  %i.ex = add i32 %i.ew, 12345                    ; 2 uses
  %i.ey = mul i32 %i.ex, 1103515245
  %i.ez = add i32 %i.ey, 12345                    ; 2 uses
  store i32 %i.ez, ptr %i.t, align 4, !tbaa !49
  %i.fa = insertelement <2 x i32> poison, i32 %i.ez, i64 0
  %i.fb = insertelement <2 x i32> %i.fa, i32 %i.ex, i64 1
  %i.fc = sdiv <2 x i32> %i.fb, splat (i32 65536)
  %i.fd = and <2 x i32> %i.fc, splat (i32 1)
  %i.fe = icmp eq <2 x i32> %i.fd, zeroinitializer ; 2 uses
  %i.ff = extractelement <2 x i1> %i.fe, i64 0
  %spec.select.i.i63 = select i1 %i.ff, i16 1, i16 -1 ; 2 uses
  %i.fg = extractelement <2 x i1> %i.fe, i64 1    ; 2 uses
  %.spec.select.i.i64 = select i1 %i.fg, i16 0, i16 %spec.select.i.i63
  %spec.select..i.i65 = select i1 %i.fg, i16 %spec.select.i.i63, i16 0
  %i.fh = insertelement <2 x i16> poison, i16 %.spec.select.i.i64, i64 0
  %i.fi = insertelement <2 x i16> %i.fh, i16 %spec.select..i.i65, i64 1
  br label %bb.ae

.critedge.loopexit.i.i78:                         ; preds = %.preheader.i.i72
  store i32 %i.el, ptr %i.t, align 4, !tbaa !49
  br label %bb.ae

.critedge:                                        ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit60
  %i.fj = sext i16 %i.ag to i32
  %i.fk = sext i16 %i.am to i32
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = load i32, ptr %i.o, align 8, !tbaa !56
  %i.fn = mul nsw i32 %i.fm, %i.fl
  %i.fo = load i32, ptr %i.n, align 4, !tbaa !57
  %i.fp = sext i16 %i.af to i32
  %i.fq = sext i16 %i.ak to i32
  %i.fr = sub nsw i32 %i.fp, %i.fq
  %i.fs = add i32 %i.fr, %i.fn
  %i.ft = mul i32 %i.fs, %i.fo
  %i.fu = sext i16 %i.ae to i32
  %i.fv = sext i16 %i.ai to i32
  %i.fw = sub nsw i32 %i.fu, %i.fv
  %i.fx = add nsw i32 %i.fw, %i.ft
  %i.fy = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.fz = sext i32 %i.fx to i64                   ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !36
  %i.gc = and i8 %i.gb, 1
  %.not.i101 = icmp eq i8 %i.gc, 0
  br i1 %.not.i101, label %bb.n, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit102

bb.n:                                             ; preds = %.critedge
  %i.gd = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.fz
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = trunc i32 %i.gf to i16
  br label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit102

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit102: ; preds = %.critedge, %bb.n
  %.sroa.6.0.i100 = phi i16 [ %i.gg, %bb.n ], [ 127, %.critedge ]
  %i.gh = icmp eq i16 %.sroa.6.0.i100, %i.s
  br i1 %i.gh, label %bb.o, label %.critedge2

bb.o:                                             ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit102
  %i.gi = sext i16 %i.ag to i32
  %i.gj = sext i16 %i.am to i32
  %i.gk = sub nsw i32 %i.gi, %i.gj
  %i.gl = load i32, ptr %i.o, align 8, !tbaa !56
  %i.gm = mul nsw i32 %i.gl, %i.gk                ; 2 uses
  %i.gn = load i32, ptr %i.n, align 4, !tbaa !57  ; 2 uses
  %i.go = sext i16 %i.ah to i32
  %i.gp = sext i16 %i.ak to i32                   ; 2 uses
  %i.gq = sub nsw i32 %i.go, %i.gp
  %i.gr = add i32 %i.gq, %i.gm
  %i.gs = mul i32 %i.gr, %i.gn
  %i.gt = sext i16 %i.ae to i32
  %i.gu = sext i16 %i.ai to i32
  %i.gv = sub nsw i32 %i.gt, %i.gu                ; 2 uses
  %i.gw = add nsw i32 %i.gv, %i.gs
  %i.gx = load ptr, ptr %i.p, align 8, !tbaa !65  ; 2 uses
  %i.gy = sext i32 %i.gw to i64                   ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !36
  %i.hb = and i8 %i.ha, 1
  %.not.i124 = icmp eq i8 %i.hb, 0
  br i1 %.not.i124, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit125, label %.critedge2

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit125: ; preds = %bb.o
  %i.hc = load ptr, ptr %i.q, align 8, !tbaa !62  ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.gy
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = and i32 %i.he, 65535
  %i.hg = icmp eq i32 %i.hf, 126
  br i1 %i.hg, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit125
  %i.hh = add i16 %i.af, 2                        ; 3 uses
  %.not7.i.i140 = icmp sgt i16 %i.ak, %i.hh
  %.not8.i.i142 = icmp slt i16 %i.al, %i.hh
  %or.cond14.i.i143 = select i1 %.not7.i.i140, i1 true, i1 %.not8.i.i142
  br i1 %or.cond14.i.i143, label %.critedge2, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hi = sext i16 %i.hh to i32
  %i.hj = sub nsw i32 %i.hi, %i.gp
  %i.hk = add i32 %i.hj, %i.gm
  %i.hl = mul i32 %i.hk, %i.gn
  %i.hm = add nsw i32 %i.gv, %i.hl
  %i.hn = sext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.gx, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !36
  %i.hq = and i8 %i.hp, 1
  %.not.i147 = icmp eq i8 %i.hq, 0
  br i1 %.not.i147, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit148, label %.critedge2

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit148: ; preds = %bb.q
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.hn
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = and i32 %i.hs, 65535
  %i.hu = icmp eq i32 %i.ht, 126
  %spec.select = select i1 %i.hu, i16 %i.ah, i16 %i.af
  br label %.critedge2

.critedge2:                                       ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit148, %bb.q, %bb.p, %bb.o, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit125, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit102
  %.sroa.20.0 = phi i16 [ %i.af, %bb.o ], [ %spec.select, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit148 ], [ %i.af, %bb.p ], [ %i.af, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit125 ], [ %i.af, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit102 ], [ %i.af, %bb.q ] ; 12 uses
  %i.hv = add i16 %.sroa.20.0, 1                  ; 3 uses
  %.not7.i.i163 = icmp sgt i16 %i.ak, %i.hv
  %.not8.i.i165 = icmp slt i16 %i.al, %i.hv
  %or.cond14.i.i166 = select i1 %.not7.i.i163, i1 true, i1 %.not8.i.i165
  br i1 %or.cond14.i.i166, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit171, label %bb.r

bb.r:                                             ; preds = %.critedge2
  %i.hw = sext i16 %i.ag to i32
  %i.hx = sext i16 %i.am to i32
  %i.hy = sub nsw i32 %i.hw, %i.hx
  %i.hz = load i32, ptr %i.o, align 8, !tbaa !56
  %i.ia = mul nsw i32 %i.hz, %i.hy
  %i.ib = load i32, ptr %i.n, align 4, !tbaa !57
  %i.ic = sext i16 %i.hv to i32
  %i.id = sext i16 %i.ak to i32
  %i.ie = sub nsw i32 %i.ic, %i.id
  %i.if = add i32 %i.ie, %i.ia
  %i.ig = mul i32 %i.if, %i.ib
  %i.ih = sext i16 %i.ae to i32
  %i.ii = sext i16 %i.ai to i32
  %i.ij = sub nsw i32 %i.ih, %i.ii
  %i.ik = add nsw i32 %i.ij, %i.ig
  %i.il = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.im = sext i32 %i.ik to i64                   ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !36
  %i.ip = and i8 %i.io, 1
  %.not.i170 = icmp eq i8 %i.ip, 0
  br i1 %.not.i170, label %bb.s, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit171

bb.s:                                             ; preds = %bb.r
  %i.iq = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.im
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = trunc i32 %i.is to i16
  br label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit171

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit171: ; preds = %.critedge2, %bb.r, %bb.s
  %.sroa.6.0.i169 = phi i16 [ %i.it, %bb.s ], [ 127, %.critedge2 ], [ 127, %bb.r ]
  %i.iu = icmp eq i16 %.sroa.6.0.i169, %i.s
  br i1 %i.iu, label %bb.t, label %.critedge4

bb.t:                                             ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit171
  %.not7.i.i186 = icmp sgt i16 %i.ak, %.sroa.20.0
  %.not8.i.i188 = icmp slt i16 %i.al, %.sroa.20.0
  %or.cond14.i.i189 = select i1 %.not7.i.i186, i1 true, i1 %.not8.i.i188
  br i1 %or.cond14.i.i189, label %.critedge4, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.iv = sext i16 %i.ag to i32
  %i.iw = sext i16 %i.am to i32
  %i.ix = sub nsw i32 %i.iv, %i.iw
  %i.iy = load i32, ptr %i.o, align 8, !tbaa !56
  %i.iz = mul nsw i32 %i.iy, %i.ix                ; 2 uses
  %i.ja = load i32, ptr %i.n, align 4, !tbaa !57  ; 2 uses
  %i.jb = sext i16 %.sroa.20.0 to i32
  %i.jc = sext i16 %i.ak to i32                   ; 2 uses
  %i.jd = sub nsw i32 %i.jb, %i.jc
  %i.je = add i32 %i.jd, %i.iz
  %i.jf = mul i32 %i.je, %i.ja
  %i.jg = sext i16 %i.ae to i32
  %i.jh = sext i16 %i.ai to i32
  %i.ji = sub nsw i32 %i.jg, %i.jh                ; 2 uses
  %i.jj = add nsw i32 %i.ji, %i.jf
  %i.jk = load ptr, ptr %i.p, align 8, !tbaa !65  ; 2 uses
  %i.jl = sext i32 %i.jj to i64                   ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jk, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !36
  %i.jo = and i8 %i.jn, 1
  %.not.i193 = icmp eq i8 %i.jo, 0
  br i1 %.not.i193, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit194, label %.critedge4

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit194: ; preds = %bb.u
  %i.jp = load ptr, ptr %i.q, align 8, !tbaa !62  ; 2 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jl
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = and i32 %i.jr, 65535
  %i.jt = icmp eq i32 %i.js, 126
  br i1 %i.jt, label %bb.v, label %.critedge4

bb.v:                                             ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit194
  %i.ju = add i16 %.sroa.20.0, -1                 ; 4 uses
  %.not7.i.i209 = icmp sgt i16 %i.ak, %i.ju
  %.not8.i.i211 = icmp slt i16 %i.al, %i.ju
  %or.cond14.i.i212 = select i1 %.not7.i.i209, i1 true, i1 %.not8.i.i211
  br i1 %or.cond14.i.i212, label %.critedge4, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jv = sext i16 %i.ju to i32
  %i.jw = sub nsw i32 %i.jv, %i.jc
  %i.jx = add i32 %i.jw, %i.iz
  %i.jy = mul i32 %i.jx, %i.ja
  %i.jz = add nsw i32 %i.ji, %i.jy
  %i.ka = sext i32 %i.jz to i64                   ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.jk, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !36
  %i.kd = and i8 %i.kc, 1
  %.not.i216 = icmp eq i8 %i.kd, 0
  br i1 %.not.i216, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit217, label %.critedge4

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit217: ; preds = %bb.w
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.ka
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = and i32 %i.kf, 65535
  %i.kh = icmp eq i32 %i.kg, 126
  %spec.select410 = select i1 %i.kh, i16 %i.ju, i16 %.sroa.20.0
  br label %.critedge4

.critedge4:                                       ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit217, %bb.w, %bb.v, %bb.u, %bb.t, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit194, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit171
  %.sroa.20.1 = phi i16 [ %.sroa.20.0, %bb.v ], [ %spec.select410, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit217 ], [ %.sroa.20.0, %bb.w ], [ %.sroa.20.0, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit194 ], [ %.sroa.20.0, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit171 ], [ %.sroa.20.0, %bb.t ], [ %.sroa.20.0, %bb.u ] ; 6 uses
  %.not7.i.i225 = icmp sgt i16 %i.ak, %.sroa.20.1
  %.not8.i.i227 = icmp slt i16 %i.al, %.sroa.20.1
  %or.cond14.i.i228 = select i1 %.not7.i.i225, i1 true, i1 %.not8.i.i227
  br i1 %or.cond14.i.i228, label %.critedge6, label %bb.x

bb.x:                                             ; preds = %.critedge4
  %i.ki = sext i16 %i.ag to i32
  %i.kj = sext i16 %i.am to i32
  %i.kk = sub nsw i32 %i.ki, %i.kj
  %i.kl = load i32, ptr %i.o, align 8, !tbaa !56
  %i.km = mul nsw i32 %i.kl, %i.kk                ; 2 uses
  %i.kn = load i32, ptr %i.n, align 4, !tbaa !57  ; 2 uses
  %i.ko = sext i16 %.sroa.20.1 to i32
  %i.kp = sext i16 %i.ak to i32                   ; 2 uses
  %i.kq = sub nsw i32 %i.ko, %i.kp
  %i.kr = add i32 %i.kq, %i.km
  %i.ks = mul i32 %i.kr, %i.kn
  %i.kt = sext i16 %i.ae to i32
  %i.ku = sext i16 %i.ai to i32
  %i.kv = sub nsw i32 %i.kt, %i.ku                ; 2 uses
  %i.kw = add nsw i32 %i.kv, %i.ks
  %i.kx = load ptr, ptr %i.p, align 8, !tbaa !65  ; 2 uses
  %i.ky = sext i32 %i.kw to i64                   ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !36
  %i.lb = and i8 %i.la, 1
  %.not.i232 = icmp eq i8 %i.lb, 0
  br i1 %.not.i232, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit233, label %.critedge6

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit233: ; preds = %bb.x
  %i.lc = load ptr, ptr %i.q, align 8, !tbaa !62  ; 2 uses
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.ky
  %i.le = load i32, ptr %i.ld, align 4
  %i.lf = and i32 %i.le, 65535
  %.not = icmp eq i32 %i.lf, 126
  br i1 %.not, label %bb.y, label %.critedge6

bb.y:                                             ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit233
  %i.lg = add i16 %.sroa.20.1, 1                  ; 3 uses
  %.not7.i.i248 = icmp sgt i16 %i.ak, %i.lg
  %.not8.i.i250 = icmp slt i16 %i.al, %i.lg
  %or.cond14.i.i251 = select i1 %.not7.i.i248, i1 true, i1 %.not8.i.i250
  br i1 %or.cond14.i.i251, label %.critedge6, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lh = sext i16 %i.lg to i32
  %i.li = sub nsw i32 %i.lh, %i.kp
  %i.lj = add i32 %i.li, %i.km
  %i.lk = mul i32 %i.lj, %i.kn
  %i.ll = add nsw i32 %i.kv, %i.lk
  %i.lm = sext i32 %i.ll to i64                   ; 2 uses
  %i.ln = getelementptr inbounds i8, ptr %i.kx, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !36
  %i.lp = and i8 %i.lo, 1
  %.not.i255 = icmp eq i8 %i.lp, 0
  br i1 %.not.i255, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit256, label %.critedge6

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit256: ; preds = %bb.z
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.lm
  %i.lr = load i32, ptr %i.lq, align 4
  %i.ls = and i32 %i.lr, 65535
  %.not20 = icmp eq i32 %i.ls, 126
  br i1 %.not20, label %bb.ac, label %.critedge6

.critedge6:                                       ; preds = %bb.z, %bb.y, %bb.x, %.critedge4, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit233, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit256
  %.pre.i.i257 = load i32, ptr %i.t, align 4, !tbaa !49 ; 2 uses
  br i1 %i.w, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge6
  %i.lt = mul i32 %.pre.i.i257, 1103515245
  %i.lu = add i32 %i.lt, 12345                    ; 3 uses
  %i.lv = sdiv i32 %i.lu, 65536
  %i.lw = and i32 %i.lv, 3
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %.preheader.i.i268, label %bb.ab

.preheader.i.i268:                                ; preds = %bb.aa, %.preheader.i.i268
  %i.ly = phi i32 [ %i.md, %.preheader.i.i268 ], [ %i.lu, %bb.aa ]
  %.0.i.i269 = phi i32 [ %i.lz, %.preheader.i.i268 ], [ 0, %bb.aa ] ; 2 uses
  %i.lz = add nuw nsw i32 %.0.i.i269, 1
  %i.ma = mul i32 %i.ly, 1103515245
  %i.mb = add i32 %i.ma, 12345                    ; 2 uses
  %i.mc = mul i32 %i.mb, 1103515245
  %i.md = add i32 %i.mc, 12345                    ; 3 uses
  %i.me = insertelement <2 x i32> poison, i32 %i.mb, i64 0
  %i.mf = insertelement <2 x i32> %i.me, i32 %i.md, i64 1
  %i.mg = sdiv <2 x i32> %i.mf, splat (i32 65536)
  %i.mh = trunc nsw <2 x i32> %i.mg to <2 x i16>
  %i.mi = and <2 x i16> %i.mh, splat (i16 32767)
  %i.mj = urem <2 x i16> %i.mi, splat (i16 3)
  %i.mk = add nsw <2 x i16> %i.mj, splat (i16 -1) ; 2 uses
  %i.ml = icmp eq <2 x i16> %i.mk, zeroinitializer ; 2 uses
  %7 = extractelement <2 x i1> %i.ml, i64 0
  %8 = extractelement <2 x i1> %i.ml, i64 1
  %or.cond.i.i272 = select i1 %8, i1 true, i1 %7
  %i.mm = icmp samesign ult i32 %.0.i.i269, 9
  %or.cond5.i.i273 = select i1 %or.cond.i.i272, i1 %i.mm, i1 false
  br i1 %or.cond5.i.i273, label %.preheader.i.i268, label %.critedge.loopexit.i.i274, !llvm.loop !0

bb.ab:                                            ; preds = %bb.aa, %.critedge6
  %i.mn = phi i32 [ %i.lu, %bb.aa ], [ %.pre.i.i257, %.critedge6 ]
  %i.mo = mul i32 %i.mn, 1103515245
  %i.mp = add i32 %i.mo, 12345                    ; 2 uses
  %i.mq = mul i32 %i.mp, 1103515245
  %i.mr = add i32 %i.mq, 12345                    ; 2 uses
  store i32 %i.mr, ptr %i.t, align 4, !tbaa !49
  %i.ms = insertelement <2 x i32> poison, i32 %i.mr, i64 0
  %i.mt = insertelement <2 x i32> %i.ms, i32 %i.mp, i64 1
  %i.mu = sdiv <2 x i32> %i.mt, splat (i32 65536)
  %i.mv = and <2 x i32> %i.mu, splat (i32 1)
  %i.mw = icmp eq <2 x i32> %i.mv, zeroinitializer ; 2 uses
  %i.mx = extractelement <2 x i1> %i.mw, i64 0
  %spec.select.i.i259 = select i1 %i.mx, i16 1, i16 -1 ; 2 uses
  %i.my = extractelement <2 x i1> %i.mw, i64 1    ; 2 uses
  %.spec.select.i.i260 = select i1 %i.my, i16 0, i16 %spec.select.i.i259
  %spec.select..i.i261 = select i1 %i.my, i16 %spec.select.i.i259, i16 0
  %i.mz = insertelement <2 x i16> poison, i16 %.spec.select.i.i260, i64 0
  %i.na = insertelement <2 x i16> %i.mz, i16 %spec.select..i.i261, i64 1
  br label %_ZN10DungeonGen12randomizeDirEv.exit275

.critedge.loopexit.i.i274:                        ; preds = %.preheader.i.i268
  store i32 %i.md, ptr %i.t, align 4, !tbaa !49
  br label %_ZN10DungeonGen12randomizeDirEv.exit275

_ZN10DungeonGen12randomizeDirEv.exit275:          ; preds = %bb.ab, %.critedge.loopexit.i.i274
  %i.nb = phi <2 x i16> [ %i.mk, %.critedge.loopexit.i.i274 ], [ %i.na, %bb.ab ] ; 2 uses
  %i.nc = extractelement <2 x i16> %i.nb, i64 0   ; 2 uses
  %.sroa.13.0.insert.ext.i.i264 = zext i16 %i.nc to i48
  %.sroa.13.0.insert.shift.i.i265 = shl nuw i48 %.sroa.13.0.insert.ext.i.i264, 32
  %i.nd = extractelement <2 x i16> %i.nb, i64 1   ; 2 uses
  %.sroa.0.0.insert.ext.i.i266 = zext i16 %i.nd to i48
  %.sroa.0.0.insert.insert.i.i267 = or disjoint i48 %.sroa.13.0.insert.shift.i.i265, %.sroa.0.0.insert.ext.i.i266
  store i48 %.sroa.0.0.insert.insert.i.i267, ptr %i.b, align 2, !tbaa !29
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit256
  store i16 %i.ae, ptr %i.a, align 4, !tbaa !29
  store i16 %.sroa.20.1, ptr %i.c, align 2, !tbaa !29
  store i16 %i.ag, ptr %i.e, align 8, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN10DungeonGen12randomizeDirEv.exit, %_ZN10DungeonGen12randomizeDirEv.exit275, %bb.ac
  %i.ne = phi i16 [ %i.bz, %_ZN10DungeonGen12randomizeDirEv.exit ], [ %i.nc, %_ZN10DungeonGen12randomizeDirEv.exit275 ], [ %i.y, %bb.ac ]
  %i.nf = phi i16 [ %i.z, %_ZN10DungeonGen12randomizeDirEv.exit ], [ %i.z, %_ZN10DungeonGen12randomizeDirEv.exit275 ], [ %i.ag, %bb.ac ]
  %i.ng = phi i16 [ 0, %_ZN10DungeonGen12randomizeDirEv.exit ], [ 0, %_ZN10DungeonGen12randomizeDirEv.exit275 ], [ %i.aa, %bb.ac ]
  %i.nh = phi i16 [ %i.ab, %_ZN10DungeonGen12randomizeDirEv.exit ], [ %i.ab, %_ZN10DungeonGen12randomizeDirEv.exit275 ], [ %.sroa.20.1, %bb.ac ]
  %i.ni = phi i16 [ %i.ca, %_ZN10DungeonGen12randomizeDirEv.exit ], [ %i.nd, %_ZN10DungeonGen12randomizeDirEv.exit275 ], [ %i.ac, %bb.ac ]
  %i.nj = phi i16 [ %i.ad, %_ZN10DungeonGen12randomizeDirEv.exit ], [ %i.ad, %_ZN10DungeonGen12randomizeDirEv.exit275 ], [ %i.ae, %bb.ac ]
  %i.nk = add nuw nsw i32 %.017446, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.nk, 100
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !156

bb.ae:                                            ; preds = %bb.m, %.critedge.loopexit.i.i78
  %i.nl = phi <2 x i16> [ %i.es, %.critedge.loopexit.i.i78 ], [ %i.fi, %bb.m ] ; 2 uses
  %i.nm = extractelement <2 x i16> %i.nl, i64 0
  %.sroa.13.0.insert.ext.i.i68 = zext i16 %i.nm to i48
  %.sroa.13.0.insert.shift.i.i69 = shl nuw i48 %.sroa.13.0.insert.ext.i.i68, 32
  %i.nn = extractelement <2 x i16> %i.nl, i64 1
  %.sroa.0.0.insert.ext.i.i70 = zext i16 %i.nn to i48
  %.sroa.0.0.insert.insert.i.i71 = or disjoint i48 %.sroa.13.0.insert.shift.i.i69, %.sroa.0.0.insert.ext.i.i70
  store i48 %.sroa.0.0.insert.insert.i.i71, ptr %i.b, align 2, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %bb.ae
  %i.no = phi i1 [ true, %bb.ae ], [ false, %bb.ad ]
  ret i1 %i.no
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10DungeonGen8makeDoorEN4core8vector3dIsEES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i48 %1, i48 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.0.0.copyload.i = load i48, ptr %i.a, align 4, !tbaa !29
  tail call void @_ZN10DungeonGen8makeFillEN4core8vector3dIsEES2_h7MapNodeh(ptr noundef nonnull readonly align 8 dereferenceable(152) %0, i48 %1, i48 %.sroa.0.0.copyload.i, i8 noundef zeroext 0, i32 126, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10DungeonGen12makeCorridorEN4core8vector3dIsEES2_RS2_S3_(ptr noundef nonnull align 8 dereferenceable(152) %0, i48 %1, i48 %2, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %3, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 6 uses
  %.sroa.0.0.copyload.i = load i48, ptr %i.a, align 4, !tbaa !29
  tail call void @_ZN10DungeonGen8makeFillEN4core8vector3dIsEES2_h7MapNodeh(ptr noundef nonnull readonly align 8 dereferenceable(152) %0, i48 %1, i48 %.sroa.0.0.copyload.i, i8 noundef zeroext 0, i32 126, i8 noundef zeroext 2)
  %.sroa.0335.0.extract.trunc = trunc i48 %1 to i16 ; 2 uses
  %.sroa.6336.0.extract.shift = lshr i48 %1, 16
  %.sroa.6336.0.extract.trunc = trunc i48 %.sroa.6336.0.extract.shift to i16 ; 2 uses
  %.sroa.8337.0.extract.shift = lshr i48 %1, 32
  %.sroa.8337.0.extract.trunc = trunc nuw i48 %.sroa.8337.0.extract.shift to i16 ; 2 uses
  %.sroa.0287.0.extract.trunc293 = trunc i48 %2 to i16 ; 2 uses
  %.sroa.15301.0.extract.shift302 = lshr i48 %2, 16
  %.sroa.15301.0.extract.trunc303 = trunc i48 %.sroa.15301.0.extract.shift302 to i16 ; 3 uses
  %.sroa.18.0.extract.shift316 = lshr i48 %2, 32
  %.sroa.18.0.extract.trunc317 = trunc nuw i48 %.sroa.18.0.extract.shift316 to i16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !44
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !45
  %i.h = zext i16 %i.g to i32
  %i.i = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.e, i32 noundef %i.h) ; 5 uses
  %i.j = load i16, ptr %i.c, align 2, !tbaa !44
  %i.k = zext i16 %i.j to i32
  %i.l = load i16, ptr %i.f, align 4, !tbaa !45
  %i.m = zext i16 %i.l to i32
  %i.n = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.k, i32 noundef %i.m) ; 2 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !49
  %i.p = mul i32 %i.o, 1103515245
  %i.q = add i32 %i.p, 12345                      ; 3 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !49
  %i.r = sdiv i32 %i.q, 65536
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  %i.u = icmp ugt i32 %i.n, 2
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = mul i32 %i.q, 1103515245
  %i.w = add i32 %i.v, 12345                      ; 2 uses
  store i32 %i.w, ptr %i.b, align 4, !tbaa !49
  %i.x = sdiv i32 %i.w, 65536
  %i.y = and i32 %i.x, 1
  %.not = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not, i16 -1, i16 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.085 = phi i16 [ %i.z, %bb.b ], [ 0, %bb.a ]
  %.not379 = icmp eq i32 %i.i, 0
  br i1 %.not379, label %._crit_edge, label %.lr.ph374

.lr.ph374:                                        ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ad = add i32 %i.i, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %bb.c
  %.sroa.0287.0.lcssa = phi i16 [ %.sroa.0287.0.extract.trunc293, %bb.c ], [ %.sroa.0287.1, %bb.t ]
  %.sroa.18.0.lcssa = phi i16 [ %.sroa.18.0.extract.trunc317, %bb.c ], [ %.sroa.18.1, %bb.t ]
  %.sroa.0335.0.lcssa = phi i16 [ %.sroa.0335.0.extract.trunc, %bb.c ], [ %.sroa.0335.1, %bb.t ]
  %.sroa.6336.0.lcssa = phi i16 [ %.sroa.6336.0.extract.trunc, %bb.c ], [ %.sroa.6336.1, %bb.t ]
  %.sroa.8337.0.lcssa = phi i16 [ %.sroa.8337.0.extract.trunc, %bb.c ], [ %.sroa.8337.1, %bb.t ]
  store i16 %.sroa.0335.0.lcssa, ptr %3, align 2, !tbaa !29
  %.sroa.6336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.sroa.6336.0.lcssa, ptr %.sroa.6336.0..sroa_idx, align 2, !tbaa !29
  %.sroa.8337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %.sroa.8337.0.lcssa, ptr %.sroa.8337.0..sroa_idx, align 2, !tbaa !29
  store i16 %.sroa.0287.0.lcssa, ptr %4, align 2, !tbaa !29
  %.sroa.15301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %.sroa.15301.0.extract.trunc303, ptr %.sroa.15301.0..sroa_idx, align 2, !tbaa !29
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %.sroa.18.0.lcssa, ptr %.sroa.18.0..sroa_idx, align 2, !tbaa !29
  ret void

bb.d:                                             ; preds = %.lr.ph374, %bb.t
  %.0373 = phi i32 [ %i.n, %.lr.ph374 ], [ %.2, %bb.t ] ; 2 uses
  %.082372 = phi i32 [ 0, %.lr.ph374 ], [ %.284, %bb.t ] ; 2 uses
  %.186371 = phi i16 [ %.085, %.lr.ph374 ], [ %.3, %bb.t ] ; 9 uses
  %.088368 = phi i32 [ 0, %.lr.ph374 ], [ %i.hc, %bb.t ] ; 3 uses
  %.sroa.8337.0367 = phi i16 [ %.sroa.8337.0.extract.trunc, %.lr.ph374 ], [ %.sroa.8337.1, %bb.t ] ; 3 uses
  %.sroa.6336.0366 = phi i16 [ %.sroa.6336.0.extract.trunc, %.lr.ph374 ], [ %.sroa.6336.1, %bb.t ] ; 2 uses
  %.sroa.0335.0365 = phi i16 [ %.sroa.0335.0.extract.trunc, %.lr.ph374 ], [ %.sroa.0335.1, %bb.t ] ; 3 uses
  %.sroa.18.0362 = phi i16 [ %.sroa.18.0.extract.trunc317, %.lr.ph374 ], [ %.sroa.18.1, %bb.t ] ; 11 uses
  %.sroa.0287.0359 = phi i16 [ %.sroa.0287.0.extract.trunc293, %.lr.ph374 ], [ %.sroa.0287.1, %bb.t ] ; 10 uses
  %i.af = add i16 %.sroa.0335.0365, %.sroa.0287.0359 ; 9 uses
  %i.ag = add i16 %.sroa.6336.0366, %.sroa.15301.0.extract.trunc303 ; 2 uses
  %i.ah = add i16 %.sroa.8337.0367, %.sroa.18.0362 ; 9 uses
  %.not93 = icmp eq i32 %.082372, 0
  %i.ai = select i1 %.not93, i16 0, i16 %.186371
  %spec.select = add i16 %i.ai, %i.ag             ; 9 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !48    ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.19.0.insert.ext280 = zext i16 %i.ah to i48
  %.sroa.19.0.insert.shift281 = shl nuw i48 %.sroa.19.0.insert.ext280, 32
  %.sroa.12.0.insert.ext268 = zext i16 %spec.select to i48
  %.sroa.12.0.insert.shift269 = shl nuw nsw i48 %.sroa.12.0.insert.ext268, 16
  %.sroa.0254.0.insert.ext261 = zext i16 %i.af to i48
  %i.al = or disjoint i48 %.sroa.12.0.insert.shift269, %.sroa.0254.0.insert.ext261
  %.sroa.0254.0.insert.insert263 = or disjoint i48 %i.al, %.sroa.19.0.insert.shift281 ; 2 uses
  %i.am = load i16, ptr %i.ak, align 4, !tbaa !59
  %.not.i = icmp sgt i16 %i.am, %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.ao = load i16, ptr %i.an, align 2
  %.not6.i = icmp slt i16 %i.ao, %i.af
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not6.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  %i.aq = load i16, ptr %i.ap, align 2            ; 2 uses
  %.not7.i = icmp sgt i16 %i.aq, %spec.select
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %.not7.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load i16, ptr %i.ar, align 4            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10DungeonGen8makeFillEN4core8vector3dIsEES2_h7MapNodeh:bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !48     ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i16, ptr %i.p, align 4, !tbaa !59   ; 2 uses
  %.not.i.us.us = icmp sgt i16 %i.q, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.s = load i16, ptr %i.r, align 2
  %.not6.i.us.us = icmp slt i16 %i.s, %i.n
  %or.cond.i.us.us = select i1 %.not.i.us.us, i1 true, i1 %.not6.i.us.us
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.u = load i16, ptr %i.t, align 2              ; 2 uses
  %.not7.i.us.us = icmp sgt i16 %i.u, %i.k
  %or.cond12.i.us.us = select i1 %or.cond.i.us.us, i1 true, i1 %.not7.i.us.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i16, ptr %i.v, align 4
  %.not8.i.us.us = icmp slt i16 %i.w, %i.k
  %or.cond14.i.us.us = select i1 %or.cond12.i.us.us, i1 true, i1 %.not8.i.us.us
  br i1 %or.cond14.i.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.y = load i16, ptr %i.x, align 4, !tbaa !55   ; 2 uses
  %.not9.i.us.us = icmp slt i16 %i.h, %i.y
  br i1 %.not9.i.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !67
  %.not27.us.us = icmp sgt i16 %i.h, %i.aa
  br i1 %.not27.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us, label %bb.d

bb.d:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us
  %i.ab = sext i16 %i.y to i32
  %i.ac = sub nsw i32 %i.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56
  %i.ag = mul nsw i32 %i.ac, %i.af
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !57
  %i.ai = sext i16 %i.u to i32
  %i.aj = sub nsw i32 %i.l, %i.ai
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = mul i32 %i.ak, %i.ah
  %i.am = sext i16 %i.n to i32
  %i.an = sext i16 %i.q to i32
  %i.ao = sub nsw i32 %i.am, %i.an
  %i.ap = add nsw i32 %i.ao, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !65
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !36  ; 2 uses
  %i.av = and i8 %i.au, %3
  %.not.us.us = icmp eq i8 %i.av, 0
  br i1 %.not.us.us, label %bb.e, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us

bb.e:                                             ; preds = %bb.d
  %i.aw = or i8 %i.au, %5
  store i8 %i.aw, ptr %i.at, align 1, !tbaa !36
  %i.ax = load ptr, ptr %0, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !62
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.as
  store i32 %4, ptr %i.ba, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us: ; preds = %bb.e, %bb.d, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !163

._crit_edge.us.us:                                ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us
  %indvars.iv.next39 = add nuw nsw i32 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i32 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge32.us.us, label %.preheader.us.us, !llvm.loop !164

._crit_edge32.us.us:                              ; preds = %._crit_edge.us.us
  %i.bb = add i16 %.033.us.us, 1                  ; 2 uses
  %i.bc = sext i16 %i.bb to i32
  %i.bd = icmp slt i32 %i.bc, %i.b
  br i1 %i.bd, label %.preheader29.us.us, label %._crit_edge34, !llvm.loop !165

._crit_edge34:                                    ; preds = %._crit_edge32.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10DungeonGen8makeHoleEN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i48 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.0.0.copyload = load i48, ptr %i.a, align 4, !tbaa !29
  tail call void @_ZN10DungeonGen8makeFillEN4core8vector3dIsEES2_h7MapNodeh(ptr noundef nonnull align 8 dereferenceable(152) %0, i48 %1, i48 %.sroa.0.0.copyload, i8 noundef zeroext 0, i32 126, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 4) i32 @_Z14dir_to_facedirN4core8vector3dIsEE(i48 %0) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %0 to i16  ; 2 uses
  %i.a = tail call i16 @llvm.abs.i16(i16 %.sroa.0.0.extract.trunc, i1 false)
  %i.b = zext i16 %i.a to i32
  %i.c = ashr i48 %0, 32
  %i.d = trunc nsw i48 %i.c to i32                ; 2 uses
  %i.e = tail call i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.f = icmp samesign ult i32 %i.e, %i.b
  %i.g = icmp slt i16 %.sroa.0.0.extract.trunc, 0
  %i.h = select i1 %i.g, i32 3, i32 1
  %i.i = icmp slt i32 %i.d, 0
  %i.j = select i1 %i.i, i32 2, i32 0
  %.0 = select i1 %i.f, i32 %i.h, i32 %i.j
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i48 @_Z7turn_xzN4core8vector3dIsEEi(i48 %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %0 to i16  ; 2 uses
  %.sroa.5.0.extract.shift = lshr i48 %0, 32      ; 2 uses
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = sub i16 0, %.sroa.0.0.extract.trunc
  %.sroa.7.0 = select i1 %i.a, i16 %i.b, i16 %.sroa.0.0.extract.trunc
  %.sroa.7.0.insert.ext = zext i16 %.sroa.7.0 to i48
  %.sroa.7.0.insert.shift = shl nuw i48 %.sroa.7.0.insert.ext, 32
  %.sroa.4.0.insert.ext = and i48 %0, 4294901760
  %.sroa.4.0.insert.insert = or disjoint i48 %.sroa.7.0.insert.shift, %.sroa.4.0.insert.ext
  %i.c = sub nsw i48 0, %.sroa.5.0.extract.shift
  %i.d = and i48 %i.c, 65535
  %.sroa.0.0.insert.ext = select i1 %i.a, i48 %.sroa.5.0.extract.shift, i48 %i.d
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(6) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !49
  %i.b = mul i32 %i.a, 1103515245
  %i.c = add i32 %i.b, 12345                      ; 2 uses
  store i32 %i.c, ptr %0, align 4, !tbaa !49
  %i.d = sdiv i32 %i.c, 65536
  %i.e = trunc nsw i32 %i.d to i16
  %.lhs.trunc.i = and i16 %i.e, 32767
  %i.f = urem i16 %.lhs.trunc.i, 3
  switch i16 %i.f, label %bb.c [
    i16 0, label %bb.e
    i16 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i48, ptr %1, align 2, !tbaa !29 ; 3 uses
  %.sroa.5.0.extract.shift.i = lshr i48 %.sroa.03.0.copyload, 32
  %.neg = mul i48 %.sroa.03.0.copyload, -4294967296
  %.sroa.4.0.insert.ext.i = and i48 %.sroa.03.0.copyload, 4294901760
  %.sroa.4.0.insert.insert.i = or disjoint i48 %.neg, %.sroa.4.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.4.0.insert.insert.i, %.sroa.5.0.extract.shift.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i48, ptr %1, align 2, !tbaa !29 ; 3 uses
  %.sroa.5.0.extract.shift.i12 = lshr i48 %.sroa.0.0.copyload, 32
  %.sroa.7.0.insert.ext.i13 = shl i48 %.sroa.0.0.copyload, 32
  %.sroa.4.0.insert.ext.i15 = and i48 %.sroa.0.0.copyload, 4294901760
  %.sroa.4.0.insert.insert.i16 = or disjoint i48 %.sroa.7.0.insert.ext.i13, %.sroa.4.0.insert.ext.i15
  %i.g = sub nsw i48 0, %.sroa.5.0.extract.shift.i12
  %i.h = and i48 %i.g, 65535
  %.sroa.0.0.insert.insert.i17 = or disjoint i48 %.sroa.4.0.insert.insert.i16, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i48 [ %.sroa.0.0.insert.insert.i17, %bb.c ], [ %.sroa.0.0.insert.insert.i, %bb.b ]
  store i48 %storemerge, ptr %1, align 2, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i48 0, -4294901760) i48 @_Z14rand_ortho_dirR12PseudoRandomb(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i1 noundef zeroext %1) local_unnamed_addr #8 {
bb.a:
  %.pre = load i32, ptr %0, align 4, !tbaa !49    ; 2 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul i32 %.pre, 1103515245
  %i.b = add i32 %i.a, 12345                      ; 3 uses
  %i.c = sdiv i32 %i.b, 65536
  %i.d = and i32 %i.c, 3
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b, %.preheader
  %i.f = phi i32 [ %i.k, %.preheader ], [ %i.b, %bb.b ]
  %.0 = phi i32 [ %i.g, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %i.g = add nuw nsw i32 %.0, 1
  %i.h = mul i32 %i.f, 1103515245
  %i.i = add i32 %i.h, 12345                      ; 2 uses
  %i.j = mul i32 %i.i, 1103515245
  %i.k = add i32 %i.j, 12345                      ; 3 uses
  %i.l = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %i.m = insertelement <2 x i32> %i.l, i32 %i.k, i64 1
  %i.n = sdiv <2 x i32> %i.m, splat (i32 65536)
  %i.o = trunc nsw <2 x i32> %i.n to <2 x i16>
  %i.p = and <2 x i16> %i.o, splat (i16 32767)
  %i.q = urem <2 x i16> %i.p, splat (i16 3)
  %i.r = add nsw <2 x i16> %i.q, splat (i16 -1)   ; 2 uses
  %i.s = icmp eq <2 x i16> %i.r, zeroinitializer  ; 2 uses
  %2 = extractelement <2 x i1> %i.s, i64 0
  %3 = extractelement <2 x i1> %i.s, i64 1
  %or.cond = select i1 %3, i1 true, i1 %2
  %i.t = icmp samesign ult i32 %.0, 9
  %or.cond5 = select i1 %or.cond, i1 %i.t, i1 false
  br i1 %or.cond5, label %.preheader, label %.critedge.loopexit, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = phi i32 [ %i.b, %bb.b ], [ %.pre, %bb.a ]
  %i.v = mul i32 %i.u, 1103515245
  %i.w = add i32 %i.v, 12345                      ; 2 uses
  %i.x = mul i32 %i.w, 1103515245
  %i.y = add i32 %i.x, 12345                      ; 2 uses
  store i32 %i.y, ptr %0, align 4, !tbaa !49
  %i.z = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %i.aa = insertelement <2 x i32> %i.z, i32 %i.w, i64 1
  %i.ab = sdiv <2 x i32> %i.aa, splat (i32 65536)
  %i.ac = and <2 x i32> %i.ab, splat (i32 1)
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer ; 2 uses
  %i.ae = extractelement <2 x i1> %i.ad, i64 0
  %spec.select = select i1 %i.ae, i16 1, i16 -1   ; 2 uses
  %i.af = extractelement <2 x i1> %i.ad, i64 1    ; 2 uses
  %.spec.select = select i1 %i.af, i16 0, i16 %spec.select
  %spec.select. = select i1 %i.af, i16 %spec.select, i16 0
  %i.ag = insertelement <2 x i16> poison, i16 %.spec.select, i64 0
  %i.ah = insertelement <2 x i16> %i.ag, i16 %spec.select., i64 1
  br label %.critedge

.critedge.loopexit:                               ; preds = %.preheader
  store i32 %i.k, ptr %0, align 4, !tbaa !49
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit
  %i.ai = phi <2 x i16> [ %i.r, %.critedge.loopexit ], [ %i.ah, %bb.c ] ; 2 uses
  %i.aj = extractelement <2 x i16> %i.ai, i64 0
  %.sroa.13.0.insert.ext = zext i16 %i.aj to i48
  %.sroa.13.0.insert.shift = shl nuw i48 %.sroa.13.0.insert.ext, 32
  %i.ak = extractelement <2 x i16> %i.ai, i64 1
  %.sroa.0.0.insert.ext = zext i16 %i.ak to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.13.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13PrngExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !32
  %i.d = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.f, ptr %i.a, align 8, !tbaa !39
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !38
  %i.i = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.i, ptr %i.c, align 8, !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !36
  store i8 %i.k, ptr %i.j, align 1, !tbaa !36
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #23
  unreachable

_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !35
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13PrngException, i64 16), ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !36
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13PrngExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !36
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21, !inline_history !70
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !70
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  ret ptr %i.b
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !36
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21, !inline_history !70
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !70
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
end_hunk_1

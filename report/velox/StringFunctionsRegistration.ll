inline.NumInlined: 89673
inline.NumDeleted: 14427
begin_hunk_0_@_ZL12utf8proc_mapPKhlPPhs:bb.a

bb.ax:                                            ; preds = %.lr.ph.i.i
  %i.fn = icmp eq i32 %i.fk, -1
  br i1 %i.fn, label %bb.ay, label %_ZL21charbound_encode_chariPh.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  store i8 -1, ptr %i.fl, align 1, !tbaa !17
  br label %_ZL21charbound_encode_chariPh.exit.i.i

bb.az:                                            ; preds = %.lr.ph.i.i
  %i.fo = icmp samesign ult i32 %i.fk, 128
  br i1 %i.fo, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fp = trunc nuw nsw i32 %i.fk to i8
  store i8 %i.fp, ptr %i.fl, align 1, !tbaa !17
  br label %_ZL21charbound_encode_chariPh.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fq = icmp samesign ult i32 %i.fk, 2048
  br i1 %i.fq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fr = lshr i32 %i.fk, 6
  %i.fs = trunc nuw nsw i32 %i.fr to i8
  %i.ft = or disjoint i8 %i.fs, -64
  store i8 %i.ft, ptr %i.fl, align 1, !tbaa !17
  %i.fu = trunc i32 %i.fk to i8
  %i.fv = and i8 %i.fu, 63
  %i.fw = or disjoint i8 %i.fv, -128
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !17
  br label %_ZL21charbound_encode_chariPh.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.fy = icmp samesign ult i32 %i.fk, 65536
  br i1 %i.fy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fz = lshr i32 %i.fk, 12
  %i.ga = trunc nuw nsw i32 %i.fz to i8
  %i.gb = or disjoint i8 %i.ga, -32
  store i8 %i.gb, ptr %i.fl, align 1, !tbaa !17
  %i.gc = lshr i32 %i.fk, 6
  %i.gd = trunc i32 %i.gc to i8
  %i.ge = and i8 %i.gd, 63
  %i.gf = or disjoint i8 %i.ge, -128
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !17
  %i.gh = trunc i32 %i.fk to i8
  %i.gi = and i8 %i.gh, 63
  %i.gj = or disjoint i8 %i.gi, -128
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !17
  br label %_ZL21charbound_encode_chariPh.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gl = icmp samesign ult i32 %i.fk, 1114112
  br i1 %i.gl, label %bb.bg, label %_ZL21charbound_encode_chariPh.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.gm = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %i.gn = shufflevector <4 x i32> %i.gm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.go = lshr <4 x i32> %i.gn, <i32 18, i32 12, i32 6, i32 0>
  %i.gp = trunc <4 x i32> %i.go to <4 x i8>
  %i.gq = and <4 x i8> %i.gp, <i8 -1, i8 63, i8 63, i8 63>
  %i.gr = or <4 x i8> %i.gq, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.gr, ptr %i.fl, align 1, !tbaa !17
  br label %_ZL21charbound_encode_chariPh.exit.i.i

_ZL21charbound_encode_chariPh.exit.i.i:           ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.ax
  %.0.i32.i.i = phi i64 [ 1, %bb.ay ], [ 0, %bb.ax ], [ 1, %bb.ba ], [ 2, %bb.bc ], [ 3, %bb.be ], [ 4, %bb.bg ], [ 0, %bb.bf ]
  %i.gs = add nuw nsw i64 %.0.i32.i.i, %.042.i.i  ; 2 uses
  %i.gt = add nuw nsw i64 %.02741.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gt, %.1.i35.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !44516

.lr.ph45.i.i:                                     ; preds = %.preheader.i.i, %_ZL20utf8proc_encode_chariPh.exit.i.i
  %.144.i.i = phi i64 [ %i.ic, %_ZL20utf8proc_encode_chariPh.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.12843.i.i = phi i64 [ %i.id, %_ZL20utf8proc_encode_chariPh.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.12843.i.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3  ; 12 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.144.i.i ; 7 uses
  %i.gx = icmp slt i32 %i.gv, 0
  br i1 %i.gx, label %_ZL20utf8proc_encode_chariPh.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph45.i.i
  %i.gy = icmp samesign ult i32 %i.gv, 128
  br i1 %i.gy, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gz = trunc nuw nsw i32 %i.gv to i8
  store i8 %i.gz, ptr %i.gw, align 1, !tbaa !17
  br label %_ZL20utf8proc_encode_chariPh.exit.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.ha = icmp samesign ult i32 %i.gv, 2048
  br i1 %i.ha, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hb = lshr i32 %i.gv, 6
  %i.hc = trunc nuw nsw i32 %i.hb to i8
  %i.hd = or disjoint i8 %i.hc, -64
  store i8 %i.hd, ptr %i.gw, align 1, !tbaa !17
  %i.he = trunc i32 %i.gv to i8
  %i.hf = and i8 %i.he, 63
  %i.hg = or disjoint i8 %i.hf, -128
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !17
  br label %_ZL20utf8proc_encode_chariPh.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.hi = icmp samesign ult i32 %i.gv, 65536
  br i1 %i.hi, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hj = lshr i32 %i.gv, 12
  %i.hk = trunc nuw nsw i32 %i.hj to i8
  %i.hl = or disjoint i8 %i.hk, -32
  store i8 %i.hl, ptr %i.gw, align 1, !tbaa !17
  %i.hm = lshr i32 %i.gv, 6
  %i.hn = trunc i32 %i.hm to i8
  %i.ho = and i8 %i.hn, 63
  %i.hp = or disjoint i8 %i.ho, -128
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !17
  %i.hr = trunc i32 %i.gv to i8
  %i.hs = and i8 %i.hr, 63
  %i.ht = or disjoint i8 %i.hs, -128
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !17
  br label %_ZL20utf8proc_encode_chariPh.exit.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.hv = icmp samesign ult i32 %i.gv, 1114112
  br i1 %i.hv, label %bb.bo, label %_ZL20utf8proc_encode_chariPh.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.hw = insertelement <4 x i32> poison, i32 %i.gv, i64 0
  %i.hx = shufflevector <4 x i32> %i.hw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hy = lshr <4 x i32> %i.hx, <i32 18, i32 12, i32 6, i32 0>
  %i.hz = trunc <4 x i32> %i.hy to <4 x i8>
  %i.ia = and <4 x i8> %i.hz, <i8 -1, i8 63, i8 63, i8 63>
  %i.ib = or <4 x i8> %i.ia, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ib, ptr %i.gw, align 1, !tbaa !17
  br label %_ZL20utf8proc_encode_chariPh.exit.i.i

_ZL20utf8proc_encode_chariPh.exit.i.i:            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bi, %.lr.ph45.i.i
  %.0.i33.i.i = phi i64 [ 0, %.lr.ph45.i.i ], [ 1, %bb.bi ], [ 2, %bb.bk ], [ 3, %bb.bm ], [ 4, %bb.bo ], [ 0, %bb.bn ]
  %i.ic = add nuw nsw i64 %.0.i33.i.i, %.144.i.i  ; 2 uses
  %i.id = add nuw nsw i64 %.12843.i.i, 1          ; 2 uses
  %exitcond54.not.i.i = icmp eq i64 %i.id, %.1.i35.i.i
  br i1 %exitcond54.not.i.i, label %.loopexit.i, label %.lr.ph45.i.i, !llvm.loop !44517

bb.bp:                                            ; preds = %_ZL24utf8proc_normalize_utf32Pils.exit.i.i
  tail call void @free(ptr noundef nonnull %i.e) #24
  br label %_ZL19utf8proc_map_customPKhlPPhsPFiiPvES3_.exit

.loopexit.i:                                      ; preds = %_ZL21charbound_encode_chariPh.exit.i.i, %_ZL20utf8proc_encode_chariPh.exit.i.i, %.preheader.i.i, %.preheader36.i.i
  %.2.i.i = phi i64 [ %i.ic, %_ZL20utf8proc_encode_chariPh.exit.i.i ], [ 0, %.preheader.i.i ], [ 0, %.preheader36.i.i ], [ %i.gs, %_ZL21charbound_encode_chariPh.exit.i.i ] ; 3 uses
  %i.ie = getelementptr inbounds i8, ptr %i.e, i64 %.2.i.i
  store i8 0, ptr %i.ie, align 1, !tbaa !17
  %i.if = add nuw i64 %.2.i.i, 1
  %i.ig = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.if) #57 ; 2 uses
  %.not41.i = icmp eq ptr %i.ig, null
  %spec.select.i = select i1 %.not41.i, ptr %i.e, ptr %i.ig
  store ptr %spec.select.i, ptr %2, align 8, !tbaa !284
  br label %_ZL19utf8proc_map_customPKhlPPhsPFiiPvES3_.exit

_ZL19utf8proc_map_customPKhlPPhsPFiiPvES3_.exit:  ; preds = %bb.a, %bb.b, %bb.d, %bb.bp, %.loopexit.i
  %.0.i = phi i64 [ %i.a, %bb.a ], [ %i.f, %bb.d ], [ %.1.i.i.i, %bb.bp ], [ %.2.i.i, %.loopexit.i ], [ -1, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #40

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 -9223372036854775808, 1152921504606846976) i64 @_ZL25utf8proc_decompose_customPKhlPilsPFiiPvES2_(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef captures(address_is_null) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i16 noundef signext %4) unnamed_addr #41 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = and i16 %4, 24                           ; 2 uses
  %or.cond.not = icmp eq i16 %i.c, 24
  %i.d = and i16 %4, 8216
  %or.cond85 = icmp eq i16 %i.d, 8192
  %or.cond = or i1 %or.cond.not, %or.cond85
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.e = and i16 %4, 1
  %.not80 = icmp eq i16 %i.e, 0
  %.not82 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not80, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %bb.e
  %.065.us = phi i64 [ %i.i, %bb.e ], [ 0, %bb.b ] ; 4 uses
  %.062.us = phi i64 [ %i.q, %bb.e ], [ 0, %bb.b ] ; 5 uses
  %.not81.us = icmp slt i64 %.065.us, %1
  br i1 %.not81.us, label %bb.c, label %.split7.us

bb.c:                                             ; preds = %.split.us
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.065.us
  %i.g = sub nsw i64 %1, %.065.us
  %i.h = call fastcc noundef i64 @_ZL16utf8proc_iteratePKhlPi(ptr noundef %i.f, i64 noundef %i.g, ptr noundef %i.a)
  %i.i = add nsw i64 %i.h, %.065.us
  %i.j = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.062.us
  %i.m = select i1 %.not82, ptr null, ptr %i.l
  %5 = icmp sgt i64 %3, %.062.us
  %i.n = sub nsw i64 %3, %.062.us
  %6 = select i1 %5, i64 %i.n, i64 0
  %i.o = call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %i.j, ptr noundef %i.m, i64 noundef %6, i16 noundef signext %4, ptr noundef %i.b) ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw nsw i64 %i.o, %.062.us           ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1152921504606846975
  br i1 %i.r, label %.thread, label %.split.us, !llvm.loop !44518

.split:                                           ; preds = %bb.b
  br i1 %.not82, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %bb.i
  %.065.us10 = phi i64 [ %i.u, %bb.i ], [ 0, %.split ] ; 2 uses
  %.062.us11 = phi i64 [ %i.ac, %bb.i ], [ 0, %.split ] ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %.065.us10
  %i.t = call fastcc noundef i64 @_ZL16utf8proc_iteratePKhlPi(ptr noundef %i.s, i64 noundef -1, ptr noundef %i.a)
  %i.u = add nsw i64 %i.t, %.065.us10             ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %.split.split.us
  %i.x = icmp slt i64 %i.u, 0
  br i1 %i.x, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %i.v, 0
  br i1 %i.y, label %.split7.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %7 = icmp sgt i64 %3, %.062.us11
  %i.z = sub nsw i64 %3, %.062.us11
  %8 = select i1 %7, i64 %i.z, i64 0
  %i.aa = call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %i.v, ptr noundef null, i64 noundef %8, i16 noundef signext %4, ptr noundef %i.b) ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw nsw i64 %i.aa, %.062.us11       ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %.thread, label %.split.split.us, !llvm.loop !44518

.split.split:                                     ; preds = %.split, %bb.m
  %.065 = phi i64 [ %i.ag, %bb.m ], [ 0, %.split ] ; 2 uses
  %.062 = phi i64 [ %i.ap, %bb.m ], [ 0, %.split ] ; 5 uses
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %.065
  %i.af = call fastcc noundef i64 @_ZL16utf8proc_iteratePKhlPi(ptr noundef %i.ae, i64 noundef -1, ptr noundef %i.a)
  %i.ag = add nsw i64 %i.af, %.065                ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread, label %bb.j

bb.j:                                             ; preds = %.split.split
  %i.aj = icmp slt i64 %i.ag, 0
  br i1 %i.aj, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp eq i32 %i.ah, 0
  br i1 %i.ak, label %.split7.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.062
  %9 = icmp sgt i64 %3, %.062
  %i.am = sub nsw i64 %3, %.062
  %10 = select i1 %9, i64 %i.am, i64 0
  %i.an = call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %i.ah, ptr noundef nonnull %i.al, i64 noundef %10, i16 noundef signext %4, ptr noundef %i.b) ; 3 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = add nuw nsw i64 %i.an, %.062            ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1152921504606846975
  br i1 %i.aq, label %.thread, label %.split.split, !llvm.loop !44518

.thread:                                          ; preds = %bb.j, %.split.split, %bb.m, %bb.l, %bb.h, %bb.i, %bb.f, %.split.split.us, %bb.c, %bb.d, %bb.e
  %.us-phi = phi i64 [ -3, %.split.split.us ], [ -2, %bb.e ], [ %i.o, %bb.d ], [ -3, %bb.c ], [ %i.aa, %bb.h ], [ -2, %bb.f ], [ -2, %bb.i ], [ -2, %bb.j ], [ -2, %bb.m ], [ -3, %.split.split ], [ %i.an, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.loopexit

.split7.us:                                       ; preds = %bb.k, %bb.g, %.split.us
  %.us-phi8 = phi i64 [ %.062.us, %.split.us ], [ %.062.us11, %bb.g ], [ %.062, %bb.k ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not83 = icmp eq i16 %i.c, 0
  %.not84 = icmp slt i64 %3, %.us-phi8
  %or.cond86 = or i1 %.not83, %.not84
  br i1 %or.cond86, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.split7.us
  %i.ar = add nsw i64 %.us-phi8, -1
  %i.as = icmp sgt i64 %.us-phi8, 1
  br i1 %i.as, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %.06715 = phi i64 [ %.168, %bb.o ], [ 0, %.preheader ] ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %2, i64 %.06715 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 3 uses
  %i.av = add nsw i64 %.06715, 1                  ; 3 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 3 uses
  %i.ay = ashr i32 %i.au, 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr @_ZL20utf8proc_stage1table, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !2495
  %i.bc = zext i16 %i.bb to i32
  %i.bd = and i32 %i.au, 255
  %i.be = add nuw nsw i32 %i.bd, %i.bc
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZL20utf8proc_stage2table, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !2495
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr @_ZL19utf8proc_properties, i64 %i.bi
  %i.bk = ashr i32 %i.ax, 8
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr @_ZL20utf8proc_stage1table, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !2495
  %i.bo = zext i16 %i.bn to i32
  %i.bp = and i32 %i.ax, 255
  %i.bq = add nuw nsw i32 %i.bp, %i.bo
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr @_ZL20utf8proc_stage2table, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !2495
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr @_ZL19utf8proc_properties, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !44512
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !44512 ; 2 uses
  %i.ca = icmp sgt i16 %i.bx, %i.bz
  %i.cb = icmp sgt i16 %i.bz, 0
  %or.cond87 = and i1 %i.ca, %i.cb
  br i1 %or.cond87, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !3
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !3
  %i.cc = icmp sgt i64 %.06715, 0
  %i.cd = add nsw i64 %.06715, -1
  %spec.select = select i1 %i.cc, i64 %i.cd, i64 %i.av
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %.168 = phi i64 [ %i.av, %.lr.ph ], [ %spec.select, %bb.n ] ; 2 uses
  %i.ce = icmp slt i64 %.168, %i.ar
  br i1 %i.ce, label %.lr.ph, label %.loopexit, !llvm.loop !44519

.loopexit:                                        ; preds = %bb.o, %.preheader, %.thread, %.split7.us, %bb.a
  %.1 = phi i64 [ -5, %bb.a ], [ %.us-phi8, %.split7.us ], [ %.us-phi, %.thread ], [ %.us-phi8, %.preheader ], [ %.us-phi8, %bb.o ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #42

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #43

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 -3, 5) i64 @_ZL16utf8proc_iteratePKhlPi(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #44 {
bb.a:
  store i32 -1, ptr %2, align 4, !tbaa !3
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i64 %1, 0
  %i.b = select i1 %i.a, i64 4, i64 %1            ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !17      ; 7 uses
  %i.e = zext i8 %i.d to i32                      ; 4 uses
  %i.f = icmp sgt i8 %i.d, -1
  br i1 %i.f, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i8 %i.d, 11
  %i.h = icmp ult i8 %i.g, -51
  br i1 %i.h, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i8 %i.d, -32
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not52 = icmp samesign ugt i64 %i.b, 1
  br i1 %.not52, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.c, align 1, !tbaa !17
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = and i32 %i.k, 192
  %i.m = icmp eq i32 %i.l, 128
  br i1 %i.m, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.n = shl nuw nsw i32 %i.e, 6
  %i.o = and i32 %i.n, 1984
  %i.p = and i32 %i.k, 63
  %i.q = or disjoint i32 %i.p, %i.o
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.r = icmp samesign ult i8 %i.d, -16
  br i1 %i.r, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.not51 = icmp samesign ugt i64 %i.b, 2
  br i1 %.not51, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.t = load i8, ptr %i.c, align 1, !tbaa !17    ; 3 uses
  %i.u = icmp slt i8 %i.t, -64
  br i1 %i.u, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.v = load i8, ptr %i.s, align 1, !tbaa !17    ; 2 uses
  %i.w = icmp slt i8 %i.v, -64
  br i1 %i.w, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.x = icmp eq i8 %i.d, -19
  %i.y = icmp samesign ugt i8 %i.t, -97
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = shl nuw nsw i32 %i.e, 12
  %i.aa = and i32 %i.z, 61440
  %i.ab = and i8 %i.t, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 6
  %i.ae = or disjoint i32 %i.ad, %i.aa            ; 2 uses
  %i.af = icmp samesign ult i32 %i.ae, 2048
  br i1 %i.af, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = and i8 %i.v, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  br label %.sink.split

bb.o:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.not50 = icmp samesign ugt i64 %i.b, 3
  br i1 %.not50, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.c, align 1, !tbaa !17   ; 4 uses
  %i.al = icmp slt i8 %i.ak, -64
  br i1 %i.al, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17  ; 2 uses
  %i.ao = icmp slt i8 %i.an, -64
  br i1 %i.ao, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !17  ; 2 uses
  %i.aq = icmp slt i8 %i.ap, -64
  br i1 %i.aq, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  switch i8 %i.d, label %bb.v [
    i8 -16, label %bb.t
end_hunk_0
begin_hunk_1_@_ZL23utf8proc_decompose_chariPilsS_:bb.a
  %i.ah = and i16 %i.m, -2
  %or.cond32.peel = icmp eq i16 %i.ah, 24
  %or.cond212.peel = select i1 %or.cond211.not226.peel, i1 %or.cond32.peel, i1 false
  br i1 %or.cond212.peel, label %bb.z, label %.loopexit266

bb.u:                                             ; preds = %.lr.ph.preheader
  %i.ai = icmp sgt i64 %2, 0
  %.lhs.trunc = trunc nuw nsw i32 %i.n to i16     ; 4 uses
  br i1 %i.ai, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.aj = udiv i16 %.lhs.trunc, 588
  %i.ak = urem i16 %.lhs.trunc, 588
  %i.al = or disjoint i16 %i.aj, 4352
  %i.am = zext nneg i16 %i.al to i32
  store i32 %i.am, ptr %1, align 4, !tbaa !3
  %.not207 = icmp eq i64 %2, 1
  br i1 %.not207, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = udiv i16 %i.ak, 28
  %narrow = add nuw nsw i16 %i.an, 4449
  %i.ao = zext nneg i16 %narrow to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.w
  %i.aq = urem i16 %.lhs.trunc, 28                ; 2 uses
  %.not208 = icmp eq i16 %i.aq, 0
  br i1 %.not208, label %.thread217, label %bb.x

.thread:                                          ; preds = %bb.v
  %i.ar = urem i16 %.lhs.trunc, 28
  %.not208215 = icmp eq i16 %i.ar, 0
  %spec.select = select i1 %.not208215, i64 2, i64 3
  br label %.thread217

bb.x:                                             ; preds = %._crit_edge
  %i.as = icmp sgt i64 %2, 2
  br i1 %i.as, label %bb.y, label %.thread217

bb.y:                                             ; preds = %bb.x
  %narrow228 = add nuw nsw i16 %i.aq, 4519
  %i.at = zext nneg i16 %narrow228 to i32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  br label %.thread217

bb.z:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.r, %bb.s, %bb.j, %bb.q, %bb.t, %bb.p, %switch.early.test210.peel, %switch.early.test210.peel, %bb.o, %bb.i, %switch.early.test.peel, %switch.early.test.peel, %bb.h, %bb.g
  %.tr.be.peel = phi i32 [ 39, %bb.h ], [ 45, %bb.i ], [ 94, %bb.o ], [ 47, %bb.n ], [ 58, %bb.m ], [ 60, %bb.l ], [ 62, %bb.k ], [ 126, %bb.q ], [ 95, %bb.p ], [ 10, %bb.t ], [ 96, %bb.s ], [ 124, %bb.r ], [ 92, %bb.j ], [ 94, %switch.early.test210.peel ], [ 94, %switch.early.test210.peel ], [ 39, %switch.early.test.peel ], [ 39, %switch.early.test.peel ], [ 32, %bb.g ] ; 2 uses
  %.tr231.be.peel = and i16 %3, -4097
  %i.av = zext nneg i32 %.tr.be.peel to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr @_ZL20utf8proc_stage2table, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !2495
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr @_ZL19utf8proc_properties, i64 %i.ay ; 3 uses
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !44520 ; 2 uses
  %i.bb = and i16 %3, 24
  %.not = icmp ne i16 %i.bb, 0
  %i.bc = and i16 %3, 64
  %i.bd = icmp eq i16 %i.bc, 0
  %i.be = icmp ne i16 %i.ba, 0                    ; 2 uses
  %or.cond40 = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %or.cond40, label %bb.aa, label %.thread217

bb.aa:                                            ; preds = %bb.z
  %i.bf = and i16 %3, 32
  %.not195 = icmp eq i16 %i.bf, 0
  br i1 %.not195, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = and i16 %i.bh, 4
  %.not196 = icmp eq i16 %i.bi, 0
  br i1 %.not196, label %bb.ac, label %.thread217

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bj = and i16 %3, 16384
  %i.bk = icmp eq i16 %i.bj, 0
  %or.cond42 = select i1 %i.bk, i1 true, i1 %i.be
  br i1 %or.cond42, label %.loopexit266, label %.thread217

.loopexit266:                                     ; preds = %bb.ac, %bb.t, %bb.f
  %.tr231245.lcssa264 = phi i16 [ %3, %bb.f ], [ %3, %bb.t ], [ %.tr231.be.peel, %bb.ac ] ; 6 uses
  %.tr244.lcssa262 = phi i32 [ %0, %bb.f ], [ %0, %bb.t ], [ %.tr.be.peel, %bb.ac ] ; 2 uses
  %.lcssa260 = phi ptr [ %i.l, %bb.f ], [ %i.l, %bb.t ], [ %i.az, %bb.ac ] ; 4 uses
  %.lcssa257 = phi i16 [ %i.m, %bb.f ], [ %i.m, %bb.t ], [ %i.ba, %bb.ac ]
  %.not.lcssa252 = phi i1 [ %.not.peel, %bb.f ], [ %.not.peel, %bb.t ], [ %.not, %bb.ac ]
  %i.bl = and i16 %.tr231245.lcssa264, 8192
  %.not200 = icmp ne i16 %i.bl, 0
  %i.bm = add i16 %.lcssa257, -6
  %or.cond38 = icmp ult i16 %i.bm, 3
  %or.cond213 = select i1 %.not200, i1 %or.cond38, i1 false
  br i1 %or.cond213, label %.thread217, label %bb.ad

bb.ad:                                            ; preds = %.loopexit266
  %i.bn = and i16 %.tr231245.lcssa264, 1024
  %.not201 = icmp eq i16 %i.bn, 0
  br i1 %.not201, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa260, i64 10
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !44521 ; 2 uses
  %.not202 = icmp eq i16 %i.bp, -1
  br i1 %.not202, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = tail call fastcc noundef i64 @_ZL30seqindex_write_char_decomposedtPilsS_(i16 noundef zeroext %i.bp, ptr noundef %1, i64 noundef %2, i16 noundef signext %.tr231245.lcssa264, ptr noundef %4)
  br label %.thread217

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not.lcssa252, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa260, i64 8
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !44522 ; 2 uses
  %.not203 = icmp eq i16 %i.bs, -1
  br i1 %.not203, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa260, i64 6
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !44523
  %.not204 = icmp ne i16 %i.bu, 0
  %i.bv = and i16 %.tr231245.lcssa264, 4
  %.not205 = icmp eq i16 %i.bv, 0
  %or.cond214 = and i1 %.not205, %.not204
  br i1 %or.cond214, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = tail call fastcc noundef i64 @_ZL30seqindex_write_char_decomposedtPilsS_(i16 noundef zeroext %i.bs, ptr noundef %1, i64 noundef %2, i16 noundef signext %.tr231245.lcssa264, ptr noundef %4)
  br label %.thread217

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.bx = and i16 %.tr231245.lcssa264, 2048
  %.not206 = icmp eq i16 %i.bx, 0
  br i1 %.not206, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.by = getelementptr inbounds nuw i8, ptr %.lcssa260, i64 20
  %i.bz = load i16, ptr %i.by, align 4
  %i.ca = lshr i16 %i.bz, 8
  %i.cb = zext nneg i16 %i.ca to i32
  %i.cc = load i32, ptr %4, align 4, !tbaa !3
  %i.cd = tail call fastcc noundef zeroext i1 @_ZL23grapheme_break_extendediiPi(i32 noundef %i.cc, i32 noundef %i.cb, ptr noundef %4)
  br i1 %i.cd, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.ce = icmp sgt i64 %2, 0
  br i1 %i.ce, label %bb.an, label %.thread217

bb.an:                                            ; preds = %bb.am
  store i32 -1, ptr %1, align 4, !tbaa !3
  %.not227 = icmp eq i64 %2, 1
  br i1 %.not227, label %.thread217, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.tr244.lcssa262, ptr %i.cf, align 4, !tbaa !3
  br label %.thread217

.critedge:                                        ; preds = %bb.al, %bb.ak
  %i.cg = icmp sgt i64 %2, 0
  br i1 %i.cg, label %bb.ap, label %.thread217

bb.ap:                                            ; preds = %.critedge
  store i32 %.tr244.lcssa262, ptr %1, align 4, !tbaa !3
  br label %.thread217

.thread217:                                       ; preds = %bb.b, %bb.d, %bb.e, %bb.z, %bb.ab, %bb.ac, %bb.a, %.thread, %bb.am, %bb.ao, %bb.an, %.critedge, %bb.ap, %.loopexit266, %._crit_edge, %bb.y, %bb.x, %bb.aj, %bb.af
  %.2 = phi i64 [ 3, %bb.x ], [ 0, %.loopexit266 ], [ %i.bw, %bb.aj ], [ 2, %bb.an ], [ 2, %bb.ao ], [ %spec.select, %.thread ], [ 1, %.critedge ], [ 1, %bb.ap ], [ 3, %bb.y ], [ 2, %._crit_edge ], [ %i.bq, %bb.af ], [ 2, %bb.am ], [ -4, %bb.a ], [ -4, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.ac ], [ -4, %bb.z ], [ 0, %bb.ab ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 -2, -9223372036854775808) i64 @_ZL30seqindex_write_char_decomposedtPilsS_(i16 noundef zeroext %0, ptr noundef writeonly captures(address_is_null) %1, i64 noundef %2, i16 noundef signext %3, ptr noundef nonnull captures(none) %4) unnamed_addr #41 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = and i32 %i.a, 8191
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @_ZL18utf8proc_sequences, i64 %i.c ; 3 uses
  %i.e = lshr i32 %i.a, 13                        ; 2 uses
  %i.f = icmp eq i32 %i.e, 7
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %i.d, align 2, !tbaa !2495
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ]  ; 2 uses
  %.021 = phi i32 [ %i.h, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %bb.e
  %.12229.us = phi i32 [ %i.aa, %bb.e ], [ %.021, %bb.c ] ; 2 uses
  %.02328.us = phi i64 [ %i.x, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.127.us = phi ptr [ %i.z, %bb.e ], [ %.0, %bb.c ] ; 3 uses
  %i.j = load i16, ptr %.127.us, align 2, !tbaa !2495
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = and i32 %i.k, 63488
  %i.m = icmp eq i32 %i.l, 55296
  br i1 %i.m, label %bb.d, label %_ZL21seqindex_decode_entryPPKt.exit.us

bb.d:                                             ; preds = %.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %.127.us, i64 2 ; 2 uses
  %i.o = shl nuw nsw i32 %i.k, 10
  %i.p = and i32 %i.o, 1047552
  %i.q = load i16, ptr %i.n, align 2, !tbaa !2495
  %i.r = and i16 %i.q, 1023
  %i.s = zext nneg i16 %i.r to i32
  %i.t = add nuw nsw i32 %i.p, 65536
  %i.u = or disjoint i32 %i.t, %i.s
  br label %_ZL21seqindex_decode_entryPPKt.exit.us

_ZL21seqindex_decode_entryPPKt.exit.us:           ; preds = %bb.d, %.split.us
  %.226.us = phi ptr [ %i.n, %bb.d ], [ %.127.us, %.split.us ]
  %.0.i.us = phi i32 [ %i.u, %bb.d ], [ %i.k, %.split.us ]
  %5 = icmp sgt i64 %2, %.02328.us
  %i.v = sub nsw i64 %2, %.02328.us
  %6 = select i1 %5, i64 %i.v, i64 0
  %i.w = tail call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %.0.i.us, ptr noundef null, i64 noundef %6, i16 noundef signext %3, ptr noundef %4)
  %i.x = add nsw i64 %i.w, %.02328.us             ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %bb.e, label %.split31.us

bb.e:                                             ; preds = %_ZL21seqindex_decode_entryPPKt.exit.us
  %i.z = getelementptr inbounds nuw i8, ptr %.226.us, i64 2
  %i.aa = add nsw i32 %.12229.us, -1
  %i.ab = icmp sgt i32 %.12229.us, 0
  br i1 %i.ab, label %.split.us, label %.split31.us, !llvm.loop !44524

.split:                                           ; preds = %bb.c, %bb.g
  %.12229 = phi i32 [ %i.au, %bb.g ], [ %.021, %bb.c ] ; 2 uses
  %.02328 = phi i64 [ %i.ar, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.127 = phi ptr [ %i.at, %bb.g ], [ %.0, %bb.c ] ; 3 uses
  %i.ac = load i16, ptr %.127, align 2, !tbaa !2495
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = and i32 %i.ad, 63488
  %i.af = icmp eq i32 %i.ae, 55296
  br i1 %i.af, label %bb.f, label %_ZL21seqindex_decode_entryPPKt.exit

bb.f:                                             ; preds = %.split
  %i.ag = getelementptr inbounds nuw i8, ptr %.127, i64 2 ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ad, 10
  %i.ai = and i32 %i.ah, 1047552
  %i.aj = load i16, ptr %i.ag, align 2, !tbaa !2495
  %i.ak = and i16 %i.aj, 1023
  %i.al = zext nneg i16 %i.ak to i32
  %i.am = add nuw nsw i32 %i.ai, 65536
  %i.an = or disjoint i32 %i.am, %i.al
  br label %_ZL21seqindex_decode_entryPPKt.exit

_ZL21seqindex_decode_entryPPKt.exit:              ; preds = %.split, %bb.f
  %.226 = phi ptr [ %i.ag, %bb.f ], [ %.127, %.split ]
  %.0.i = phi i32 [ %i.an, %bb.f ], [ %i.ad, %.split ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02328
  %7 = icmp sgt i64 %2, %.02328
  %i.ap = sub nsw i64 %2, %.02328
  %8 = select i1 %7, i64 %i.ap, i64 0
  %i.aq = tail call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %.0.i, ptr noundef nonnull %i.ao, i64 noundef %8, i16 noundef signext %3, ptr noundef %4)
  %i.ar = add nsw i64 %i.aq, %.02328              ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.g, label %.split31.us

bb.g:                                             ; preds = %_ZL21seqindex_decode_entryPPKt.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.226, i64 2
  %i.au = add nsw i32 %.12229, -1
  %i.av = icmp sgt i32 %.12229, 0
  br i1 %i.av, label %.split, label %.split31.us, !llvm.loop !44524

.split31.us:                                      ; preds = %_ZL21seqindex_decode_entryPPKt.exit, %bb.g, %bb.e, %_ZL21seqindex_decode_entryPPKt.exit.us
  %.us-phi = phi i64 [ %i.x, %bb.e ], [ -2, %_ZL21seqindex_decode_entryPPKt.exit.us ], [ -2, %_ZL21seqindex_decode_entryPPKt.exit ], [ %i.ar, %bb.g ]
  ret i64 %.us-phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZL23grapheme_break_extendediiPi(i32 noundef %0, i32 noundef range(i32 0, 256) %1, ptr noundef nonnull captures(none) %2) unnamed_addr #44 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !3      ; 4 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i32 %0, i32 %i.a        ; 8 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZL21grapheme_break_simpleii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 2
  %i.e = icmp eq i32 %1, 3
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %_ZL21grapheme_break_simpleii.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.b, -2
  %or.cond3.i = icmp ult i32 %i.f, 3
  %i.g = add nsw i32 %1, -2
  %or.cond5.i = icmp ult i32 %i.g, 3
  %or.cond57.i = select i1 %or.cond3.i, i1 true, i1 %or.cond5.i
  br i1 %or.cond57.i, label %_ZL21grapheme_break_simpleii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.b, label %bb.g [
    i32 6, label %bb.e
    i32 9, label %bb.f
    i32 7, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %1, 254
  %or.cond7.i = icmp eq i32 %i.h, 6
  %i.i = add nsw i32 %1, -9
  %i.j = icmp ult i32 %i.i, 2
  %or.cond11.i = or i1 %or.cond7.i, %i.j
  br i1 %or.cond11.i, label %_ZL21grapheme_break_simpleii.exit, label %.thread.i

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.k = add nsw i32 %1, -7
  %or.cond15.i = icmp ult i32 %i.k, 2
  br i1 %or.cond15.i, label %_ZL21grapheme_break_simpleii.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.l = and i32 %i.b, -3
  %or.cond17.i = icmp eq i32 %i.l, 8
  %i.m = icmp eq i32 %1, 8
  %or.cond19.i = and i1 %i.m, %or.cond17.i
  br i1 %or.cond19.i, label %_ZL21grapheme_break_simpleii.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.e
  %i.n = icmp eq i32 %1, 5
  %i.o = and i32 %1, 253
  %i.p = icmp eq i32 %i.o, 12
  %or.cond23.i = or i1 %i.n, %i.p
  %i.q = icmp eq i32 %i.b, 13
  %or.cond25.i = or i1 %or.cond23.i, %i.q
  br i1 %or.cond25.i, label %_ZL21grapheme_break_simpleii.exit, label %bb.h

bb.h:                                             ; preds = %.thread.i
  %i.r = icmp eq i32 %i.b, 20
  %i.s = icmp eq i32 %1, 19
  %or.cond27.i = and i1 %i.s, %i.r
  br i1 %or.cond27.i, label %_ZL21grapheme_break_simpleii.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp ne i32 %i.b, 11
  %i.u = icmp ne i32 %1, 11
  %.not56.i = or i1 %i.u, %i.t
  br label %_ZL21grapheme_break_simpleii.exit

_ZL21grapheme_break_simpleii.exit:                ; preds = %bb.a, %bb.c, %bb.e, %.thread.i, %bb.i
  %i.v = phi i1 [ true, %bb.a ], [ false, %.thread.i ], [ true, %bb.c ], [ %.not56.i, %bb.i ], [ false, %bb.e ] ; 2 uses
  %i.w = icmp eq i32 %1, 11
  %i.x = icmp eq i32 %i.a, 11
  %or.cond = and i1 %i.w, %i.x
  br i1 %or.cond, label %.sink.split, label %_ZL21grapheme_break_simpleii.exit.thread

_ZL21grapheme_break_simpleii.exit.thread:         ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %_ZL21grapheme_break_simpleii.exit
  %i.y = phi i1 [ %i.v, %_ZL21grapheme_break_simpleii.exit ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ] ; 4 uses
  %i.z = icmp eq i32 %i.a, 19
  br i1 %i.z, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZL21grapheme_break_simpleii.exit.thread
  %trunc = trunc nuw i32 %1 to i8
  switch i8 %trunc, label %bb.k [
    i8 5, label %bb.l
    i8 14, label %.sink.split
  ]

bb.k:                                             ; preds = %bb.j
  br label %.sink.split

.sink.split:                                      ; preds = %_ZL21grapheme_break_simpleii.exit.thread, %bb.j, %_ZL21grapheme_break_simpleii.exit, %bb.k
  %.sink = phi i32 [ 20, %bb.j ], [ %1, %bb.k ], [ 1, %_ZL21grapheme_break_simpleii.exit ], [ %1, %_ZL21grapheme_break_simpleii.exit.thread ]
  %.ph = phi i1 [ %i.y, %bb.j ], [ %i.y, %bb.k ], [ %i.v, %_ZL21grapheme_break_simpleii.exit ], [ %i.y, %_ZL21grapheme_break_simpleii.exit.thread ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j
  %i.aa = phi i1 [ %i.y, %bb.j ], [ %.ph, %.sink.split ]
  ret i1 %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_sESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44525
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.014 = load ptr, ptr %i.c, align 8, !tbaa !292 ; 3 uses
  %i.d = icmp eq ptr %.sroa.06.014, null
  br i1 %i.d, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_sENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !368
  %.sroa.01.0.copyload.i.i.fr = freeze i64 %.sroa.01.0.copyload.i.i ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !284
  %i.e = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, 0
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.sroa.06.015.us = phi ptr [ %.sroa.06.0.us, %bb.c ], [ %.sroa.06.014, %.lr.ph ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.015.us, i64 8
  %.sroa.0.0.copyload.i.i.us = load i64, ptr %i.f, align 8, !tbaa !368
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i.us, 0
  br i1 %i.g, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_sENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.015.us, align 8, !tbaa !292 ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.us, null
  br i1 %i.h, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_sENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %.lr.ph.split.us, !llvm.loop !44526

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.sroa.06.015 = phi ptr [ %.sroa.06.0, %bb.d ], [ %.sroa.06.014, %.lr.ph ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !368
  %i.j = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, %.sroa.0.0.copyload.i.i
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, label %bb.d

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.split
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !284
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.01.0.copyload.i.i.fr)
  %i.k = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.k, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_sENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.sroa.06.0 = load ptr, ptr %.sroa.06.015, align 8, !tbaa !292 ; 2 uses
  %i.l = icmp eq ptr %.sroa.06.0, null
  br i1 %i.l, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_sENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %.lr.ph.split, !llvm.loop !44526

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89
  %i.o = load i64, ptr %1, align 8, !tbaa !87
  %i.p = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.n, i64 noundef %i.o, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_sENS_10_Select1stESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS6_.exit unwind label %bb.f ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #51
  unreachable

_ZNKSt8__detail15_Hash_code_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_sENS_10_Select1stESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS6_.exit: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !295  ; 3 uses
  %i.u = urem i64 %i.p, %i.t                      ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !294
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !527  ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_sENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_sENS_10_Select1stESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS6_.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !292  ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8
  %.sroa.01.0.copyload.i.i.i.fr.i.i = freeze i64 %.sroa.01.0.copyload.i.i.i.i.i ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26KeySamplingPercentFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %.not10.i73 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i73, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26KeySamplingPercentFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.o, !llvm.loop !47315

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26KeySamplingPercentFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i67, %_ZN8facebook5velox6StatusD2Ev.exit21.i, %bb.n, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26KeySamplingPercentFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !47306, !range !307, !noundef !308
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47308
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !368
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre92 = load ptr, ptr %i.k, align 8, !tbaa !47290 ; 2 uses
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %.pre92, i64 8
  %.pre94 = load ptr, ptr %.phi.trans.insert93, align 8, !tbaa !47291
  %.pre95 = load ptr, ptr %.pre94, align 8, !tbaa !2888, !noalias !47329 ; 5 uses
  %.phi.trans.insert96 = getelementptr inbounds nuw i8, ptr %.pre95, i64 16
  %.pre97 = load ptr, ptr %.phi.trans.insert96, align 8, !tbaa !1380, !noalias !47329
  %.phi.trans.insert98 = getelementptr inbounds nuw i8, ptr %.pre95, i64 58
  %.pre99 = load i8, ptr %.phi.trans.insert98, align 2, !tbaa !1381, !range !307, !noalias !47329
  %i.o = trunc nuw i8 %.pre99 to i1
  %i.p = getelementptr inbounds nuw i8, ptr %.pre95, i64 59
  %i.q = getelementptr inbounds nuw i8, ptr %.pre95, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.pre95, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %.pre92, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47296, !nonnull !308, !align !414
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47297, !nonnull !308, !align !414
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4633
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.x = shl i32 %1, 6                            ; 3 uses
  %i.y = add i32 %i.x, 64
  %i.z = sext i32 %i.y to i64
  %.not84 = icmp eq i32 %i.x, -64
  br i1 %.not84, label %.loopexit, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.b
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !47290 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre86 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47291
  %.pre87 = load ptr, ptr %.pre86, align 8, !tbaa !2888, !noalias !47332 ; 5 uses
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %.pre87, i64 16
  %.pre89 = load ptr, ptr %.phi.trans.insert88, align 8, !tbaa !1380, !noalias !47332
  %.phi.trans.insert90 = getelementptr inbounds nuw i8, ptr %.pre87, i64 58
  %.pre91 = load i8, ptr %.phi.trans.insert90, align 2, !tbaa !1381, !range !307, !noalias !47332
  %i.ae = trunc nuw i8 %.pre91 to i1
  %i.af = getelementptr inbounds nuw i8, ptr %.pre87, i64 59
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre87, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre87, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47296, !nonnull !308, !align !414
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47297, !nonnull !308, !align !414
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !4633
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph83, %_ZN8facebook5velox6StatusD2Ev.exit36
  %.082 = phi i64 [ %i.aa, %.lr.ph83 ], [ %i.bg, %_ZN8facebook5velox6StatusD2Ev.exit36 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !47332
  %i.an = trunc i64 %.082 to i32
  br i1 %i.ae, label %_ZN8facebook5velox6StatusD2Ev.exit36, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %i.af, align 1, !tbaa !1382, !range !307, !noalias !47332, !noundef !308
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = load i32, ptr %i.ah, align 8, !tbaa !1383, !noalias !47332
  br label %_ZN8facebook5velox6StatusD2Ev.exit36

bb.f:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !1384, !noalias !47332
  %sext.i = shl i64 %.082, 32
  %i.as = ashr exact i64 %sext.i, 30
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3, !noalias !47332
  br label %_ZN8facebook5velox6StatusD2Ev.exit36

_ZN8facebook5velox6StatusD2Ev.exit36:             ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i = phi i32 [ %i.au, %bb.f ], [ %i.aq, %bb.e ], [ %i.an, %bb.c ]
  %i.av = sext i32 %.0.i.i.i to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %.pre89, i64 %i.av ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aw, align 8, !noalias !47332 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !17, !noalias !47332 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !47332
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ac, align 8, !noalias !47332
  %i.ax = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.ay = icmp ult i32 %i.ax, 13
  %i.az = select i1 %i.ay, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i
  %i.ba = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.bb = call fastcc noundef i64 @_ZL16XXH_INLINE_XXH64PKvmm(ptr noundef %i.az, i64 noundef %i.ba)
  %.cast.i.i.i = bitcast i64 %i.bb to double
  %i.bc = call double @llvm.fabs.f64(double %.cast.i.i.i)
  %i.bd = call double @fmod(double noundef %i.bc, double noundef 1.000000e+02) #24, !tbaa !3, !noalias !47335
  %i.be = fdiv double %i.bd, 1.000000e+02
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !47332
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.082
  store double %i.be, ptr %i.bf, align 8, !tbaa !4603
  %i.bg = add nuw i64 %.082, 1                    ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.z
  br i1 %i.bh, label %bb.c, label %.loopexit, !llvm.loop !47338

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit63
  %.01581 = phi i64 [ %i.j, %.lr.ph ], [ %i.cf, %_ZN8facebook5velox6StatusD2Ev.exit63 ] ; 3 uses
  %i.bi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01581, i1 true)
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = or disjoint i32 %i.l, %i.bj             ; 2 uses
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !47329
  br i1 %i.o, label %_ZN8facebook5velox6StatusD2Ev.exit63, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load i8, ptr %i.p, align 1, !tbaa !1382, !range !307, !noalias !47329, !noundef !308
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %i.r, align 8, !tbaa !1383, !noalias !47329
  br label %_ZN8facebook5velox6StatusD2Ev.exit63

bb.j:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !1384, !noalias !47329
  %i.bq = shl nsw i64 %i.bl, 2
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !47329
  br label %_ZN8facebook5velox6StatusD2Ev.exit63

_ZN8facebook5velox6StatusD2Ev.exit63:             ; preds = %bb.g, %bb.i, %bb.j
  %.0.i.i.i45 = phi i32 [ %i.bs, %bb.j ], [ %i.bo, %bb.i ], [ %i.bk, %bb.g ]
  %i.bt = sext i32 %.0.i.i.i45 to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %.pre97, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i46 = load i64, ptr %i.bu, align 8, !noalias !47329 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i47 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.2.0.copyload.i.i48 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i47, align 8, !tbaa !17, !noalias !47329 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i46, ptr %3, align 8, !noalias !47329
  store ptr %.sroa.2.0.copyload.i.i48, ptr %i.m, align 8, !noalias !47329
  %i.bv = trunc i64 %.sroa.0.0.copyload.i.i46 to i32
  %i.bw = icmp ult i32 %i.bv, 13
  %i.bx = select i1 %i.bw, ptr %i.n, ptr %.sroa.2.0.copyload.i.i48
  %i.by = and i64 %.sroa.0.0.copyload.i.i46, 4294967295
  %i.bz = call fastcc noundef i64 @_ZL16XXH_INLINE_XXH64PKvmm(ptr noundef %i.bx, i64 noundef %i.by)
  %.cast.i.i = bitcast i64 %i.bz to double
  %i.ca = call double @llvm.fabs.f64(double %.cast.i.i)
  %i.cb = call double @fmod(double noundef %i.ca, double noundef 1.000000e+02) #24, !tbaa !3, !noalias !47339
  %i.cc = fdiv double %i.cb, 1.000000e+02
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !47329
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bl
  store double %i.cc, ptr %i.cd, align 8, !tbaa !4603
  %i.ce = add i64 %.01581, -1
  %i.cf = and i64 %i.ce, %.01581                  ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !47342

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit36, %_ZN8facebook5velox6StatusD2Ev.exit63, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #25

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { cold noreturn }
attributes #21 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nounwind }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #30 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #32 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { nounwind memory(none) }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #35 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #37 = { inlinehint mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #38 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #43 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #44 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #45 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #46 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #48 = { builtin nounwind }
attributes #49 = { builtin allocsize(0) }
attributes #50 = { noreturn }
attributes #51 = { noreturn nounwind }
attributes #52 = { nounwind willreturn memory(read) }
attributes #53 = { cold }
attributes #54 = { allocsize(0) }
attributes #55 = { cold noreturn nounwind }
attributes #56 = { nounwind allocsize(0) }
attributes #57 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!15 = distinct !{!15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!16 = !{!8, !12, i64 8}
!17 = !{!5, !5, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!20 = distinct !{!20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!23 = distinct !{!23, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!26 = distinct !{!26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!30 = !{!28, !29, i64 16}
!31 = !{!28, !29, i64 8}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSN8facebook5velox4exec17SignatureVariableE", !11, i64 0}
!35 = !{!33, !34, i64 8}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!33, !34, i64 16}
!39 = distinct !{!39, !37}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!42 = distinct !{!42, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!45 = distinct !{!45, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!48 = distinct !{!48, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!51 = distinct !{!51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !54, i64 0, !12, i64 8, !56, i64 16, !12, i64 24, !58, i64 32, !57, i64 48}
!54 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !55, i64 0}
!55 = !{!"any p2 pointer", !11, i64 0}
!56 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !57, i64 0}
!57 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!58 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !59, i64 0, !12, i64 8}
!59 = !{!"float", !5, i64 0}
!60 = !{!53, !12, i64 8}
!61 = !{!58, !59, i64 0}
!62 = !{!63, !66, i64 32}
!63 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !64, i64 0, !64, i64 16, !66, i64 32}
!64 = !{!"_ZTSSt13_Bit_iterator", !65, i64 0}
!65 = !{!"_ZTSSt18_Bit_iterator_base", !66, i64 0, !4, i64 8}
!66 = !{!"p1 long", !11, i64 0}
!67 = !{!9, !10, i64 0}
!68 = !{!69, !70, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!70 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !11, i64 0}
!71 = !{!69, !70, i64 16}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !74, i64 0}
!74 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!75 = !{!11, !11, i64 0}
!76 = !{!69, !70, i64 8}
!77 = !{!78, !78, i64 0}
!78 = !{!"vtable pointer", !6, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZSt11make_uniqueIN8facebook5velox4exec16ApplyNeverCalledEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!81 = distinct !{!81, !"_ZSt11make_uniqueIN8facebook5velox4exec16ApplyNeverCalledEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!82 = !{!83, !84, i64 0}
!83 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !84, i64 0}
!84 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !11, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"bool", !5, i64 0}
!87 = !{!88, !12, i64 0}
!88 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !12, i64 0, !10, i64 8}
!89 = !{!88, !10, i64 8}
!90 = !{!84, !84, i64 0}
!91 = distinct !{null, null, null}
!92 = !{!93, !4, i64 8}
!93 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!94 = !{!93, !4, i64 12}
!95 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!96 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!97 = distinct !{!97, !37}
!98 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!99 = !{!"branch_weights", i32 1, i32 1048575}
!100 = !{!101, !11, i64 16}
!101 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!102 = !{!103, !11, i64 24}
end_hunk_2

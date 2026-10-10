Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucase?download=true
inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ucase_addSimpleCaseClosure_78:bb.a

.split.3:                                         ; preds = %bb.x, %.split.2
  %i.ed = and i32 %i.ar, 8
  %.not144.3 = icmp eq i32 %i.ed, 0
  br i1 %.not144.3, label %.split154.us, label %bb.y

bb.y:                                             ; preds = %.split.3
  %i.ee = and i32 %i.ar, 7
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !16
  %i.ei = zext i8 %i.eh to i64
  %.idx145.3 = shl nuw nsw i64 %i.ei, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx145.3 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.el = load i16, ptr %i.ej, align 2, !tbaa !15
  %i.em = zext i16 %i.el to i32
  %i.en = shl nuw i32 %i.em, 16
  %i.eo = load i16, ptr %i.ek, align 2, !tbaa !15
  %i.ep = zext i16 %i.eo to i32
  %i.eq = or disjoint i32 %i.en, %i.ep
  br label %.split154.us.sink.split

bb.z:                                             ; preds = %.split154.us
  %i.er = and i32 %i.ar, 15
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !16
  %i.ev = zext i8 %i.eu to i64                    ; 2 uses
  br i1 %i.az, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !15
  %i.ey = zext i16 %i.ex to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %.idx = shl nuw nsw i64 %i.ev, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fb = load i16, ptr %i.ez, align 2, !tbaa !15
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, 16
  %i.fe = load i16, ptr %i.fa, align 2, !tbaa !15
  %i.ff = zext i16 %i.fe to i32
  %i.fg = or disjoint i32 %i.fd, %i.ff
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0126 = phi i32 [ %i.ey, %bb.aa ], [ %i.fg, %bb.ab ] ; 2 uses
  %i.fh = and i32 %i.ar, 1024
  %i.fi = icmp eq i32 %i.fh, 0
  %i.fj = sub i32 0, %.0126
  %.p = select i1 %i.fi, i32 %.0126, i32 %i.fj
  %i.fk = add i32 %.p, %0
  %i.fl = load ptr, ptr %i.ba, align 8, !tbaa !11
  %i.fm = load ptr, ptr %1, align 8, !tbaa !12
  tail call void %i.fl(ptr noundef %i.fm, i32 noundef %i.fk)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split154.us
  %i.fn = and i32 %i.ar, 64
  %.not139 = icmp eq i32 %i.fn, 0
  br i1 %.not139, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fo = and i32 %i.ar, 63
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !16
  %i.fs = zext i8 %i.fr to i64                    ; 2 uses
  br i1 %i.az, label %bb.af, label %.thread164

bb.af:                                            ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.fs ; 2 uses
  %.0122.in = load i16, ptr %i.ft, align 2, !tbaa !15
  %i.fu = and i16 %.0122.in, 15                   ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %.not141 = icmp eq i16 %i.fu, 0
  %i.fw = and i32 %i.ar, 128
  %.not142 = icmp eq i32 %i.fw, 0
  %or.cond = or i1 %.not142, %.not141
  br i1 %or.cond, label %.thread, label %bb.ag

.thread164:                                       ; preds = %bb.ae
  %.idx140 = shl nuw nsw i64 %i.fs, 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx140 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %.0122.in166 = load i16, ptr %i.fy, align 2, !tbaa !15
  %i.fz = and i16 %.0122.in166, 15                ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %.not141167 = icmp eq i16 %i.fz, 0
  %i.gb = and i32 %i.ar, 128
  %.not142168 = icmp eq i32 %i.gb, 0
  %or.cond169 = or i1 %.not142168, %.not141167
  br i1 %or.cond169, label %.thread, label %.thread170

bb.ag:                                            ; preds = %bb.af
  %i.gc = and i32 %i.ar, 127
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !16
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.gg
  br label %.thread.thread175

.thread170:                                       ; preds = %.thread164
  %i.gi = and i32 %i.ar, 127
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !16
  %i.gm = zext i8 %i.gl to i64
  %.idx143 = shl nuw nsw i64 %i.gm, 2
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx143
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  br label %.thread.thread175

.thread.thread175:                                ; preds = %bb.ag, %.thread170
  %i.gp = phi i16 [ %i.fu, %bb.ag ], [ %i.fz, %.thread170 ]
  %.1131 = phi ptr [ %i.gh, %bb.ag ], [ %i.go, %.thread170 ] ; 2 uses
  %.0121.in = load i16, ptr %.1131, align 2, !tbaa !15
  %.0121 = zext i16 %.0121.in to i32              ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1131, i64 2
  %i.gr = and i32 %.0121, 15
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gq, i64 %i.gs
  %i.gu = lshr i32 %.0121, 4
  %i.gv = and i32 %i.gu, 15
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = lshr i32 %.0121, 8
  %i.gz = and i32 %i.gy, 15
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.ha
  %i.hc = lshr i32 %.0121, 12
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.hd
  br label %.lr.ph

.thread:                                          ; preds = %.thread164, %bb.af
  %.1123151.shrunk = phi i16 [ %i.fz, %.thread164 ], [ %i.fu, %bb.af ] ; 2 uses
  %.1125 = phi ptr [ %i.ga, %.thread164 ], [ %i.fv, %bb.af ]
  %.not158 = icmp eq i16 %.1123151.shrunk, 0
  br i1 %.not158, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread.thread175, %.thread
  %.1123151181.in = phi i16 [ %i.gp, %.thread.thread175 ], [ %.1123151.shrunk, %.thread ]
  %.1125180 = phi ptr [ %i.he, %.thread.thread175 ], [ %.1125, %.thread ] ; 2 uses
  %.1123151181 = zext i16 %.1123151181.in to i32
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.aj
  %.0120155 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.aj ] ; 3 uses
  %i.hf = add nsw i32 %.0120155, 1                ; 2 uses
  %i.hg = sext i32 %.0120155 to i64
  %i.hh = getelementptr inbounds [2 x i8], ptr %.1125180, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !18
  %i.hj = zext i16 %i.hi to i32                   ; 3 uses
  %i.hk = and i32 %i.hj, 64512
  %i.hl = icmp eq i32 %i.hk, 55296
  br i1 %i.hl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hm = shl nuw nsw i32 %i.hj, 10
  %i.hn = add nsw i32 %.0120155, 2
  %i.ho = sext i32 %i.hf to i64
  %i.hp = getelementptr inbounds [2 x i8], ptr %.1125180, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !18
  %i.hr = zext i16 %i.hq to i32
  %i.hs = add nsw i32 %i.hm, -56613888
  %i.ht = add nuw nsw i32 %i.hs, %i.hr
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1 = phi i32 [ %i.hn, %bb.ai ], [ %i.hf, %bb.ah ] ; 2 uses
  %.0 = phi i32 [ %i.ht, %bb.ai ], [ %i.hj, %bb.ah ]
  %i.hu = load ptr, ptr %i.ba, align 8, !tbaa !11
  %i.hv = load ptr, ptr %1, align 8, !tbaa !12
  tail call void %i.hu(ptr noundef %i.hv, i32 noundef %.0)
  %i.hw = icmp slt i32 %.1, %.1123151181
  br i1 %i.hw, label %bb.ah, label %.critedge, !llvm.loop !30

.critedge:                                        ; preds = %bb.aj, %bb.ad, %.thread, %bb.n, %bb.m, %bb.o, %bb.p, %bb.i, %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define signext range(i8 0, 2) i8 @ucase_addStringCaseClosure_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = add i32 %1, -4
  %i.c = icmp ult i32 %i.b, -2
  %or.cond57 = or i1 %i.a, %i.c
  br i1 %or.cond57, label %.critedge, label %.preheader63

.preheader63:                                     ; preds = %bb.a
  %i.d = shl nuw nsw i32 %1, 1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = icmp eq i32 %1, 3
  br i1 %i.f, label %.preheader63.split.us.preheader, label %.preheader63.split.preheader

.preheader63.split.preheader:                     ; preds = %.preheader63
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %4 = icmp samesign ugt i32 %1, 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = icmp sgt i32 %1, 2
  br label %.preheader63.split

.preheader63.split.us.preheader:                  ; preds = %.preheader63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader63.split.us

.preheader63.split.us:                            ; preds = %.preheader63.split.us.preheader, %.split.us
  %.04368.us = phi i32 [ %.1.us, %.split.us ], [ 73, %.preheader63.split.us.preheader ] ; 2 uses
  %.04467.us = phi i32 [ %.145.us, %.split.us ], [ 0, %.preheader63.split.us.preheader ] ; 2 uses
  %i.i = add nsw i32 %.04368.us, %.04467.us
  %i.j = sdiv i32 %i.i, 2                         ; 3 uses
  %i.k = mul nsw i32 %i.j, 5
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL18ucase_props_unfold, i64 10), i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = load i16, ptr %i.m, align 2, !tbaa !18   ; 3 uses
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.preheader63.split.us
  %i.q = load i16, ptr %0, align 2, !tbaa !18     ; 2 uses
  %.not.i.us = icmp eq i16 %i.q, %i.o
  br i1 %.not.i.us, label %bb.c, label %_ZL9strcmpMaxPKDsiS0_i.exit.us

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.s = load i16, ptr %i.n, align 2, !tbaa !18   ; 3 uses
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %.split.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i16, ptr %i.g, align 2, !tbaa !18   ; 2 uses
  %.not.i.us.1 = icmp eq i16 %i.u, %i.s
  br i1 %.not.i.us.1, label %bb.e, label %_ZL9strcmpMaxPKDsiS0_i.exit.us

bb.e:                                             ; preds = %bb.d
  %i.v = load i16, ptr %i.r, align 2, !tbaa !18   ; 3 uses
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i16, ptr %i.h, align 2, !tbaa !18   ; 2 uses
  %.not.i.us.2 = icmp eq i16 %i.x, %i.v
  br i1 %.not.i.us.2, label %.preheader, label %_ZL9strcmpMaxPKDsiS0_i.exit.us

_ZL9strcmpMaxPKDsiS0_i.exit.us:                   ; preds = %bb.f, %bb.d, %bb.b
  %.lcssa111 = phi i16 [ %i.q, %bb.b ], [ %i.u, %bb.d ], [ %i.x, %bb.f ]
  %.lcssa109 = phi i16 [ %i.o, %bb.b ], [ %i.s, %bb.d ], [ %i.v, %bb.f ]
  %i.y = icmp ult i16 %.lcssa111, %.lcssa109
  br label %.split.us

.split.us:                                        ; preds = %.preheader63.split.us, %bb.c, %bb.e, %_ZL9strcmpMaxPKDsiS0_i.exit.us
  %.015.i60.us = phi i1 [ %i.y, %_ZL9strcmpMaxPKDsiS0_i.exit.us ], [ false, %bb.e ], [ false, %bb.c ], [ false, %.preheader63.split.us ] ; 2 uses
  %i.z = add nsw i32 %i.j, 1
  %.145.us = select i1 %.015.i60.us, i32 %.04467.us, i32 %i.z ; 2 uses
  %.1.us = select i1 %.015.i60.us, i32 %i.j, i32 %.04368.us ; 2 uses
  %i.aa = icmp slt i32 %.145.us, %.1.us
  br i1 %i.aa, label %.preheader63.split.us, label %.critedge

.preheader63.split:                               ; preds = %.preheader63.split.preheader, %.split
  %.04368 = phi i32 [ %.1, %.split ], [ 73, %.preheader63.split.preheader ] ; 2 uses
  %.04467 = phi i32 [ %.145, %.split ], [ 0, %.preheader63.split.preheader ] ; 2 uses
  %i.ab = add nsw i32 %.04368, %.04467
  %i.ac = sdiv i32 %i.ab, 2                       ; 3 uses
  %i.ad = mul nsw i32 %i.ac, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL18ucase_props_unfold, i64 10), i64 %i.ae ; 5 uses
  %scevgep.i = getelementptr i8, ptr %i.af, i64 %i.e
  %scevgep.i.a = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %7 = load i16, ptr %i.af, align 2, !tbaa !18    ; 2 uses
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %.split, label %bb.g

bb.g:                                             ; preds = %.preheader63.split
  %9 = zext i16 %7 to i32
  %10 = load i16, ptr %0, align 2, !tbaa !18
  %11 = zext i16 %10 to i32
  %12 = sub nsw i32 %11, %9                       ; 2 uses
  %i.ag = icmp eq i32 %12, 0
  br i1 %i.ag, label %13, label %_ZL9strcmpMaxPKDsiS0_i.exit

13:                                               ; preds = %bb.g
  br i1 %4, label %14, label %bb.j

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %16 = load i16, ptr %scevgep.i.a, align 2, !tbaa !18 ; 2 uses
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %.split, label %bb.h

bb.h:                                             ; preds = %14
  %i.ah = zext i16 %16 to i32
  %i.ai = load i16, ptr %3, align 2, !tbaa !18
  %i.aj = zext i16 %i.ai to i32
  %i.ak = sub nsw i32 %i.aj, %i.ah                ; 2 uses
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %18, label %_ZL9strcmpMaxPKDsiS0_i.exit

18:                                               ; preds = %bb.h
  br i1 %6, label %19, label %bb.j

19:                                               ; preds = %18
  %20 = load i16, ptr %15, align 2, !tbaa !18     ; 2 uses
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %.split, label %bb.i

bb.i:                                             ; preds = %19
  %22 = zext i16 %20 to i32
  %23 = load i16, ptr %5, align 2, !tbaa !18
  %24 = zext i16 %23 to i32
  %25 = sub nsw i32 %24, %22                      ; 2 uses
  %.not.i.2 = icmp eq i32 %25, 0
  br i1 %.not.i.2, label %bb.j, label %_ZL9strcmpMaxPKDsiS0_i.exit

bb.j:                                             ; preds = %bb.i, %18, %13
  %i.al = load i16, ptr %scevgep.i, align 2, !tbaa !18
  %i.am = icmp ne i16 %i.al, 0
  %spec.select.i = sext i1 %i.am to i32
  br label %_ZL9strcmpMaxPKDsiS0_i.exit

_ZL9strcmpMaxPKDsiS0_i.exit:                      ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.015.i = phi i32 [ %spec.select.i, %bb.j ], [ %12, %bb.g ], [ %i.ak, %bb.h ], [ %25, %bb.i ] ; 2 uses
  %.not56 = icmp eq i32 %.015.i, 0
  br i1 %.not56, label %.preheader, label %.split

.preheader:                                       ; preds = %_ZL9strcmpMaxPKDsiS0_i.exit, %bb.f
  %.us-phi = phi ptr [ %i.m, %bb.f ], [ %i.af, %_ZL9strcmpMaxPKDsiS0_i.exit ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi, i64 6
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !18 ; 2 uses
  %i.aq = zext i16 %i.ap to i32                   ; 4 uses
  %.not.peel = icmp eq i16 %i.ap, 0
  br i1 %.not.peel, label %.critedge, label %bb.k, !llvm.loop !31

bb.k:                                             ; preds = %.preheader
  %i.ar = and i32 %i.aq, 64512
  %.not122 = icmp eq i32 %i.ar, 55296
  br i1 %.not122, label %bb.l, label %.peel.next.critedge

bb.l:                                             ; preds = %bb.k
  %i.as = shl nuw nsw i32 %i.aq, 10
  %i.at = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %i.au = load i16, ptr %i.at, align 2, !tbaa !18
  %i.av = zext i16 %i.au to i32
  %i.aw = add nsw i32 %i.as, -56613888
  %i.ax = add nuw nsw i32 %i.aw, %i.av            ; 2 uses
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.az = load ptr, ptr %2, align 8, !tbaa !12
  tail call void %i.ay(ptr noundef %i.az, i32 noundef %i.ax)
  tail call void @ucase_addCaseClosure_78(i32 noundef %i.ax, ptr noundef nonnull %2)
  br label %.critedge

.peel.next.critedge:                              ; preds = %bb.k
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.bb = load ptr, ptr %2, align 8, !tbaa !12
  tail call void %i.ba(ptr noundef %i.bb, i32 noundef %i.aq)
  tail call void @ucase_addCaseClosure_78(i32 noundef %i.aq, ptr noundef nonnull %2)
  %i.bc = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !18 ; 2 uses
  %i.be = zext i16 %i.bd to i32                   ; 3 uses
  %.not = icmp eq i16 %i.bd, 0
  %i.bf = and i32 %i.be, 64512
  %i.bg = icmp eq i32 %i.bf, 55296
  %i.bh = shl nuw nsw i32 %i.be, 10
  %i.bi = getelementptr inbounds nuw i8, ptr %.us-phi, i64 10
  %i.bj = add nsw i32 %i.bh, -56613888
  br i1 %.not, label %.critedge, label %bb.m, !llvm.loop !31

bb.m:                                             ; preds = %.peel.next.critedge
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = load i16, ptr %i.bi, align 2, !tbaa !18
  %i.bl = zext i16 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bj, %i.bl
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i32 [ %i.bm, %bb.n ], [ %i.be, %bb.m ] ; 2 uses
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.bo = load ptr, ptr %2, align 8, !tbaa !12
  tail call void %i.bn(ptr noundef %i.bo, i32 noundef %.0)
  tail call void @ucase_addCaseClosure_78(i32 noundef %.0, ptr noundef nonnull %2)
  br label %.critedge, !llvm.loop !32

.split:                                           ; preds = %.preheader63.split, %14, %19, %_ZL9strcmpMaxPKDsiS0_i.exit
  %.015.i60 = phi i32 [ %.015.i, %_ZL9strcmpMaxPKDsiS0_i.exit ], [ 1, %19 ], [ 1, %14 ], [ 1, %.preheader63.split ]
  %i.bp = icmp slt i32 %.015.i60, 0               ; 2 uses
  %i.bq = add nsw i32 %i.ac, 1
  %.145 = select i1 %i.bp, i32 %.04467, i32 %i.bq ; 2 uses
  %.1 = select i1 %i.bp, i32 %i.ac, i32 %.04368   ; 2 uses
  %i.br = icmp slt i32 %.145, %.1
  br i1 %i.br, label %.preheader63.split, label %.critedge

.critedge:                                        ; preds = %bb.l, %.split, %.split.us, %.preheader, %bb.o, %.peel.next.critedge, %bb.a
  %.3 = phi i8 [ 1, %.preheader ], [ 0, %bb.a ], [ 0, %.split.us ], [ 1, %.peel.next.critedge ], [ 1, %bb.o ], [ 1, %bb.l ], [ 0, %.split ]
  ret i8 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7823FullCaseFoldingIteratorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 73, i32 5, i32 3, i32 0>, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 3, ptr %i.b, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ucase_props_unfold, i64 10), ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 10559488) i32 @_ZN6icu_7823FullCaseFoldingIterator4nextERNS_13UnicodeStringE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35   ; 3 uses
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %.not = icmp slt i32 %i.j, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !18
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !34
  %i.p = sext i32 %i.e to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !36
  store i32 %i.s, ptr %i.i, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi i32 [ %i.o, %bb.c ], [ %i.c, %bb.b ]
  %.018 = phi ptr [ %i.q, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !37
  %.not21 = icmp slt i32 %i.t, %i.v
  br i1 %.not21, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !36   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.01922 = phi i32 [ %i.ae, %bb.f ], [ %i.x, %bb.e ] ; 4 uses
  %i.z = zext nneg i32 %.01922 to i64
  %i.aa = getelementptr [2 x i8], ptr %.018, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !18
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %i.ae = add nsw i32 %.01922, -1
  %i.af = icmp sgt i32 %.01922, 1
  br i1 %i.af, label %.lr.ph, label %.critedge, !llvm.loop !33

.critedge:                                        ; preds = %.lr.ph, %bb.f, %bb.e
  %.019.lcssa = phi i32 [ %i.x, %bb.e ], [ 0, %bb.f ], [ %.01922, %.lr.ph ]
  store ptr %.018, ptr %2, align 8, !tbaa !39
  %i.ag = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext 0, ptr noundef nonnull align 8 %2, i32 noundef %.019.lcssa)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %.critedge
  %i.ah = load ptr, ptr %2, align 8, !tbaa !39
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ah) #6, !srcloc !40
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !23  ; 3 uses
  %i.aj = add nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.i, align 8, !tbaa !23
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %.018, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !18
  %i.an = zext i16 %i.am to i32                   ; 3 uses
  %i.ao = and i32 %i.an, 64512
  %i.ap = icmp eq i32 %i.ao, 55296
  br i1 %i.ap, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aq = shl nuw nsw i32 %i.an, 10
  %i.ar = add nsw i32 %i.ai, 2
  store i32 %i.ar, ptr %i.i, align 8, !tbaa !23
  %i.as = sext i32 %i.aj to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %.018, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !18
  %i.av = zext i16 %i.au to i32
  %i.aw = add nsw i32 %i.aq, -56613888
  %i.ax = add nuw nsw i32 %i.aw, %i.av
  br label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %2, align 8, !tbaa !39
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.az) #6, !srcloc !40
  resume { ptr, i32 } %i.ay

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.d
  %.017 = phi i32 [ -1, %bb.d ], [ %i.ax, %bb.h ], [ %i.an, %bb.g ]
  ret i32 %.017
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 4) i32 @ucase_getType_78(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.g, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink16 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !15
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15
  %i.ad = and i16 %i.ac, 3
  %i.ae = zext nneg i16 %i.ad to i32
  ret i32 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 8) i32 @ucase_getTypeOrIgnorable_78(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.g, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink16 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !15
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15
  %i.ad = and i16 %i.ac, 7
  %i.ae = zext nneg i16 %i.ad to i32
  ret i32 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @ucase_isSoftDotted_78(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.d, %bb.b
  %.sink21.i = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink21.i to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !15
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split.i ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = and i32 %i.ad, 8
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = and i32 %i.ad, 96
  br label %_ZL10getDotTypei.exit
end_hunk_0
begin_hunk_1_@ucase_getCaseLocale_78:bb.a
bb.an:                                            ; preds = %bb.am
  %i.bn = load i8, ptr %.3281, align 1, !tbaa !16
  switch i8 %i.bn, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.ao:                                            ; preds = %bb.ab
  %i.bo = load i8, ptr %i.a, align 1, !tbaa !16
  %i.bp = and i8 %i.bo, -33
  %or.cond110 = icmp eq i8 %i.bp, 76
  br i1 %or.cond110, label %bb.ap, label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16  ; 2 uses
  %i.bs = and i8 %i.br, -33
  %or.cond113 = icmp eq i8 %i.bs, 76
  br i1 %or.cond113, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.9 = phi i8 [ %i.bu, %bb.aq ], [ %i.br, %bb.ap ]
  switch i8 %.9, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.as:                                            ; preds = %bb.ab
  %i.bv = load i8, ptr %i.a, align 1, !tbaa !16
  %i.bw = and i8 %i.bv, -33
  %or.cond122 = icmp eq i8 %i.bw, 76
  br i1 %or.cond122, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16  ; 2 uses
  %i.bz = and i8 %i.by, -33
  %or.cond125 = icmp eq i8 %i.bz, 68
  br i1 %or.cond125, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.10 = phi i8 [ %i.cb, %bb.au ], [ %i.by, %bb.at ]
  switch i8 %.10, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.aw:                                            ; preds = %bb.ab
  %i.cc = load i8, ptr %i.a, align 1, !tbaa !16
  %i.cd = and i8 %i.cc, -33
  %or.cond134 = icmp eq i8 %i.cd, 89
  br i1 %or.cond134, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16  ; 2 uses
  %i.cg = and i8 %i.cf, -33
  %or.cond137 = icmp eq i8 %i.cg, 69
  br i1 %or.cond137, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.11 = phi i8 [ %i.ci, %bb.ay ], [ %i.cf, %bb.ax ]
  switch i8 %.11, label %bb.ba [
    i8 95, label %bb.bb
    i8 45, label %bb.bb
    i8 0, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az, %bb.ab, %bb.av, %bb.ar, %bb.an, %bb.aj, %bb.af, %bb.aa, %bb.g, %bb.w, %bb.s, %bb.o, %bb.k, %bb.e, %bb.ae, %bb.am, %bb.as, %bb.aw, %bb.ao, %bb.ag, %bb.j, %bb.r, %bb.x, %bb.t, %bb.l, %bb.b
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.av, %bb.av, %bb.av, %bb.ar, %bb.ar, %bb.ar, %bb.an, %bb.an, %bb.an, %bb.aj, %bb.aj, %bb.aj, %bb.af, %bb.af, %bb.af, %bb.aa, %bb.aa, %bb.aa, %bb.w, %bb.w, %bb.w, %bb.s, %bb.s, %bb.s, %bb.o, %bb.o, %bb.o, %bb.k, %bb.k, %bb.k, %bb.a, %bb.e, %bb.e, %bb.e, %bb.ba
  %.0282 = phi i32 [ 5, %bb.av ], [ 1, %bb.ba ], [ 4, %bb.e ], [ 1, %bb.a ], [ 2, %bb.k ], [ 2, %bb.o ], [ 3, %bb.s ], [ 5, %bb.w ], [ 6, %bb.aa ], [ 2, %bb.af ], [ 2, %bb.aj ], [ 3, %bb.an ], [ 4, %bb.ar ], [ 4, %bb.e ], [ 4, %bb.e ], [ 2, %bb.k ], [ 2, %bb.k ], [ 2, %bb.o ], [ 2, %bb.o ], [ 3, %bb.s ], [ 3, %bb.s ], [ 5, %bb.w ], [ 5, %bb.w ], [ 6, %bb.aa ], [ 6, %bb.aa ], [ 2, %bb.af ], [ 2, %bb.af ], [ 2, %bb.aj ], [ 2, %bb.aj ], [ 3, %bb.an ], [ 3, %bb.an ], [ 4, %bb.ar ], [ 4, %bb.ar ], [ 5, %bb.av ], [ 5, %bb.av ], [ 6, %bb.az ], [ 6, %bb.az ], [ 6, %bb.az ]
  ret i32 %.0282
}

; Function Attrs: mustprogress uwtable
define i32 @ucase_toFullLower_78(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %3, align 8, !tbaa !25
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.g, %bb.d
  %.sink207 = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink207 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !15
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15 ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 4 uses
  %i.ae = and i32 %i.ad, 8
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = and i32 %i.ad, 2
  %.not129 = icmp eq i32 %i.af, 0
  br i1 %.not129, label %_ZL14isPrecededBy_IPFiPvaES_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = ashr i16 %i.ac, 7
  %i.ah = sext i16 %i.ag to i32
  %i.ai = add nsw i32 %0, %i.ah
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit

bb.k:                                             ; preds = %bb.h
  %i.aj = lshr i32 %i.ad, 4
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2 ; 6 uses
  %i.an = load i16, ptr %i.al, align 2, !tbaa !15
  %i.ao = zext i16 %i.an to i32                   ; 10 uses
  %i.ap = and i32 %i.ao, 16384
  %.not130 = icmp eq i32 %i.ap, 0
  br i1 %.not130, label %bb.co, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i32 %4, 3
  br i1 %i.aq, label %bb.m, label %bb.ao

bb.m:                                             ; preds = %bb.l
  switch i32 %0, label %.thread178 [
    i32 302, label %bb.n
    i32 74, label %bb.n
    i32 73, label %bb.n
    i32 204, label %bb.al
    i32 205, label %bb.am
    i32 296, label %bb.an
    i32 304, label %bb.ck
    i32 931, label %bb.cm
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.ar = icmp eq ptr %1, null
  br i1 %i.ar, label %.loopexit11.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.n
  %i.as = tail call noundef i32 %1(ptr noundef %2, i8 noundef signext 1), !inline_history !41 ; 11 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.o, label %.loopexit11.i

bb.o:                                             ; preds = %.preheader.preheader.i
  %i.au = icmp samesign ult i32 %i.as, 55296
  br i1 %i.au, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = icmp samesign ult i32 %i.as, 65536
  br i1 %i.av, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp samesign ugt i32 %i.as, 1114111
  br i1 %i.aw, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = icmp samesign ugt i32 %i.as, 919551
  br i1 %i.ax, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = lshr i32 %i.as, 11
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4160
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !15
  %i.bd = zext i16 %i.bc to i32
  %i.be = lshr i32 %i.as, 5
  %i.bf = and i32 %i.be, 63
  %i.bg = add nuw nsw i32 %i.bf, %i.bd
  br label %.sink.split.i.peel.i

bb.t:                                             ; preds = %bb.p
  %i.bh = icmp samesign ult i32 %i.as, 56320
  %i.bi = select i1 %i.bh, i32 320, i32 0
  %i.bj = lshr i32 %i.as, 5
  %i.bk = add nuw nsw i32 %i.bi, %i.bj
  br label %.sink.split.i.peel.i

bb.u:                                             ; preds = %bb.o
  %i.bl = lshr i32 %i.as, 5
  br label %.sink.split.i.peel.i

.sink.split.i.peel.i:                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink21.i.peel.i = phi i32 [ %i.bk, %bb.t ], [ %i.bg, %bb.s ], [ %i.bl, %bb.u ]
  %i.bm = zext nneg i32 %.sink21.i.peel.i to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !15
  %i.bp = zext i16 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 2
  %i.br = and i32 %i.as, 31
  %i.bs = add nuw nsw i32 %i.bq, %i.br
  %i.bt = zext nneg i32 %i.bs to i64
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i.peel.i, %bb.r, %bb.q
  %i.bu = phi i64 [ 3596, %bb.q ], [ 13540, %bb.r ], [ %i.bt, %.sink.split.i.peel.i ]
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.bx = zext i16 %i.bw to i32                   ; 3 uses
  %i.by = and i32 %i.bx, 8
  %.not.i.peel.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.peel.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = lshr i32 %i.bx, 4
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !15
  %i.cd = lshr i16 %i.cc, 7
  %i.ce = and i16 %i.cd, 96
  %i.cf = zext nneg i16 %i.ce to i32
  br label %_ZL10getDotTypei.exit.peel.i

bb.x:                                             ; preds = %bb.v
  %i.cg = and i32 %i.bx, 96
  br label %_ZL10getDotTypei.exit.peel.i

_ZL10getDotTypei.exit.peel.i:                     ; preds = %bb.x, %bb.w
  %.0.i.peel.i = phi i32 [ %i.cf, %bb.w ], [ %i.cg, %bb.x ]
  switch i32 %.0.i.peel.i, label %.loopexit11.i [
    i32 64, label %_ZL21isFollowedByMoreAbovePFiPvaES_.exit
    i32 96, label %.preheader.i
  ]

.preheader.i:                                     ; preds = %_ZL10getDotTypei.exit.peel.i, %_ZL10getDotTypei.exit.i
  %i.ch = tail call noundef i32 %1(ptr noundef %2, i8 noundef signext 0), !inline_history !41 ; 11 uses
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.y, label %.loopexit11.i

bb.y:                                             ; preds = %.preheader.i
  %i.cj = icmp samesign ult i32 %i.ch, 55296
  br i1 %i.cj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ck = lshr i32 %i.ch, 5
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cl = icmp samesign ult i32 %i.ch, 65536
  br i1 %i.cl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cm = icmp samesign ult i32 %i.ch, 56320
  %i.cn = select i1 %i.cm, i32 320, i32 0
  %i.co = lshr i32 %i.ch, 5
  %i.cp = add nuw nsw i32 %i.cn, %i.co
  br label %.sink.split.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cq = icmp samesign ugt i32 %i.ch, 1114111
  br i1 %i.cq, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = icmp samesign ugt i32 %i.ch, 919551
  br i1 %i.cr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = lshr i32 %i.ch, 11
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4160
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !15
  %i.cx = zext i16 %i.cw to i32
  %i.cy = lshr i32 %i.ch, 5
  %i.cz = and i32 %i.cy, 63
  %i.da = add nuw nsw i32 %i.cz, %i.cx
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ae, %bb.ab, %bb.z
  %.sink21.i.i = phi i32 [ %i.cp, %bb.ab ], [ %i.da, %bb.ae ], [ %i.ck, %bb.z ]
  %i.db = zext nneg i32 %.sink21.i.i to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !15
  %i.de = zext i16 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 2
  %i.dg = and i32 %i.ch, 31
  %i.dh = add nuw nsw i32 %i.df, %i.dg
  %i.di = zext nneg i32 %i.dh to i64
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i.i, %bb.ad, %bb.ac
  %i.dj = phi i64 [ 3596, %bb.ac ], [ 13540, %bb.ad ], [ %i.di, %.sink.split.i.i ]
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !15
  %i.dm = zext i16 %i.dl to i32                   ; 3 uses
  %i.dn = and i32 %i.dm, 8
  %.not.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.do = and i32 %i.dm, 96
  br label %_ZL10getDotTypei.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.dp = lshr i32 %i.dm, 4
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !15
  %i.dt = lshr i16 %i.ds, 7
  %i.du = and i16 %i.dt, 96
  %i.dv = zext nneg i16 %i.du to i32
  br label %_ZL10getDotTypei.exit.i

_ZL10getDotTypei.exit.i:                          ; preds = %bb.ah, %bb.ag
  %.0.i.i = phi i32 [ %i.dv, %bb.ah ], [ %i.do, %bb.ag ]
  switch i32 %.0.i.i, label %.loopexit11.i [
    i32 64, label %_ZL21isFollowedByMoreAbovePFiPvaES_.exit
    i32 96, label %.preheader.i
  ], !llvm.loop !42

.loopexit11.i:                                    ; preds = %.preheader.i, %_ZL10getDotTypei.exit.i, %.preheader.preheader.i, %_ZL10getDotTypei.exit.peel.i, %bb.n
  switch i32 %0, label %bb.ao [
    i32 205, label %bb.am
    i32 296, label %bb.an
  ]

_ZL21isFollowedByMoreAbovePFiPvaES_.exit:         ; preds = %_ZL10getDotTypei.exit.i, %_ZL10getDotTypei.exit.peel.i
  switch i32 %0, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180 [
    i32 73, label %bb.ai
    i32 74, label %bb.aj
    i32 302, label %bb.ak
    i32 204, label %bb.al
    i32 205, label %bb.am
    i32 296, label %bb.an
  ]

bb.ai:                                            ; preds = %_ZL21isFollowedByMoreAbovePFiPvaES_.exit
  store ptr @_ZL4iDot, ptr %3, align 8, !tbaa !25
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.aj:                                            ; preds = %_ZL21isFollowedByMoreAbovePFiPvaES_.exit
  store ptr @_ZL4jDot, ptr %3, align 8, !tbaa !25
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.ak:                                            ; preds = %_ZL21isFollowedByMoreAbovePFiPvaES_.exit
  store ptr @_ZL10iOgonekDot, ptr %3, align 8, !tbaa !25
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.al:                                            ; preds = %bb.m, %_ZL21isFollowedByMoreAbovePFiPvaES_.exit
  store ptr @_ZL9iDotGrave, ptr %3, align 8, !tbaa !25
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.am:                                            ; preds = %bb.m, %.loopexit11.i, %_ZL21isFollowedByMoreAbovePFiPvaES_.exit
  store ptr @_ZL9iDotAcute, ptr %3, align 8, !tbaa !25
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.an:                                            ; preds = %bb.m, %.loopexit11.i, %_ZL21isFollowedByMoreAbovePFiPvaES_.exit
  store ptr @_ZL9iDotTilde, ptr %3, align 8, !tbaa !25
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.ao:                                            ; preds = %.loopexit11.i, %bb.l
  %i.dw = icmp eq i32 %4, 2                       ; 3 uses
  %i.dx = icmp eq i32 %0, 304                     ; 4 uses
  %or.cond11 = and i1 %i.dx, %i.dw
  br i1 %or.cond11, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dy = icmp eq i32 %0, 775
  %or.cond14 = and i1 %i.dy, %i.dw
  br i1 %or.cond14, label %bb.aq, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.dz = icmp eq ptr %1, null
  br i1 %i.dz, label %_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread185, label %.preheader.preheader.i142

.preheader.preheader.i142:                        ; preds = %bb.aq
  %i.ea = tail call noundef i32 %1(ptr noundef %2, i8 noundef signext -1), !inline_history !43 ; 12 uses
  %i.eb = icmp sgt i32 %i.ea, -1
  br i1 %i.eb, label %bb.ar, label %_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread185

bb.ar:                                            ; preds = %.preheader.preheader.i142
  %i.ec = icmp eq i32 %i.ea, 73
  br i1 %i.ec, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ed = icmp samesign ult i32 %i.ea, 55296
  br i1 %i.ed, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = icmp samesign ult i32 %i.ea, 65536
  br i1 %i.ee, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = icmp samesign ugt i32 %i.ea, 1114111
  br i1 %i.ef, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = icmp samesign ugt i32 %i.ea, 919551
  br i1 %i.eg, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eh = lshr i32 %i.ea, 11
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4160
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !15
  %i.em = zext i16 %i.el to i32
  %i.en = lshr i32 %i.ea, 5
  %i.eo = and i32 %i.en, 63
  %i.ep = add nuw nsw i32 %i.eo, %i.em
  br label %.sink.split.i.peel.i144

bb.ax:                                            ; preds = %bb.at
  %i.eq = icmp samesign ult i32 %i.ea, 56320
  %i.er = select i1 %i.eq, i32 320, i32 0
  %i.es = lshr i32 %i.ea, 5
  %i.et = add nuw nsw i32 %i.er, %i.es
  br label %.sink.split.i.peel.i144

bb.ay:                                            ; preds = %bb.as
  %i.eu = lshr i32 %i.ea, 5
  br label %.sink.split.i.peel.i144

.sink.split.i.peel.i144:                          ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sink21.i.peel.i145 = phi i32 [ %i.et, %bb.ax ], [ %i.ep, %bb.aw ], [ %i.eu, %bb.ay ]
  %i.ev = zext nneg i32 %.sink21.i.peel.i145 to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !15
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 2
  %i.fa = and i32 %i.ea, 31
  %i.fb = add nuw nsw i32 %i.ez, %i.fa
  %i.fc = zext nneg i32 %i.fb to i64
  br label %bb.az

bb.az:                                            ; preds = %.sink.split.i.peel.i144, %bb.av, %bb.au
  %i.fd = phi i64 [ 3596, %bb.au ], [ 13540, %bb.av ], [ %i.fc, %.sink.split.i.peel.i144 ]
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !15
  %i.fg = zext i16 %i.ff to i32                   ; 3 uses
  %i.fh = and i32 %i.fg, 8
  %.not.i.peel.i146 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.peel.i146, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fi = lshr i32 %i.fg, 4
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !15
  %i.fm = lshr i16 %i.fl, 7
  %i.fn = and i16 %i.fm, 96
  %i.fo = zext nneg i16 %i.fn to i32
  br label %_ZL10getDotTypei.exit.peel.i147

bb.bb:                                            ; preds = %bb.az
  %i.fp = and i32 %i.fg, 96
  br label %_ZL10getDotTypei.exit.peel.i147

_ZL10getDotTypei.exit.peel.i147:                  ; preds = %bb.bb, %bb.ba
  %.0.i.peel.i148 = phi i32 [ %i.fo, %bb.ba ], [ %i.fp, %bb.bb ]
  %.not.peel.i = icmp eq i32 %.0.i.peel.i148, 96
  br i1 %.not.peel.i, label %.preheader.i149, label %_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread185

.preheader.i149:                                  ; preds = %_ZL10getDotTypei.exit.peel.i147, %_ZL10getDotTypei.exit.i153
  %i.fq = tail call noundef i32 %1(ptr noundef %2, i8 noundef signext 0), !inline_history !43 ; 12 uses
  %i.fr = icmp sgt i32 %i.fq, -1
  br i1 %i.fr, label %bb.bc, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread

bb.bc:                                            ; preds = %.preheader.i149
  %i.fs = icmp eq i32 %i.fq, 73
  br i1 %i.fs, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ft = icmp samesign ult i32 %i.fq, 55296
  br i1 %i.ft, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fu = lshr i32 %i.fq, 5
  br label %.sink.split.i.i150

bb.bf:                                            ; preds = %bb.bd
  %i.fv = icmp samesign ult i32 %i.fq, 65536
  br i1 %i.fv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fw = icmp samesign ult i32 %i.fq, 56320
  %i.fx = select i1 %i.fw, i32 320, i32 0
  %i.fy = lshr i32 %i.fq, 5
  %i.fz = add nuw nsw i32 %i.fx, %i.fy
  br label %.sink.split.i.i150

bb.bh:                                            ; preds = %bb.bf
  %i.ga = icmp samesign ugt i32 %i.fq, 1114111
  br i1 %i.ga, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gb = icmp samesign ugt i32 %i.fq, 919551
  br i1 %i.gb, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gc = lshr i32 %i.fq, 11
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4160
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !15
  %i.gh = zext i16 %i.gg to i32
  %i.gi = lshr i32 %i.fq, 5
  %i.gj = and i32 %i.gi, 63
  %i.gk = add nuw nsw i32 %i.gj, %i.gh
  br label %.sink.split.i.i150

.sink.split.i.i150:                               ; preds = %bb.bj, %bb.bg, %bb.be
  %.sink21.i.i151 = phi i32 [ %i.fz, %bb.bg ], [ %i.gk, %bb.bj ], [ %i.fu, %bb.be ]
  %i.gl = zext nneg i32 %.sink21.i.i151 to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !15
  %i.go = zext i16 %i.gn to i32
  %i.gp = shl nuw nsw i32 %i.go, 2
  %i.gq = and i32 %i.fq, 31
  %i.gr = add nuw nsw i32 %i.gp, %i.gq
  %i.gs = zext nneg i32 %i.gr to i64
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i.i150, %bb.bi, %bb.bh
  %i.gt = phi i64 [ 3596, %bb.bh ], [ 13540, %bb.bi ], [ %i.gs, %.sink.split.i.i150 ]
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !15
  %i.gw = zext i16 %i.gv to i32                   ; 3 uses
  %i.gx = and i32 %i.gw, 8
  %.not.i.i152 = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i152, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gy = and i32 %i.gw, 96
  br label %_ZL10getDotTypei.exit.i153

bb.bm:                                            ; preds = %bb.bk
  %i.gz = lshr i32 %i.gw, 4
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !15
  %i.hd = lshr i16 %i.hc, 7
  %i.he = and i16 %i.hd, 96
  %i.hf = zext nneg i16 %i.he to i32
  br label %_ZL10getDotTypei.exit.i153

_ZL10getDotTypei.exit.i153:                       ; preds = %bb.bm, %bb.bl
  %.0.i.i154 = phi i32 [ %i.hf, %bb.bm ], [ %i.gy, %bb.bl ]
  %.not.i = icmp eq i32 %.0.i.i154, 96
  br i1 %.not.i, label %.preheader.i149, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread, !llvm.loop !44

_ZL14isPrecededBy_IPFiPvaES_.exit.thread:         ; preds = %.preheader.i149, %_ZL10getDotTypei.exit.i153, %bb.ap
  %i.hg = icmp eq i32 %0, 73
  %or.cond17 = and i1 %i.hg, %i.dw
  br i1 %or.cond17, label %bb.bn, label %_ZL20isFollowedByDotAbovePFiPvaES_.exit

bb.bn:                                            ; preds = %_ZL14isPrecededBy_IPFiPvaES_.exit.thread
  %i.hh = icmp eq ptr %1, null
  br i1 %i.hh, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180, label %.preheader.preheader.i155

.preheader.preheader.i155:                        ; preds = %bb.bn
  %i.hi = tail call noundef i32 %1(ptr noundef %2, i8 noundef signext 1), !inline_history !45 ; 12 uses
  %i.hj = icmp sgt i32 %i.hi, -1
  br i1 %i.hj, label %bb.bo, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.bo:                                            ; preds = %.preheader.preheader.i155
  %i.hk = icmp eq i32 %i.hi, 775
  br i1 %i.hk, label %_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread177, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hl = icmp samesign ult i32 %i.hi, 55296
  br i1 %i.hl, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hm = icmp samesign ult i32 %i.hi, 65536
  br i1 %i.hm, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hn = icmp samesign ugt i32 %i.hi, 1114111
  br i1 %i.hn, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ho = icmp samesign ugt i32 %i.hi, 919551
  br i1 %i.ho, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hp = lshr i32 %i.hi, 11
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4160
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !15
  %i.hu = zext i16 %i.ht to i32
  %i.hv = lshr i32 %i.hi, 5
  %i.hw = and i32 %i.hv, 63
  %i.hx = add nuw nsw i32 %i.hw, %i.hu
  br label %.sink.split.i.peel.i157

bb.bu:                                            ; preds = %bb.bq
  %i.hy = icmp samesign ult i32 %i.hi, 56320
  %i.hz = select i1 %i.hy, i32 320, i32 0
  %i.ia = lshr i32 %i.hi, 5
  %i.ib = add nuw nsw i32 %i.hz, %i.ia
  br label %.sink.split.i.peel.i157

bb.bv:                                            ; preds = %bb.bp
  %i.ic = lshr i32 %i.hi, 5
  br label %.sink.split.i.peel.i157

.sink.split.i.peel.i157:                          ; preds = %bb.bv, %bb.bu, %bb.bt
  %.sink21.i.peel.i158 = phi i32 [ %i.ib, %bb.bu ], [ %i.hx, %bb.bt ], [ %i.ic, %bb.bv ]
  %i.id = zext nneg i32 %.sink21.i.peel.i158 to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.id
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !15
  %i.ig = zext i16 %i.if to i32
  %i.ih = shl nuw nsw i32 %i.ig, 2
  %i.ii = and i32 %i.hi, 31
  %i.ij = add nuw nsw i32 %i.ih, %i.ii
  %i.ik = zext nneg i32 %i.ij to i64
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split.i.peel.i157, %bb.bs, %bb.br
  %i.il = phi i64 [ 3596, %bb.br ], [ 13540, %bb.bs ], [ %i.ik, %.sink.split.i.peel.i157 ]
  %i.im = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !15
  %i.io = zext i16 %i.in to i32                   ; 3 uses
  %i.ip = and i32 %i.io, 8
  %.not.i.peel.i159 = icmp eq i32 %i.ip, 0
  br i1 %.not.i.peel.i159, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iq = lshr i32 %i.io, 4
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !15
  %i.iu = lshr i16 %i.it, 7
  %i.iv = and i16 %i.iu, 96
  %i.iw = zext nneg i16 %i.iv to i32
  br label %_ZL10getDotTypei.exit.peel.i160

bb.by:                                            ; preds = %bb.bw
  %i.ix = and i32 %i.io, 96
  br label %_ZL10getDotTypei.exit.peel.i160

_ZL10getDotTypei.exit.peel.i160:                  ; preds = %bb.by, %bb.bx
  %.0.i.peel.i161 = phi i32 [ %i.iw, %bb.bx ], [ %i.ix, %bb.by ]
  %.not.peel.i162 = icmp eq i32 %.0.i.peel.i161, 96
  br i1 %.not.peel.i162, label %.preheader.i163, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

.preheader.i163:                                  ; preds = %_ZL10getDotTypei.exit.peel.i160, %_ZL10getDotTypei.exit.i167
  %i.iy = tail call noundef i32 %1(ptr noundef %2, i8 noundef signext 0), !inline_history !45 ; 12 uses
  %i.iz = icmp sgt i32 %i.iy, -1
  br i1 %i.iz, label %bb.bz, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.bz:                                            ; preds = %.preheader.i163
  %i.ja = icmp eq i32 %i.iy, 775
  br i1 %i.ja, label %_ZL20isFollowedByDotAbovePFiPvaES_.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jb = icmp samesign ult i32 %i.iy, 55296
  br i1 %i.jb, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.jc = lshr i32 %i.iy, 5
  br label %.sink.split.i.i164

bb.cc:                                            ; preds = %bb.ca
  %i.jd = icmp samesign ult i32 %i.iy, 65536
  br i1 %i.jd, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.je = icmp samesign ult i32 %i.iy, 56320
  %i.jf = select i1 %i.je, i32 320, i32 0
  %i.jg = lshr i32 %i.iy, 5
  %i.jh = add nuw nsw i32 %i.jf, %i.jg
  br label %.sink.split.i.i164

bb.ce:                                            ; preds = %bb.cc
  %i.ji = icmp samesign ugt i32 %i.iy, 1114111
  br i1 %i.ji, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jj = icmp samesign ugt i32 %i.iy, 919551
  br i1 %i.jj, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jk = lshr i32 %i.iy, 11
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4160
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !15
  %i.jp = zext i16 %i.jo to i32
  %i.jq = lshr i32 %i.iy, 5
  %i.jr = and i32 %i.jq, 63
  %i.js = add nuw nsw i32 %i.jr, %i.jp
  br label %.sink.split.i.i164

.sink.split.i.i164:                               ; preds = %bb.cg, %bb.cd, %bb.cb
  %.sink21.i.i165 = phi i32 [ %i.jh, %bb.cd ], [ %i.js, %bb.cg ], [ %i.jc, %bb.cb ]
  %i.jt = zext nneg i32 %.sink21.i.i165 to i64
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.jt
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !15
  %i.jw = zext i16 %i.jv to i32
  %i.jx = shl nuw nsw i32 %i.jw, 2
  %i.jy = and i32 %i.iy, 31
  %i.jz = add nuw nsw i32 %i.jx, %i.jy
  %i.ka = zext nneg i32 %i.jz to i64
  br label %bb.ch

bb.ch:                                            ; preds = %.sink.split.i.i164, %bb.cf, %bb.ce
  %i.kb = phi i64 [ 3596, %bb.ce ], [ 13540, %bb.cf ], [ %i.ka, %.sink.split.i.i164 ]
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !15
  %i.ke = zext i16 %i.kd to i32                   ; 3 uses
  %i.kf = and i32 %i.ke, 8
  %.not.i.i166 = icmp eq i32 %i.kf, 0
  br i1 %.not.i.i166, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kg = and i32 %i.ke, 96
  br label %_ZL10getDotTypei.exit.i167

bb.cj:                                            ; preds = %bb.ch
  %i.kh = lshr i32 %i.ke, 4
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !15
  %i.kl = lshr i16 %i.kk, 7
  %i.km = and i16 %i.kl, 96
  %i.kn = zext nneg i16 %i.km to i32
  br label %_ZL10getDotTypei.exit.i167

_ZL10getDotTypei.exit.i167:                       ; preds = %bb.cj, %bb.ci
  %.0.i.i168 = phi i32 [ %i.kn, %bb.cj ], [ %i.kg, %bb.ci ]
  %.not.i169 = icmp eq i32 %.0.i.i168, 96
  br i1 %.not.i169, label %.preheader.i163, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180, !llvm.loop !46

_ZL20isFollowedByDotAbovePFiPvaES_.exit:          ; preds = %bb.bz, %_ZL14isPrecededBy_IPFiPvaES_.exit.thread
  br i1 %i.dx, label %bb.ck, label %bb.cl

_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread185: ; preds = %bb.aq, %.preheader.preheader.i142, %_ZL10getDotTypei.exit.peel.i147
  br i1 %i.dx, label %bb.ck, label %.thread178

_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread177: ; preds = %bb.bo
  br i1 %i.dx, label %bb.ck, label %.thread178

bb.ck:                                            ; preds = %bb.m, %_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread185, %_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread177, %_ZL20isFollowedByDotAbovePFiPvaES_.exit
  store ptr @_ZL4iDot, ptr %3, align 8, !tbaa !25
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.cl:                                            ; preds = %_ZL20isFollowedByDotAbovePFiPvaES_.exit
  %i.ko = icmp eq i32 %0, 931
  br i1 %i.ko, label %bb.cm, label %.thread178

bb.cm:                                            ; preds = %bb.m, %bb.cl
  %i.kp = tail call fastcc noundef signext i8 @_ZL23isFollowedByCasedLetterPFiPvaES_a(ptr noundef %1, ptr noundef %2, i8 noundef signext 1)
  %.not136 = icmp eq i8 %i.kp, 0
  br i1 %.not136, label %bb.cn, label %.thread178

bb.cn:                                            ; preds = %bb.cm
  %i.kq = tail call fastcc noundef signext i8 @_ZL23isFollowedByCasedLetterPFiPvaES_a(ptr noundef %1, ptr noundef %2, i8 noundef signext -1)
  %.not137 = icmp eq i8 %i.kq, 0
  br i1 %.not137, label %.thread178, label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.co:                                            ; preds = %bb.k
  %i.kr = and i32 %i.ao, 128
  %.not131 = icmp eq i32 %i.kr, 0
  br i1 %.not131, label %.thread178, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ks = and i32 %i.ao, 256
  %i.kt = icmp eq i32 %i.ks, 0
  %i.ku = and i32 %i.ao, 127
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !16
  %i.ky = zext i8 %i.kx to i64                    ; 2 uses
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ky
  %.idx = shl nuw nsw i64 %i.ky, 2
  %i.la = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %.0121 = select i1 %i.kt, ptr %i.kz, ptr %i.lb  ; 2 uses
  %.0120.in = load i16, ptr %.0121, align 2, !tbaa !15
  %i.lc = and i16 %.0120.in, 15                   ; 2 uses
  %.not132 = icmp eq i16 %i.lc, 0
  br i1 %.not132, label %.thread178, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ld = zext nneg i16 %i.lc to i32
  %i.le = getelementptr inbounds nuw i8, ptr %.0121, i64 2
  store ptr %i.le, ptr %3, align 8, !tbaa !25
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

.thread178:                                       ; preds = %bb.m, %_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread185, %_ZL20isFollowedByDotAbovePFiPvaES_.exit.thread177, %bb.co, %bb.cp, %bb.cl, %bb.cm, %bb.cn
  %i.lf = and i32 %i.ao, 16
  %.not138 = icmp eq i32 %i.lf, 0
  %i.lg = and i32 %i.ad, 2
  %.not139 = icmp eq i32 %i.lg, 0
  %or.cond = or i1 %.not139, %.not138
  br i1 %or.cond, label %bb.cv, label %bb.cr

bb.cr:                                            ; preds = %.thread178
  %i.lh = and i32 %i.ao, 256
  %i.li = icmp eq i32 %i.lh, 0
  %i.lj = and i32 %i.ao, 15
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !16
  %i.ln = zext i8 %i.lm to i64                    ; 2 uses
  br i1 %i.li, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !15
  %i.lq = zext i16 %i.lp to i32
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %.idx141 = shl nuw nsw i64 %i.ln, 2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx141 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 2
  %i.lt = load i16, ptr %i.lr, align 2, !tbaa !15
  %i.lu = zext i16 %i.lt to i32
  %i.lv = shl nuw i32 %i.lu, 16
  %i.lw = load i16, ptr %i.ls, align 2, !tbaa !15
  %i.lx = zext i16 %i.lw to i32
  %i.ly = or disjoint i32 %i.lv, %i.lx
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0 = phi i32 [ %i.lq, %bb.cs ], [ %i.ly, %bb.ct ] ; 2 uses
  %i.lz = and i32 %i.ao, 1024
  %i.ma = icmp eq i32 %i.lz, 0
  %i.mb = sub i32 0, %.0
  %.p = select i1 %i.ma, i32 %.0, i32 %i.mb
  %i.mc = add i32 %.p, %0
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

bb.cv:                                            ; preds = %.thread178
  %i.md = and i32 %i.ao, 1
  %.not140 = icmp eq i32 %i.md, 0
  br i1 %.not140, label %_ZL14isPrecededBy_IPFiPvaES_.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.me = and i32 %i.ao, 256
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.mg = load i16, ptr %i.am, align 2, !tbaa !15
  %i.mh = zext i16 %i.mg to i32
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit

bb.cy:                                            ; preds = %bb.cw
  %i.mi = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.mj = load i16, ptr %i.am, align 2, !tbaa !15
  %i.mk = zext i16 %i.mj to i32
  %i.ml = shl nuw i32 %i.mk, 16
  %i.mm = load i16, ptr %i.mi, align 2, !tbaa !15
  %i.mn = zext i16 %i.mm to i32
  %i.mo = or disjoint i32 %i.ml, %i.mn
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit

_ZL14isPrecededBy_IPFiPvaES_.exit:                ; preds = %bb.cx, %bb.cy, %bb.cv, %bb.i, %bb.j
  %.2 = phi i32 [ %0, %bb.i ], [ %i.ai, %bb.j ], [ %i.mo, %bb.cy ], [ %0, %bb.cv ], [ %i.mh, %bb.cx ] ; 2 uses
  %i.mp = icmp eq i32 %.2, %0
  %i.mq = sext i1 %i.mp to i32
  %i.mr = xor i32 %.2, %i.mq
  br label %_ZL14isPrecededBy_IPFiPvaES_.exit.thread180

_ZL14isPrecededBy_IPFiPvaES_.exit.thread180:      ; preds = %bb.bc, %.preheader.i163, %_ZL10getDotTypei.exit.i167, %_ZL10getDotTypei.exit.peel.i160, %.preheader.preheader.i155, %bb.bn, %bb.ar, %bb.cn, %bb.cu, %bb.ck, %bb.ao, %_ZL21isFollowedByMoreAbovePFiPvaES_.exit, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.cq, %_ZL14isPrecededBy_IPFiPvaES_.exit
  %.1124 = phi i32 [ %i.mr, %_ZL14isPrecededBy_IPFiPvaES_.exit ], [ 305, %.preheader.i163 ], [ 0, %bb.ar ], [ %i.ld, %bb.cq ], [ 962, %bb.cn ], [ %i.mc, %bb.cu ], [ 2, %bb.ck ], [ 105, %bb.ao ], [ 0, %_ZL21isFollowedByMoreAbovePFiPvaES_.exit ], [ 3, %bb.an ], [ 3, %bb.am ], [ 3, %bb.al ], [ 2, %bb.ak ], [ 2, %bb.aj ], [ 2, %bb.ai ], [ 305, %bb.bn ], [ 305, %.preheader.preheader.i155 ], [ 305, %_ZL10getDotTypei.exit.peel.i160 ], [ 305, %_ZL10getDotTypei.exit.i167 ], [ 0, %bb.bc ]
  ret i32 %.1124
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL23isFollowedByCasedLetterPFiPvaES_a(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i8 noundef signext range(i8 -1, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = tail call noundef i32 %0(ptr noundef %1, i8 noundef signext %2) ; 11 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.preheader
  %i.d = icmp samesign ult i32 %i.b, 55296
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i32 %i.b, 65536
  br i1 %i.e, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i32 %i.b, 1114111
  br i1 %i.f, label %ucase_getTypeOrIgnorable_78.exit.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i32 %i.b, 919551
  br i1 %i.g, label %ucase_getTypeOrIgnorable_78.exit.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = lshr i32 %i.b, 11
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4160
  %i.l = load i16, ptr %i.k, align 2, !tbaa !15
  %i.m = zext i16 %i.l to i32
  %i.n = lshr i32 %i.b, 5
  %i.o = and i32 %i.n, 63
  %i.p = add nuw nsw i32 %i.o, %i.m
  br label %.sink.split.i.peel

bb.g:                                             ; preds = %bb.c
  %i.q = icmp samesign ult i32 %i.b, 56320
  %i.r = select i1 %i.q, i32 320, i32 0
  %i.s = lshr i32 %i.b, 5
  %i.t = add nuw nsw i32 %i.r, %i.s
  br label %.sink.split.i.peel

bb.h:                                             ; preds = %bb.b
  %i.u = lshr i32 %i.b, 5
  br label %.sink.split.i.peel

.sink.split.i.peel:                               ; preds = %bb.h, %bb.g, %bb.f
  %.sink16.i.peel = phi i32 [ %i.t, %bb.g ], [ %i.p, %bb.f ], [ %i.u, %bb.h ]
  %i.v = zext nneg i32 %.sink16.i.peel to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !15
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 2
  %i.aa = and i32 %i.b, 31
  %i.ab = add nuw nsw i32 %i.z, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  br label %ucase_getTypeOrIgnorable_78.exit.peel

ucase_getTypeOrIgnorable_78.exit.peel:            ; preds = %.sink.split.i.peel, %bb.e, %bb.d
  %i.ad = phi i64 [ 3596, %bb.d ], [ 13540, %bb.e ], [ %i.ac, %.sink.split.i.peel ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !15
  %i.ag = and i16 %i.af, 7                        ; 2 uses
  %.not.peel = icmp samesign ugt i16 %i.ag, 3
  br i1 %.not.peel, label %.preheader, label %.loopexit.split.loop.exit

.preheader:                                       ; preds = %ucase_getTypeOrIgnorable_78.exit.peel, %ucase_getTypeOrIgnorable_78.exit
  %i.ah = tail call noundef i32 %0(ptr noundef %1, i8 noundef signext 0) ; 11 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.preheader
  %i.aj = icmp samesign ult i32 %i.ah, 55296
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = lshr i32 %i.ah, 5
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.al = icmp samesign ult i32 %i.ah, 65536
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = icmp samesign ult i32 %i.ah, 56320
  %i.an = select i1 %i.am, i32 320, i32 0
  %i.ao = lshr i32 %i.ah, 5
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.aq = icmp samesign ugt i32 %i.ah, 1114111
  br i1 %i.aq, label %ucase_getTypeOrIgnorable_78.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp samesign ugt i32 %i.ah, 919551
  br i1 %i.ar, label %ucase_getTypeOrIgnorable_78.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = lshr i32 %i.ah, 11
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4160
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !15
  %i.ax = zext i16 %i.aw to i32
  %i.ay = lshr i32 %i.ah, 5
  %i.az = and i32 %i.ay, 63
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.l, %bb.j
  %.sink16.i = phi i32 [ %i.ap, %bb.l ], [ %i.ba, %bb.o ], [ %i.ak, %bb.j ]
  %i.bb = zext nneg i32 %.sink16.i to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !15
  %i.be = zext i16 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 2
  %i.bg = and i32 %i.ah, 31
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64
  br label %ucase_getTypeOrIgnorable_78.exit

ucase_getTypeOrIgnorable_78.exit:                 ; preds = %bb.m, %bb.n, %.sink.split.i
  %i.bj = phi i64 [ 3596, %bb.m ], [ 13540, %bb.n ], [ %i.bi, %.sink.split.i ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !15
  %i.bm = and i16 %i.bl, 7                        ; 2 uses
  %.not = icmp samesign ugt i16 %i.bm, 3
  br i1 %.not, label %.preheader, label %.loopexit.split.loop.exit, !llvm.loop !47

.loopexit.split.loop.exit:                        ; preds = %ucase_getTypeOrIgnorable_78.exit, %ucase_getTypeOrIgnorable_78.exit.peel
  %.lcssa = phi i16 [ %i.ag, %ucase_getTypeOrIgnorable_78.exit.peel ], [ %i.bm, %ucase_getTypeOrIgnorable_78.exit ]
  %.not11.le = icmp ne i16 %.lcssa, 0
  %..le = zext i1 %.not11.le to i8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %.loopexit.split.loop.exit, %bb.a
  %.2 = phi i8 [ 0, %bb.a ], [ %..le, %.loopexit.split.loop.exit ], [ 0, %.preheader.preheader ], [ 0, %.preheader ]
  ret i8 %.2
}

; Function Attrs: mustprogress uwtable
define noundef i32 @ucase_toFullUpper_78(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef signext 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, i32 noundef %4, i8 noundef signext range(i8 0, 2) %5) unnamed_addr #0 {
bb.a:
  store ptr null, ptr %3, align 8, !tbaa !25
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.g, %bb.d
  %.sink143 = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink143 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !15
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15 ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 4 uses
  %i.ae = and i32 %i.ad, 8
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = and i32 %i.ad, 3
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.j, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit

bb.j:                                             ; preds = %bb.i
  %i.ah = ashr i16 %i.ac, 7
  %i.ai = sext i16 %i.ah to i32
  %i.aj = add nsw i32 %0, %i.ai
  br label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit

bb.k:                                             ; preds = %bb.h
  %i.ak = lshr i32 %i.ad, 4
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2 ; 6 uses
  %i.ao = load i16, ptr %i.am, align 2, !tbaa !15
  %i.ap = zext i16 %i.ao to i32                   ; 12 uses
  %i.aq = and i32 %i.ap, 16384
  %.not111 = icmp eq i32 %i.aq, 0
  br i1 %.not111, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i32 %4, 2
  %i.as = icmp eq i32 %0, 105
  %or.cond = and i1 %i.as, %i.ar
  br i1 %or.cond, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread131, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = icmp eq i32 %4, 3
  %i.au = icmp eq i32 %0, 775
  %or.cond3 = and i1 %i.au, %i.at
  br i1 %or.cond3, label %bb.n, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.av = icmp eq ptr %1, null
  br i1 %i.av, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.n
  %i.aw = tail call noundef i32 %1(ptr noundef %2, i8 noundef signext -1), !inline_history !48 ; 11 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.o, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread.thread

bb.o:                                             ; preds = %.preheader.preheader.i
  %i.ay = icmp samesign ult i32 %i.aw, 55296
  br i1 %i.ay, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = icmp samesign ult i32 %i.aw, 65536
  br i1 %i.az, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp samesign ugt i32 %i.aw, 1114111
  br i1 %i.ba, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp samesign ugt i32 %i.aw, 919551
  br i1 %i.bb, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = lshr i32 %i.aw, 11
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4160
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !15
  %i.bh = zext i16 %i.bg to i32
  %i.bi = lshr i32 %i.aw, 5
  %i.bj = and i32 %i.bi, 63
  %i.bk = add nuw nsw i32 %i.bj, %i.bh
  br label %.sink.split.i.peel.i

bb.t:                                             ; preds = %bb.p
  %i.bl = icmp samesign ult i32 %i.aw, 56320
  %i.bm = select i1 %i.bl, i32 320, i32 0
  %i.bn = lshr i32 %i.aw, 5
  %i.bo = add nuw nsw i32 %i.bm, %i.bn
  br label %.sink.split.i.peel.i

bb.u:                                             ; preds = %bb.o
  %i.bp = lshr i32 %i.aw, 5
  br label %.sink.split.i.peel.i

.sink.split.i.peel.i:                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink21.i.peel.i = phi i32 [ %i.bo, %bb.t ], [ %i.bk, %bb.s ], [ %i.bp, %bb.u ]
  %i.bq = zext nneg i32 %.sink21.i.peel.i to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !15
  %i.bt = zext i16 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 2
  %i.bv = and i32 %i.aw, 31
  %i.bw = add nuw nsw i32 %i.bu, %i.bv
  %i.bx = zext nneg i32 %i.bw to i64
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i.peel.i, %bb.r, %bb.q
  %i.by = phi i64 [ 3596, %bb.q ], [ 13540, %bb.r ], [ %i.bx, %.sink.split.i.peel.i ]
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !15
  %i.cb = zext i16 %i.ca to i32                   ; 3 uses
  %i.cc = and i32 %i.cb, 8
  %.not.i.peel.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.peel.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = lshr i32 %i.cb, 4
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !15
  %i.ch = lshr i16 %i.cg, 7
  %i.ci = and i16 %i.ch, 96
  %i.cj = zext nneg i16 %i.ci to i32
  br label %_ZL10getDotTypei.exit.peel.i

bb.x:                                             ; preds = %bb.v
  %i.ck = and i32 %i.cb, 96
  br label %_ZL10getDotTypei.exit.peel.i

_ZL10getDotTypei.exit.peel.i:                     ; preds = %bb.x, %bb.w
  %.0.i.peel.i = phi i32 [ %i.cj, %bb.w ], [ %i.ck, %bb.x ]
  switch i32 %.0.i.peel.i, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread.thread [
    i32 32, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread131
    i32 96, label %.preheader.i
  ]

.preheader.i:                                     ; preds = %_ZL10getDotTypei.exit.peel.i, %_ZL10getDotTypei.exit.i
  %i.cl = tail call noundef i32 %1(ptr noundef %2, i8 noundef signext 0), !inline_history !48 ; 11 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %bb.y, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread

bb.y:                                             ; preds = %.preheader.i
  %i.cn = icmp samesign ult i32 %i.cl, 55296
  br i1 %i.cn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.co = lshr i32 %i.cl, 5
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cp = icmp samesign ult i32 %i.cl, 65536
  br i1 %i.cp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cq = icmp samesign ult i32 %i.cl, 56320
  %i.cr = select i1 %i.cq, i32 320, i32 0
  %i.cs = lshr i32 %i.cl, 5
  %i.ct = add nuw nsw i32 %i.cr, %i.cs
  br label %.sink.split.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cu = icmp samesign ugt i32 %i.cl, 1114111
  br i1 %i.cu, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = icmp samesign ugt i32 %i.cl, 919551
  br i1 %i.cv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = lshr i32 %i.cl, 11
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4160
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !15
  %i.db = zext i16 %i.da to i32
  %i.dc = lshr i32 %i.cl, 5
  %i.dd = and i32 %i.dc, 63
  %i.de = add nuw nsw i32 %i.dd, %i.db
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ae, %bb.ab, %bb.z
  %.sink21.i.i = phi i32 [ %i.ct, %bb.ab ], [ %i.de, %bb.ae ], [ %i.co, %bb.z ]
  %i.df = zext nneg i32 %.sink21.i.i to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !15
  %i.di = zext i16 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 2
  %i.dk = and i32 %i.cl, 31
  %i.dl = add nuw nsw i32 %i.dj, %i.dk
  %i.dm = zext nneg i32 %i.dl to i64
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i.i, %bb.ad, %bb.ac
  %i.dn = phi i64 [ 3596, %bb.ac ], [ 13540, %bb.ad ], [ %i.dm, %.sink.split.i.i ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !15
  %i.dq = zext i16 %i.dp to i32                   ; 3 uses
  %i.dr = and i32 %i.dq, 8
  %.not.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ds = and i32 %i.dq, 96
  br label %_ZL10getDotTypei.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.dt = lshr i32 %i.dq, 4
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr @_ZL22ucase_props_exceptions, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !15
  %i.dx = lshr i16 %i.dw, 7
  %i.dy = and i16 %i.dx, 96
  %i.dz = zext nneg i16 %i.dy to i32
  br label %_ZL10getDotTypei.exit.i

_ZL10getDotTypei.exit.i:                          ; preds = %bb.ah, %bb.ag
  %.0.i.i = phi i32 [ %i.dz, %bb.ah ], [ %i.ds, %bb.ag ]
  switch i32 %.0.i.i, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread [
    i32 32, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread131
    i32 96, label %.preheader.i
  ], !llvm.loop !49

_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread: ; preds = %.preheader.i, %_ZL10getDotTypei.exit.i, %bb.m
  %i.ea = icmp eq i32 %0, 1415
  br i1 %i.ea, label %bb.ai, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread.thread

bb.ai:                                            ; preds = %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread
  %i.eb = icmp eq i32 %4, 6
  %.not123 = icmp eq i8 %5, 0                     ; 2 uses
  %.str.3..str.4 = select i1 %.not123, ptr @.str.4, ptr @.str.3
  %.str..str.2 = select i1 %.not123, ptr @.str.2, ptr @.str
  %storemerge = select i1 %i.eb, ptr %.str..str.2, ptr %.str.3..str.4
  store ptr %storemerge, ptr %3, align 8, !tbaa !25
  br label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread131

bb.aj:                                            ; preds = %bb.k
  %i.ec = and i32 %i.ap, 128
  %.not112 = icmp eq i32 %i.ec, 0
  br i1 %.not112, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = and i32 %i.ap, 256
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = and i32 %i.ap, 127
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16
  %i.ej = zext i8 %i.ei to i64                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ej
  %.idx = shl nuw nsw i64 %i.ej, 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %.0102 = select i1 %i.ee, ptr %i.ek, ptr %i.em  ; 2 uses
  %.0101.in = load i16, ptr %.0102, align 2, !tbaa !15
  %.0101 = zext i16 %.0101.in to i32              ; 4 uses
  %i.en = lshr i32 %.0101, 8                      ; 2 uses
  %.not113 = icmp eq i8 %5, 0                     ; 2 uses
  %i.eo = lshr i32 %.0101, 12
  %.1.in = select i1 %.not113, i32 %i.eo, i32 %i.en
  %.1 = and i32 %.1.in, 15                        ; 2 uses
  %.not114 = icmp eq i32 %.1, 0
  br i1 %.not114, label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ep = getelementptr inbounds nuw i8, ptr %.0102, i64 2
  %i.eq = and i32 %.0101, 15
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.er
  %i.et = lshr i32 %.0101, 4
  %i.eu = and i32 %i.et, 15
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ev
  %i.ex = and i32 %i.en, 15
  %i.ey = zext nneg i32 %i.ex to i64
  %.1103.idx = select i1 %.not113, i64 %i.ey, i64 0
  %.1103 = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %.1103.idx
  store ptr %.1103, ptr %3, align 8, !tbaa !25
  br label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread131

_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread.thread: ; preds = %bb.n, %_ZL10getDotTypei.exit.peel.i, %.preheader.preheader.i, %bb.aj, %bb.ak, %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread
  %i.ez = and i32 %i.ap, 16
  %.not116 = icmp ne i32 %i.ez, 0
  %i.fa = and i32 %i.ad, 3
  %i.fb = icmp eq i32 %i.fa, 1
  %or.cond126 = and i1 %i.fb, %.not116
  br i1 %or.cond126, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread.thread
  %i.fc = and i32 %i.ap, 256
  %i.fd = icmp eq i32 %i.fc, 0
  %i.fe = and i32 %i.ap, 15
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !16
  %i.fi = zext i8 %i.fh to i64                    ; 2 uses
  br i1 %i.fd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !15
  %i.fl = zext i16 %i.fk to i32
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %.idx122 = shl nuw nsw i64 %i.fi, 2
  %i.fm = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx122 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = load i16, ptr %i.fm, align 2, !tbaa !15
  %i.fp = zext i16 %i.fo to i32
  %i.fq = shl nuw i32 %i.fp, 16
  %i.fr = load i16, ptr %i.fn, align 2, !tbaa !15
  %i.fs = zext i16 %i.fr to i32
  %i.ft = or disjoint i32 %i.fq, %i.fs
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0 = phi i32 [ %i.fl, %bb.an ], [ %i.ft, %bb.ao ] ; 2 uses
  %i.fu = and i32 %i.ap, 1024
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = sub i32 0, %.0
  %.p = select i1 %i.fv, i32 %.0, i32 %i.fw
  %i.fx = add i32 %.p, %0
  br label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread131

bb.aq:                                            ; preds = %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread.thread
  %.not117 = icmp ne i8 %5, 0
  %i.fy = and i32 %i.ap, 8
  %.not118 = icmp eq i32 %i.fy, 0
  %or.cond127 = or i1 %.not117, %.not118
  br i1 %or.cond127, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fz = and i32 %i.ap, 4
  %.not119 = icmp eq i32 %i.fz, 0
  br i1 %.not119, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ga = xor i32 %0, -1
  br label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread131

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.0100 = phi i32 [ 3, %bb.aq ], [ 2, %bb.ar ]
  %i.gb = and i32 %i.ap, 256
  %i.gc = icmp eq i32 %i.gb, 0
  %notmask121 = shl nsw i32 -1, %.0100
  %i.gd = xor i32 %notmask121, -1
  %i.ge = and i32 %i.gd, %i.ap
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @_ZL11flagsOffset, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !16
  %i.gi = zext i8 %i.gh to i64                    ; 2 uses
  br i1 %i.gc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !15
  %i.gl = zext i16 %i.gk to i32
  br label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit

bb.av:                                            ; preds = %bb.at
  %.idx120 = shl nuw nsw i64 %i.gi, 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx120 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.go = load i16, ptr %i.gm, align 2, !tbaa !15
  %i.gp = zext i16 %i.go to i32
  %i.gq = shl nuw i32 %i.gp, 16
  %i.gr = load i16, ptr %i.gn, align 2, !tbaa !15
  %i.gs = zext i16 %i.gr to i32
  %i.gt = or disjoint i32 %i.gq, %i.gs
  br label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit

_ZL22isPrecededBySoftDottedPFiPvaES_.exit:        ; preds = %bb.av, %bb.au, %bb.i, %bb.j
  %.2 = phi i32 [ %0, %bb.i ], [ %i.aj, %bb.j ], [ %i.gt, %bb.av ], [ %i.gl, %bb.au ] ; 2 uses
  %i.gu = icmp eq i32 %.2, %0
  %i.gv = sext i1 %i.gu to i32
  %i.gw = xor i32 %.2, %i.gv
  br label %_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread131

_ZL22isPrecededBySoftDottedPFiPvaES_.exit.thread131: ; preds = %_ZL10getDotTypei.exit.i, %_ZL10getDotTypei.exit.peel.i, %bb.as, %bb.ap, %bb.ai, %bb.l, %bb.al, %_ZL22isPrecededBySoftDottedPFiPvaES_.exit
  %.1107 = phi i32 [ %i.gw, %_ZL22isPrecededBySoftDottedPFiPvaES_.exit ], [ %.1, %bb.al ], [ 0, %_ZL10getDotTypei.exit.peel.i ], [ %i.ga, %bb.as ], [ %i.fx, %bb.ap ], [ 2, %bb.ai ], [ 304, %bb.l ], [ 0, %_ZL10getDotTypei.exit.i ]
  ret i32 %.1107
}

; Function Attrs: mustprogress uwtable
define noundef i32 @ucase_toFullTitle_78(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef signext 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ucase_fold_78(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
end_hunk_1
begin_hunk_2_@ucase_hasBinaryProperty_78:bb.a
bb.ak:                                            ; preds = %bb.aj
  %i.er = lshr i32 %0, 5
  br label %.sink.split.i18

bb.al:                                            ; preds = %bb.aj
  %i.es = icmp ult i32 %0, 65536
  br i1 %i.es, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.et = icmp samesign ult i32 %0, 56320
  %i.eu = select i1 %i.et, i32 320, i32 0
  %i.ev = lshr i32 %0, 5
  %i.ew = add nuw nsw i32 %i.eu, %i.ev
  br label %.sink.split.i18

bb.an:                                            ; preds = %bb.al
  %i.ex = icmp ugt i32 %0, 1114111
  br i1 %i.ex, label %ucase_getType_78.exit20, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ey = icmp samesign ugt i32 %0, 919551
  br i1 %i.ey, label %ucase_getType_78.exit20, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ez = lshr i32 %0, 11
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4160
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !15
  %i.fe = zext i16 %i.fd to i32
  %i.ff = lshr i32 %0, 5
  %i.fg = and i32 %i.ff, 63
  %i.fh = add nuw nsw i32 %i.fg, %i.fe
  br label %.sink.split.i18

.sink.split.i18:                                  ; preds = %bb.ap, %bb.am, %bb.ak
  %.sink16.i19 = phi i32 [ %i.ew, %bb.am ], [ %i.fh, %bb.ap ], [ %i.er, %bb.ak ]
  %i.fi = zext nneg i32 %.sink16.i19 to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !15
  %i.fl = zext i16 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 2
  %i.fn = and i32 %0, 31
  %i.fo = add nuw nsw i32 %i.fm, %i.fn
  %i.fp = zext nneg i32 %i.fo to i64
  br label %ucase_getType_78.exit20

ucase_getType_78.exit20:                          ; preds = %bb.an, %bb.ao, %.sink.split.i18
  %i.fq = phi i64 [ 3596, %bb.an ], [ 13540, %bb.ao ], [ %i.fp, %.sink.split.i18 ]
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !15
  %i.ft = and i16 %i.fs, 3
  %i.fu = icmp ne i16 %i.ft, 0
  %i.fv = zext i1 %i.fu to i32
  br label %bb.bd

bb.aq:                                            ; preds = %bb.a
  %i.fw = icmp ult i32 %0, 55296
  br i1 %i.fw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fx = lshr i32 %0, 5
  br label %.sink.split.i21

bb.as:                                            ; preds = %bb.aq
  %i.fy = icmp ult i32 %0, 65536
  br i1 %i.fy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fz = icmp samesign ult i32 %0, 56320
  %i.ga = select i1 %i.fz, i32 320, i32 0
  %i.gb = lshr i32 %0, 5
  %i.gc = add nuw nsw i32 %i.ga, %i.gb
  br label %.sink.split.i21

bb.au:                                            ; preds = %bb.as
  %i.gd = icmp ugt i32 %0, 1114111
  br i1 %i.gd, label %ucase_getTypeOrIgnorable_78.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ge = icmp samesign ugt i32 %0, 919551
  br i1 %i.ge, label %ucase_getTypeOrIgnorable_78.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gf = lshr i32 %0, 11
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4160
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !15
  %i.gk = zext i16 %i.gj to i32
  %i.gl = lshr i32 %0, 5
  %i.gm = and i32 %i.gl, 63
  %i.gn = add nuw nsw i32 %i.gm, %i.gk
  br label %.sink.split.i21

.sink.split.i21:                                  ; preds = %bb.aw, %bb.at, %bb.ar
  %.sink16.i22 = phi i32 [ %i.gc, %bb.at ], [ %i.gn, %bb.aw ], [ %i.fx, %bb.ar ]
  %i.go = zext nneg i32 %.sink16.i22 to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !15
  %i.gr = zext i16 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 2
  %i.gt = and i32 %0, 31
  %i.gu = add nuw nsw i32 %i.gs, %i.gt
  %i.gv = zext nneg i32 %i.gu to i64
  br label %ucase_getTypeOrIgnorable_78.exit

ucase_getTypeOrIgnorable_78.exit:                 ; preds = %bb.au, %bb.av, %.sink.split.i21
  %i.gw = phi i64 [ 3596, %bb.au ], [ 13540, %bb.av ], [ %i.gv, %.sink.split.i21 ]
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !15
  %i.gz = lshr i16 %i.gy, 2
  %i.ha = and i16 %i.gz, 1
  %i.hb = zext nneg i16 %i.ha to i32
  br label %bb.bd

bb.ax:                                            ; preds = %bb.a
  %i.hc = call i32 @ucase_toFullLower_78(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.hd = icmp sgt i32 %i.hc, -1
  %i.he = zext i1 %i.hd to i32
  br label %bb.bd

bb.ay:                                            ; preds = %bb.a
  %i.hf = call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i8 noundef signext 1)
  %i.hg = icmp sgt i32 %i.hf, -1
  %i.hh = zext i1 %i.hg to i32
  br label %bb.bd

bb.az:                                            ; preds = %bb.a
  %i.hi = call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i8 noundef signext 0)
  %i.hj = icmp sgt i32 %i.hi, -1
  %i.hk = zext i1 %i.hj to i32
  br label %bb.bd

bb.ba:                                            ; preds = %bb.a
  %i.hl = call i32 @ucase_toFullLower_78(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.hm = icmp sgt i32 %i.hl, -1
  br i1 %i.hm, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hn = call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i8 noundef signext 1)
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hp = call fastcc noundef i32 @_ZL14toUpperOrTitleiPFiPvaES_PPKDsia(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i8 noundef signext 0)
  %i.hq = icmp sgt i32 %i.hp, -1
  %i.hr = zext i1 %i.hq to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.ba, %bb.bb, %bb.bc, %bb.az, %bb.ay, %bb.ax, %ucase_getTypeOrIgnorable_78.exit, %ucase_getType_78.exit20, %ucase_isCaseSensitive_78.exit, %ucase_isSoftDotted_78.exit, %ucase_getType_78.exit16, %ucase_getType_78.exit
  %.0 = phi i32 [ %i.hr, %bb.bc ], [ %i.ag, %ucase_getType_78.exit ], [ %i.bm, %ucase_getType_78.exit16 ], [ %i.db, %ucase_isSoftDotted_78.exit ], [ %i.ep, %ucase_isCaseSensitive_78.exit ], [ %i.fv, %ucase_getType_78.exit20 ], [ %i.hb, %ucase_getTypeOrIgnorable_78.exit ], [ %i.he, %bb.ax ], [ %i.hh, %bb.ay ], [ %i.hk, %bb.az ], [ 1, %bb.bb ], [ 1, %bb.ba ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS4USet", !8, i64 0}
!10 = !{!"_ZTS9USetAdder", !9, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!11 = !{!10, !8, i64 8}
!12 = !{!10, !9, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!4, !4, i64 0}
!17 = !{!"char16_t", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.peeled.count", i32 1}
!21 = !{!"p1 char16_t", !8, i64 0}
!22 = !{!"_ZTSN6icu_7823FullCaseFoldingIteratorE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!23 = !{!22, !5, i64 24}
!24 = !{!22, !21, i64 0}
!25 = !{!21, !21, i64 0}
!26 = !{!"_ZTS10UErrorCode", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = distinct !{!28, !19}
!29 = !{!10, !8, i64 24}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19, !20}
!33 = distinct !{!33, !19}
!34 = !{!22, !5, i64 20}
!35 = !{!22, !5, i64 12}
!36 = !{!22, !5, i64 16}
!37 = !{!22, !5, i64 8}
!38 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !21, i64 0}
!39 = !{!38, !21, i64 0}
!40 = !{i64 2148947804}
!41 = distinct !{null}
!42 = distinct !{!42, !19, !20}
!43 = distinct !{null}
!44 = distinct !{!44, !19, !20}
!45 = distinct !{null}
!46 = distinct !{!46, !19, !20}
!47 = distinct !{!47, !19, !20}
!48 = distinct !{null}
!49 = distinct !{!49, !19, !20}
end_hunk_2

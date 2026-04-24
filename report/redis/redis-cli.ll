inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@main:bb.a
  %i.n = alloca [3 x ptr], align 16               ; 6 uses
  %i.o = alloca [3 x i64], align 16               ; 6 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %i.p = alloca [16 x i64], align 16              ; 22 uses
  %i.q = alloca [16 x ptr], align 16              ; 23 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %10 = alloca %struct.dictIterator, align 8      ; 6 uses
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.aq = tail call i32 @fileno(ptr noundef %i.ap) #34
  %i.ar = tail call i32 @isatty(i32 noundef %i.aq) #34
  %.not = icmp eq i32 %i.ar, 0
  %.076125.lcssa.wide.ph.ph.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep201 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep202 = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep203 = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep204 = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep205 = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep206 = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep207 = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep208 = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep209 = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep210 = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep211 = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep212 = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 4 uses
  %.076125.lcssa.wide.ph.ph.i.sroa.gep213 = getelementptr inbounds nuw i8, ptr %i.p, i64 112 ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bvw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not.i110.i = icmp eq i32 %i.bvn, 0
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 3 uses
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.p, i64 120 ; 3 uses
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
end_hunk_2
begin_hunk_3_@main:bb.a
  br i1 %.not199.i, label %bb.wo, label %.critedge.i110

bb.wo:                                            ; preds = %bb.wn
  %i.caa = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep, align 8, !tbaa !339
  %i.cab = icmp ugt i64 %i.bzy, %i.caa
  br i1 %i.cab, label %bb.wp, label %._crit_edge155.i

bb.wp:                                            ; preds = %bb.wo
  %i.cac = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep201, align 16, !tbaa !339
  %i.cad = icmp ugt i64 %i.bzy, %i.cac
  br i1 %i.cad, label %bb.wq, label %._crit_edge153.i

bb.wq:                                            ; preds = %bb.wp
  %i.cae = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep202, align 8, !tbaa !339
  %i.caf = icmp ugt i64 %i.bzy, %i.cae
  br i1 %i.caf, label %bb.wr, label %._crit_edge153.i

bb.wr:                                            ; preds = %bb.wq
  %i.cag = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep203, align 16, !tbaa !339
  %i.cah = icmp ugt i64 %i.bzy, %i.cag
  br i1 %i.cah, label %bb.ws, label %._crit_edge153.i

bb.ws:                                            ; preds = %bb.wr
  %i.cai = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep204, align 8, !tbaa !339
  %i.caj = icmp ugt i64 %i.bzy, %i.cai
  br i1 %i.caj, label %bb.wt, label %._crit_edge153.i

bb.wt:                                            ; preds = %bb.ws
  %i.cak = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep205, align 16, !tbaa !339
  %i.cal = icmp ugt i64 %i.bzy, %i.cak
  br i1 %i.cal, label %bb.wu, label %._crit_edge153.i

bb.wu:                                            ; preds = %bb.wt
  %i.cam = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep206, align 8, !tbaa !339
  %i.can = icmp ugt i64 %i.bzy, %i.cam
  br i1 %i.can, label %bb.wv, label %._crit_edge153.i

bb.wv:                                            ; preds = %bb.wu
  %i.cao = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep207, align 16, !tbaa !339
  %i.cap = icmp ugt i64 %i.bzy, %i.cao
  br i1 %i.cap, label %bb.ww, label %._crit_edge153.i

bb.ww:                                            ; preds = %bb.wv
  %i.caq = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep208, align 8, !tbaa !339
  %i.car = icmp ugt i64 %i.bzy, %i.caq
  br i1 %i.car, label %bb.wx, label %._crit_edge153.i

bb.wx:                                            ; preds = %bb.ww
  %i.cas = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep209, align 16, !tbaa !339
  %i.cat = icmp ugt i64 %i.bzy, %i.cas
  br i1 %i.cat, label %bb.wy, label %._crit_edge153.i

bb.wy:                                            ; preds = %bb.wx
  %i.cau = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep210, align 8, !tbaa !339
  %i.cav = icmp ugt i64 %i.bzy, %i.cau
  br i1 %i.cav, label %bb.wz, label %._crit_edge153.i

bb.wz:                                            ; preds = %bb.wy
  %i.caw = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep211, align 16, !tbaa !339
  %i.cax = icmp ugt i64 %i.bzy, %i.caw
  br i1 %i.cax, label %bb.xa, label %._crit_edge153.i

bb.xa:                                            ; preds = %bb.wz
  %i.cay = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep212, align 8, !tbaa !339
  %i.caz = icmp ugt i64 %i.bzy, %i.cay
  br i1 %i.caz, label %bb.xb, label %._crit_edge153.i

bb.xb:                                            ; preds = %bb.xa
  %i.cba = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep213, align 16, !tbaa !339
  %i.cbb = icmp ugt i64 %i.bzy, %i.cba
  br i1 %i.cbb, label %bb.xc, label %._crit_edge153.i

end_hunk_3
begin_hunk_4_@main:bb.a
  br i1 %i.cbd, label %.thread.i123, label %._crit_edge153.i

._crit_edge153.i:                                 ; preds = %bb.xc, %bb.xb, %bb.xa, %bb.wz, %bb.wy, %bb.wx, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %bb.ws, %bb.wr, %bb.wq, %bb.wp
  %.076125.lcssa.wide.ph.ph.i.sroa.phi = phi ptr [ %.076125.lcssa.wide.ph.ph.i.sroa.gep, %bb.wp ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep201, %bb.wq ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep202, %bb.wr ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep203, %bb.ws ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep204, %bb.wt ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep205, %bb.wu ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep206, %bb.wv ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep207, %bb.ww ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep208, %bb.wx ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep209, %bb.wy ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep210, %bb.wz ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep211, %bb.xa ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep212, %bb.xb ], [ %.076125.lcssa.wide.ph.ph.i.sroa.gep213, %bb.xc ]
  %.ph201.ph.i = phi i32 [ 1, %bb.wp ], [ 2, %bb.wq ], [ 3, %bb.wr ], [ 4, %bb.ws ], [ 5, %bb.wt ], [ 6, %bb.wu ], [ 7, %bb.wv ], [ 8, %bb.ww ], [ 9, %bb.wx ], [ 10, %bb.wy ], [ 11, %bb.wz ], [ 12, %bb.xa ], [ 13, %bb.xb ], [ 14, %bb.xc ]
  %.pre.i122 = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.phi, align 8, !tbaa !339
  br label %.thread.i123

.thread.i123:                                     ; preds = %._crit_edge153.i, %bb.xc
  %i.cbe = phi i64 [ %.pre.i122, %._crit_edge153.i ], [ %i.cbc, %bb.xc ]
  %i.cbf = phi i32 [ %.ph201.ph.i, %._crit_edge153.i ], [ 15, %bb.xc ] ; 2 uses
  %i.cbg = icmp eq i64 %i.cbe, 0
  br i1 %i.cbg, label %._crit_edge155.i, label %bb.xd

end_hunk_4
begin_hunk_5_@main:bb.a
  %i.cbm = load ptr, ptr %i.q, align 16, !tbaa !29
  call void @hi_sdsfree(ptr noundef %i.cbm) #34
  %i.cbn = shl nuw nsw i64 %i.cbl, 3              ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %.076125.lcssa.wide.ph.ph.i.sroa.gep, i64 %i.cbn, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.bvu, i64 %i.cbn, i1 false)
  br label %bb.xe

end_hunk_5
begin_hunk_6_@main:bb.a

bb.xr:                                            ; preds = %bb.xq, %displayKeyStatsProgressbar.exit.i
  %.1.i118 = phi i32 [ %i.cdw, %bb.xq ], [ %i.cds, %displayKeyStatsProgressbar.exit.i ] ; 2 uses
  %i.cdx = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep213, align 16, !tbaa !339 ; 2 uses
  %.not104.1.i = icmp eq i64 %i.cdx, 0
  br i1 %.not104.1.i, label %bb.xt, label %bb.xs

end_hunk_6
begin_hunk_7_@main:bb.a

bb.xt:                                            ; preds = %bb.xs, %bb.xr
  %.1.1.i = phi i32 [ %i.cea, %bb.xs ], [ %.1.i118, %bb.xr ] ; 2 uses
  %i.ceb = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep212, align 8, !tbaa !339 ; 2 uses
  %.not104.2.i = icmp eq i64 %i.ceb, 0
  br i1 %.not104.2.i, label %bb.xv, label %bb.xu

end_hunk_7
begin_hunk_8_@main:bb.a

bb.xv:                                            ; preds = %bb.xu, %bb.xt
  %.1.2.i = phi i32 [ %i.cee, %bb.xu ], [ %.1.1.i, %bb.xt ] ; 2 uses
  %i.cef = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep211, align 16, !tbaa !339 ; 2 uses
  %.not104.3.i = icmp eq i64 %i.cef, 0
  br i1 %.not104.3.i, label %bb.xx, label %bb.xw

end_hunk_8
begin_hunk_9_@main:bb.a

bb.xx:                                            ; preds = %bb.xw, %bb.xv
  %.1.3.i = phi i32 [ %i.cei, %bb.xw ], [ %.1.2.i, %bb.xv ] ; 2 uses
  %i.cej = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep210, align 8, !tbaa !339 ; 2 uses
  %.not104.4.i = icmp eq i64 %i.cej, 0
  br i1 %.not104.4.i, label %bb.xz, label %bb.xy

end_hunk_9
begin_hunk_10_@main:bb.a

bb.xz:                                            ; preds = %bb.xy, %bb.xx
  %.1.4.i = phi i32 [ %i.cem, %bb.xy ], [ %.1.3.i, %bb.xx ] ; 2 uses
  %i.cen = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep209, align 16, !tbaa !339 ; 2 uses
  %.not104.5.i = icmp eq i64 %i.cen, 0
  br i1 %.not104.5.i, label %bb.yb, label %bb.ya

end_hunk_10
begin_hunk_11_@main:bb.a

bb.yb:                                            ; preds = %bb.ya, %bb.xz
  %.1.5.i = phi i32 [ %i.ceq, %bb.ya ], [ %.1.4.i, %bb.xz ] ; 2 uses
  %i.cer = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep208, align 8, !tbaa !339 ; 2 uses
  %.not104.6.i = icmp eq i64 %i.cer, 0
  br i1 %.not104.6.i, label %bb.yd, label %bb.yc

end_hunk_11
begin_hunk_12_@main:bb.a

bb.yd:                                            ; preds = %bb.yc, %bb.yb
  %.1.6.i = phi i32 [ %i.ceu, %bb.yc ], [ %.1.5.i, %bb.yb ] ; 2 uses
  %i.cev = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep207, align 16, !tbaa !339 ; 2 uses
  %.not104.7.i = icmp eq i64 %i.cev, 0
  br i1 %.not104.7.i, label %bb.yf, label %bb.ye

end_hunk_12
begin_hunk_13_@main:bb.a

bb.yf:                                            ; preds = %bb.ye, %bb.yd
  %.1.7.i = phi i32 [ %i.cey, %bb.ye ], [ %.1.6.i, %bb.yd ] ; 2 uses
  %i.cez = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep206, align 8, !tbaa !339 ; 2 uses
  %.not104.8.i = icmp eq i64 %i.cez, 0
  br i1 %.not104.8.i, label %bb.yh, label %bb.yg

end_hunk_13
begin_hunk_14_@main:bb.a

bb.yh:                                            ; preds = %bb.yg, %bb.yf
  %.1.8.i = phi i32 [ %i.cfc, %bb.yg ], [ %.1.7.i, %bb.yf ] ; 2 uses
  %i.cfd = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep205, align 16, !tbaa !339 ; 2 uses
  %.not104.9.i = icmp eq i64 %i.cfd, 0
  br i1 %.not104.9.i, label %bb.yj, label %bb.yi

end_hunk_14
begin_hunk_15_@main:bb.a

bb.yj:                                            ; preds = %bb.yi, %bb.yh
  %.1.9.i = phi i32 [ %i.cfg, %bb.yi ], [ %.1.8.i, %bb.yh ] ; 2 uses
  %i.cfh = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep204, align 8, !tbaa !339 ; 2 uses
  %.not104.10.i = icmp eq i64 %i.cfh, 0
  br i1 %.not104.10.i, label %bb.yl, label %bb.yk

end_hunk_15
begin_hunk_16_@main:bb.a

bb.yl:                                            ; preds = %bb.yk, %bb.yj
  %.1.10.i = phi i32 [ %i.cfk, %bb.yk ], [ %.1.9.i, %bb.yj ] ; 2 uses
  %i.cfl = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep203, align 16, !tbaa !339 ; 2 uses
  %.not104.11.i = icmp eq i64 %i.cfl, 0
  br i1 %.not104.11.i, label %bb.yn, label %bb.ym

end_hunk_16
begin_hunk_17_@main:bb.a

bb.yn:                                            ; preds = %bb.ym, %bb.yl
  %.1.11.i = phi i32 [ %i.cfo, %bb.ym ], [ %.1.10.i, %bb.yl ] ; 2 uses
  %i.cfp = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep202, align 8, !tbaa !339 ; 2 uses
  %.not104.12.i = icmp eq i64 %i.cfp, 0
  br i1 %.not104.12.i, label %bb.yp, label %bb.yo

end_hunk_17
begin_hunk_18_@main:bb.a

bb.yp:                                            ; preds = %bb.yo, %bb.yn
  %.1.12.i = phi i32 [ %i.cfs, %bb.yo ], [ %.1.11.i, %bb.yn ] ; 2 uses
  %i.cft = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep201, align 16, !tbaa !339 ; 2 uses
  %.not104.13.i = icmp eq i64 %i.cft, 0
  br i1 %.not104.13.i, label %bb.yr, label %bb.yq

end_hunk_18
begin_hunk_19_@main:bb.a

bb.yr:                                            ; preds = %bb.yq, %bb.yp
  %.1.13.i = phi i32 [ %i.cfw, %bb.yq ], [ %.1.12.i, %bb.yp ] ; 2 uses
  %i.cfx = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep, align 8, !tbaa !339 ; 2 uses
  %.not104.14.i = icmp eq i64 %i.cfx, 0
  br i1 %.not104.14.i, label %bb.yt, label %bb.ys

end_hunk_19
begin_hunk_20_@main:bb.a
  br label %bb.zl

bb.zl:                                            ; preds = %bb.zk, %bb.zj
  %i.cij = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep213, align 16, !tbaa !339 ; 2 uses
  %.not103.1.i = icmp eq i64 %i.cij, 0
  br i1 %.not103.1.i, label %bb.zn, label %bb.zm

end_hunk_20
begin_hunk_21_@main:bb.a
  br label %bb.zn

bb.zn:                                            ; preds = %bb.zm, %bb.zl
  %i.cim = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep212, align 8, !tbaa !339 ; 2 uses
  %.not103.2.i = icmp eq i64 %i.cim, 0
  br i1 %.not103.2.i, label %bb.zp, label %bb.zo

end_hunk_21
begin_hunk_22_@main:bb.a
  br label %bb.zp

bb.zp:                                            ; preds = %bb.zo, %bb.zn
  %i.cip = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep211, align 16, !tbaa !339 ; 2 uses
  %.not103.3.i = icmp eq i64 %i.cip, 0
  br i1 %.not103.3.i, label %bb.zr, label %bb.zq

end_hunk_22
begin_hunk_23_@main:bb.a
  br label %bb.zr

bb.zr:                                            ; preds = %bb.zq, %bb.zp
  %i.cis = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep210, align 8, !tbaa !339 ; 2 uses
  %.not103.4.i = icmp eq i64 %i.cis, 0
  br i1 %.not103.4.i, label %bb.zt, label %bb.zs

end_hunk_23
begin_hunk_24_@main:bb.a
  br label %bb.zt

bb.zt:                                            ; preds = %bb.zs, %bb.zr
  %i.civ = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep209, align 16, !tbaa !339 ; 2 uses
  %.not103.5.i = icmp eq i64 %i.civ, 0
  br i1 %.not103.5.i, label %bb.zv, label %bb.zu

end_hunk_24
begin_hunk_25_@main:bb.a
  br label %bb.zv

bb.zv:                                            ; preds = %bb.zu, %bb.zt
  %i.ciy = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep208, align 8, !tbaa !339 ; 2 uses
  %.not103.6.i = icmp eq i64 %i.ciy, 0
  br i1 %.not103.6.i, label %bb.zx, label %bb.zw

end_hunk_25
begin_hunk_26_@main:bb.a
  br label %bb.zx

bb.zx:                                            ; preds = %bb.zw, %bb.zv
  %i.cjb = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep207, align 16, !tbaa !339 ; 2 uses
  %.not103.7.i = icmp eq i64 %i.cjb, 0
  br i1 %.not103.7.i, label %bb.zz, label %bb.zy

end_hunk_26
begin_hunk_27_@main:bb.a
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zy, %bb.zx
  %i.cje = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep206, align 8, !tbaa !339 ; 2 uses
  %.not103.8.i = icmp eq i64 %i.cje, 0
  br i1 %.not103.8.i, label %bb.aab, label %bb.aaa

end_hunk_27
begin_hunk_28_@main:bb.a
  br label %bb.aab

bb.aab:                                           ; preds = %bb.aaa, %bb.zz
  %i.cjh = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep205, align 16, !tbaa !339 ; 2 uses
  %.not103.9.i = icmp eq i64 %i.cjh, 0
  br i1 %.not103.9.i, label %bb.aad, label %bb.aac

end_hunk_28
begin_hunk_29_@main:bb.a
  br label %bb.aad

bb.aad:                                           ; preds = %bb.aac, %bb.aab
  %i.cjk = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep204, align 8, !tbaa !339 ; 2 uses
  %.not103.10.i = icmp eq i64 %i.cjk, 0
  br i1 %.not103.10.i, label %bb.aaf, label %bb.aae

end_hunk_29
begin_hunk_30_@main:bb.a
  br label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae, %bb.aad
  %i.cjn = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep203, align 16, !tbaa !339 ; 2 uses
  %.not103.11.i = icmp eq i64 %i.cjn, 0
  br i1 %.not103.11.i, label %bb.aah, label %bb.aag

end_hunk_30
begin_hunk_31_@main:bb.a
  br label %bb.aah

bb.aah:                                           ; preds = %bb.aag, %bb.aaf
  %i.cjq = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep202, align 8, !tbaa !339 ; 2 uses
  %.not103.12.i = icmp eq i64 %i.cjq, 0
  br i1 %.not103.12.i, label %bb.aaj, label %bb.aai

end_hunk_31
begin_hunk_32_@main:bb.a
  br label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai, %bb.aah
  %i.cjt = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep201, align 16, !tbaa !339 ; 2 uses
  %.not103.13.i = icmp eq i64 %i.cjt, 0
  br i1 %.not103.13.i, label %bb.aal, label %bb.aak

end_hunk_32
begin_hunk_33_@main:bb.a
  br label %bb.aal

bb.aal:                                           ; preds = %bb.aak, %bb.aaj
  %i.cjw = load i64, ptr %.076125.lcssa.wide.ph.ph.i.sroa.gep, align 8, !tbaa !339 ; 2 uses
  %.not103.14.i = icmp eq i64 %i.cjw, 0
  br i1 %.not103.14.i, label %bb.aan, label %bb.aam

end_hunk_33
begin_hunk_34_@repl:bb.a
  br label %bb.ci

bb.ae:                                            ; preds = %bb.z, %bb.aa, %bb.ac
  %.056 = phi i64 [ 1, %bb.ac ], [ 0, %bb.aa ], [ 0, %bb.z ]
  %.056.a = phi i32 [ 1, %bb.ac ], [ 0, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.054 = phi i64 [ %i.bm, %bb.ac ], [ 1, %bb.aa ], [ 1, %bb.z ]
  %i.bz = sub nsw i32 %i.bn, %.056.a              ; 9 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.0.i8295, i64 %.056 ; 11 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29 ; 6 uses
  %i.cc = call i32 @strcasecmp(ptr noundef %i.cb, ptr noundef nonnull @.str.898) #36
  %.not.i83 = icmp eq i32 %i.cc, 0
end_hunk_34

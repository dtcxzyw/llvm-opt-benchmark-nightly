inline.NumInlined: 6795
inline.NumDeleted: 2943
begin_hunk_0_@_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
          to label %bb.bq unwind label %bb.bp

bb.fy:                                            ; preds = %bb.ap
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.sc, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 64, i1 false)
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.iy, ptr %i.sd, align 8
  store i64 46, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bm

bb.fz:                                            ; preds = %bb.ge, %bb.ga
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %bb.ge ], [ %i.se, %bb.ga ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #38
          to label %bb.bq unwind label %bb.bp

bb.ga:                                            ; preds = %bb.as
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gb:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !align !375, !noundef !12
  %.not27 = icmp eq ptr %i.sg, null
  br i1 %.not27, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.sh = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sf)
          to label %bb.gd unwind label %bb.gf

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %storemerge = phi ptr [ null, %bb.gb ], [ %i.sh, %bb.gc ] ; 2 uses
  store ptr %storemerge, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jd)
          to label %bb.gi unwind label %bb.gh

bb.ge:                                            ; preds = %bb.gg, %bb.gf
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.gg ], [ %i.si, %bb.gf ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ab) #38
          to label %bb.fz unwind label %bb.bp

bb.gf:                                            ; preds = %bb.gc
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.gg:                                            ; preds = %bb.gl, %bb.gh
  %.pn29 = phi { ptr, i32 } [ %i.ss, %bb.gl ], [ %i.sj, %bb.gh ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #38
          to label %bb.ge unwind label %bb.bp

bb.gh:                                            ; preds = %bb.gd
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gi:                                            ; preds = %bb.gd
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !align !375, !noundef !12
  %.not28 = icmp eq ptr %i.sl, null
  br i1 %.not28, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.sm = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sk)
          to label %bb.gk unwind label %bb.gl

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.sroa.023.0 = phi ptr [ null, %bb.gi ], [ %i.sm, %bb.gj ]
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.sn, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false)
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.so, ptr noundef nonnull align 8 dereferenceable(88) %i.ab, i64 88, i1 false)
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %storemerge, ptr %i.sp, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sq, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sroa.023.0, ptr %i.sr, align 8
  store i64 49, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.bm

bb.gl:                                            ; preds = %bb.gj
  %i.ss = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #38
          to label %bb.gg unwind label %bb.bp

bb.gm:                                            ; preds = %bb.az
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #38
          to label %bb.bq unwind label %bb.bp

bb.gn:                                            ; preds = %bb.az
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.su, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sv, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i64 56, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bm

bb.go:                                            ; preds = %bb.ba
  %i.sw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #38
          to label %bb.bq unwind label %bb.bp

bb.gp:                                            ; preds = %bb.ba
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.sy = load i32, ptr %i.sx, align 8, !range !5930, !alias.scope !9549, !noalias !9546, !noundef !12
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ta = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ta, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.sz, i64 32, i1 false), !alias.scope !9559
  %i.tb = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i32 %i.sy, ptr %i.tb, align 8, !alias.scope !9546, !noalias !9549
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.jz, ptr %i.tc, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.td, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false)
  store i64 57, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bm

bb.gq:                                            ; preds = %bb.bf
  %i.te = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #38
          to label %bb.bq unwind label %bb.bp

bb.gr:                                            ; preds = %bb.bf
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.tg = load i8, ptr %i.tf, align 8, !range !1488, !noundef !12
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.th, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ti, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.tg, ptr %i.tj, align 8
  store i64 62, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bm

bb.gs:                                            ; preds = %bb.bh
  %i.tk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #38
          to label %bb.bq unwind label %bb.bp

bb.gt:                                            ; preds = %bb.bh
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.tm, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  store i64 64, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bm
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsNtB5_10StatisticsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.4.i22 = alloca [24 x i8], align 8 ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.4.i = alloca [24 x i8], align 8   ; 2 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.52.i = alloca [12 x i8], align 4         ; 2 uses
  %.sroa.5.i = alloca [12 x i8], align 4          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !2383, !noundef !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  switch i64 %i.g, label %default.unreachable128 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.z
  ]

default.unreachable128:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %3 = load i8, ptr %2, align 4, !range !81, !alias.scope !9560, !noalias !9563, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.j = load i8, ptr %i.i, align 1, !range !81, !alias.scope !9560, !noalias !9563, !noundef !12
  %i.k = load i64, ptr %i.h, align 8, !range !11, !alias.scope !9560, !noalias !9563, !noundef !12 ; 2 uses
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !9560, !noalias !9563
  %.sroa.5.0.i = select i1 %i.l, i64 %i.n, i64 undef
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !range !11, !alias.scope !9560, !noalias !9563, !noundef !12 ; 2 uses
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !9560, !noalias !9563
  %.sroa.54.0.i = select i1 %i.q, i64 %i.s, i64 undef
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.54.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load <4 x i8>, ptr %i.t, align 8, !alias.scope !9560, !noalias !9563
  store <4 x i8> %4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %3, ptr %.sroa.11.0..sroa_idx, align 4
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i32, ptr %i.v, align 8, !range !4279, !alias.scope !9565, !noalias !9568, !noundef !12 ; 2 uses
  %i.x = trunc nuw i32 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !9565, !noalias !9568
  %.sroa.5.0.i1 = select i1 %i.x, i32 %i.z, i32 undef
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load i32, ptr %i.aa, align 8, !range !4279, !alias.scope !9565, !noalias !9568, !noundef !12 ; 2 uses
  %i.ac = trunc nuw i32 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !9565, !noalias !9568
  %.sroa.52.0.i = select i1 %i.ac, i32 %i.ae, i32 undef
  %i.af = load i64, ptr %i.h, align 8, !range !11, !alias.scope !9565, !noalias !9568, !noundef !12 ; 2 uses
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !9565, !noalias !9568
  %.sroa.54.0.i2 = select i1 %i.ag, i64 %i.ai, i64 undef
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !range !11, !alias.scope !9565, !noalias !9568, !noundef !12 ; 2 uses
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !9565, !noalias !9568
  %.sroa.56.0.i = select i1 %i.al, i64 %i.an, i64 undef
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !range !86, !alias.scope !9565, !noalias !9568, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.ar = load i8, ptr %i.aq, align 1, !range !86, !alias.scope !9565, !noalias !9568, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.at = load i8, ptr %i.as, align 2, !range !86, !alias.scope !9565, !noalias !9568, !noundef !12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.av = load i8, ptr %i.au, align 1, !range !86, !alias.scope !9565, !noalias !9568, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.aw, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.54.0.i2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ak, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.56.0.i, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.w, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.5.0.i1, ptr %.sroa.839.0..sroa_idx, align 4
  %.sroa.940.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ab, ptr %.sroa.940.0..sroa_idx, align 8
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.52.0.i, ptr %.sroa.1041.0..sroa_idx, align 4
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.ap, ptr %.sroa.1142.0..sroa_idx, align 8
  %.sroa.1243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %i.ar, ptr %.sroa.1243.0..sroa_idx, align 1
  %.sroa.1344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %i.at, ptr %.sroa.1344.0..sroa_idx, align 2
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  %i.ax = load i64, ptr %i.h, align 8, !range !11, !alias.scope !9570, !noalias !9573, !noundef !12 ; 2 uses
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !9570, !noalias !9573
  %.sroa.5.0.i3 = select i1 %i.ay, i64 %i.ba, i64 undef
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !range !11, !alias.scope !9570, !noalias !9573, !noundef !12 ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !9570, !noalias !9573
  %.sroa.52.0.i4 = select i1 %i.bd, i64 %i.bf, i64 undef
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !range !11, !alias.scope !9570, !noalias !9573, !noundef !12 ; 2 uses
  %i.bi = trunc nuw i64 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !9570, !noalias !9573
  %.sroa.54.0.i5 = select i1 %i.bi, i64 %i.bk, i64 undef
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !range !11, !alias.scope !9570, !noalias !9573, !noundef !12 ; 2 uses
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !9570, !noalias !9573
  %.sroa.56.0.i6 = select i1 %i.bn, i64 %i.bp, i64 undef
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.br = load i8, ptr %i.bq, align 8, !range !86, !alias.scope !9570, !noalias !9573, !noundef !12
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.bt = load i8, ptr %i.bs, align 1, !range !86, !alias.scope !9570, !noalias !9573, !noundef !12
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.bv = load i8, ptr %i.bu, align 2, !range !86, !alias.scope !9570, !noalias !9573, !noundef !12
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.bx = load i8, ptr %i.bw, align 1, !range !86, !alias.scope !9570, !noalias !9573, !noundef !12
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %i.by, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i3, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bc, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.52.0.i4, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bh, ptr %.sroa.749.0..sroa_idx, align 8
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.54.0.i5, ptr %.sroa.850.0..sroa_idx, align 8
  %.sroa.951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bm, ptr %.sroa.951.0..sroa_idx, align 8
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.56.0.i6, ptr %.sroa.1052.0..sroa_idx, align 8
  %.sroa.1153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.br, ptr %.sroa.1153.0..sroa_idx, align 8
  %.sroa.1254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.bt, ptr %.sroa.1254.0..sroa_idx, align 1
  %.sroa.1355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %i.bv, ptr %.sroa.1355.0..sroa_idx, align 2
  br label %bb.ao

bb.e:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !range !4279, !alias.scope !9575, !noalias !9578, !noundef !12
  %i.cb = trunc nuw i32 %i.ca to i1
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cc, i64 12, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ce = load i32, ptr %i.cd, align 8, !range !4279, !alias.scope !9575, !noalias !9578, !noundef !12
  %i.cf = trunc nuw i32 %i.ce to i1
  br i1 %i.cf, label %bb.h, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.52.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cg, i64 12, i1 false)
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.sroa.01.0.i = phi i32 [ 1, %bb.h ], [ 0, %bb.g ]
  %i.ch = load i64, ptr %i.h, align 8, !range !11, !alias.scope !9575, !noalias !9578, !noundef !12 ; 2 uses
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !9575, !noalias !9578
  %.sroa.54.0.i7 = select i1 %i.ci, i64 %i.ck, i64 undef
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !range !11, !alias.scope !9575, !noalias !9578, !noundef !12 ; 2 uses
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !9575, !noalias !9578
  %.sroa.56.0.i8 = select i1 %i.cn, i64 %i.cp, i64 undef
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = load i8, ptr %i.cq, align 8, !range !86, !alias.scope !9575, !noalias !9578, !noundef !12
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.ct = load i8, ptr %i.cs, align 1, !range !86, !alias.scope !9575, !noalias !9578, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.cv = load i8, ptr %i.cu, align 2, !range !86, !alias.scope !9575, !noalias !9578, !noundef !12
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.cx = load i8, ptr %i.cw, align 1, !range !86, !alias.scope !9575, !noalias !9578, !noundef !12
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ch, ptr %i.cy, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.54.0.i7, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cm, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.56.0.i8, ptr %.sroa.661.0..sroa_idx, align 8
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.0.0.i, ptr %.sroa.762.0..sroa_idx, align 8
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.863.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, i64 12, i1 false)
  %.sroa.964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.01.0.i, ptr %.sroa.964.0..sroa_idx, align 8
  %.sroa.1065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.1065.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.52.i, i64 12, i1 false)
  %.sroa.1166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.cr, ptr %.sroa.1166.0..sroa_idx, align 8
  %.sroa.1267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.ct, ptr %.sroa.1267.0..sroa_idx, align 1
  %.sroa.1368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %i.cv, ptr %.sroa.1368.0..sroa_idx, align 2
  br label %bb.ao

bb.i:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !range !4279, !alias.scope !9580, !noalias !9583, !noundef !12 ; 2 uses
  %i.db = trunc nuw i32 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dd = load float, ptr %i.dc, align 4, !alias.scope !9580, !noalias !9583
  %.sroa.5.0.i9 = select i1 %i.db, float %i.dd, float undef
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.df = load i32, ptr %i.de, align 8, !range !4279, !alias.scope !9580, !noalias !9583, !noundef !12 ; 2 uses
  %i.dg = trunc nuw i32 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.di = load float, ptr %i.dh, align 4, !alias.scope !9580, !noalias !9583
  %.sroa.52.0.i10 = select i1 %i.dg, float %i.di, float undef
  %i.dj = load i64, ptr %i.h, align 8, !range !11, !alias.scope !9580, !noalias !9583, !noundef !12 ; 2 uses
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !9580, !noalias !9583
  %.sroa.54.0.i11 = select i1 %i.dk, i64 %i.dm, i64 undef
end_hunk_0
begin_hunk_1_@_RNvXsBG_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ExportDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ], [ -9223372036854775808, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %.body unwind label %bb.h

_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.e
  %.sroa.0.0.copyload1 = load i64, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.h:                                             ; preds = %bb.g, %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsBQ_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CreateUserNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i8, ptr %i.e, align 8, !range !86, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.h = load i8, ptr %i.g, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i32, ptr %i.i, align 8, !range !5930, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.j, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.o, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #38
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i8, ptr %i.p, align 8, !range !86, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.t = load i8, ptr %i.s, align 2, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options15KeyValueOptionsECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.c) #38
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load i8, ptr %i.w, align 8, !range !86, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.f, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.h, ptr %i.aa, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 %i.t, ptr %i.ac, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXsBw_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MemberOfNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10241)
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs7p2uQeJxui2_9deltalake(), !noalias !10241, !inline_history !9392 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !10241, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10244
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.e) #42
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !inline_history !9396

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 328, i64 noundef 8) #40, !noalias !10241
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false), !noalias !10244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10244
  store ptr %i.d, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10247)
  %i.g = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc unwind label %bb.d, !inline_history !9392 ; 3 uses

.noexc:                                           ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !10247, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10250
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.i) #42
          to label %bb.e unwind label %bb.c, !inline_history !9396

bb.c:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 328, i64 noundef 8) #40, !noalias !10247
  br label %.body

bb.d:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.g, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !10250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.g, 1
  ret { ptr, ptr } %i.m

bb.f:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsCU_NtCs4lawaffTVVK_9sqlparser3astNtB6_15VacuumStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2 = load <4 x i8>, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %4 = load i8, ptr %3, align 4, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %1, align 8, !range !13, !noundef !12
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !1972, !noundef !12
  %.not4 = icmp eq i64 %i.f, -9223372036854775787
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.h
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.h ], [ -9223372036854775787, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.h = load i8, ptr %i.g, align 1, !range !86, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x i8> %2, ptr %i.i, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %4, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.h, ptr %i.k, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsD_NtCs4lawaffTVVK_9sqlparser9tokenizerNtB5_10WhitespaceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !2382, !noundef !12 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775805
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 3
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.d, %bb.c
  ret void

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsE_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !3932, !noundef !12
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
    i64 25, label %bb.aa
    i64 26, label %bb.ab
    i64 27, label %bb.ac
    i64 28, label %bb.ad
    i64 29, label %bb.ae
    i64 30, label %bb.af
    i64 31, label %bb.ag
    i64 32, label %bb.ah
    i64 33, label %bb.ai
    i64 34, label %bb.aj
    i64 35, label %bb.ak
    i64 36, label %bb.al
    i64 37, label %bb.am
    i64 38, label %bb.an
    i64 39, label %bb.ao
    i64 40, label %bb.ap
    i64 41, label %bb.aq
    i64 42, label %bb.ar
    i64 43, label %bb.as
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @333, i64 noundef 4)
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @334, i64 noundef 5)
  br label %bb.at

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @335, i64 noundef 5)
  br label %bb.at

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @336, i64 noundef 6)
  br label %bb.at

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @337)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 5)
  br label %bb.at

bb.h:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 3)
  br label %bb.at

bb.i:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @341, i64 noundef 9)
end_hunk_1
begin_hunk_2_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lz, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ly, i64 32, i1 false), !alias.scope !10794
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kl, i64 56
  store i32 %i.lx, ptr %i.ma, align 8, !alias.scope !10789, !noalias !10792
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.mb, ptr noundef nonnull align 8 dereferenceable(64) %i.kl, i64 64, i1 false)
  store i64 10, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  br label %bb.ed

bb.j:                                             ; preds = %bb.a
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10798)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.kk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.mc)
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.me = load i32, ptr %i.md, align 8, !range !5930, !alias.scope !10798, !noalias !10795, !noundef !12
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.mf, i64 32, i1 false), !alias.scope !10800
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kk, i64 56
  store i32 %i.me, ptr %i.mh, align 8, !alias.scope !10795, !noalias !10798
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.mi, ptr noundef nonnull align 8 dereferenceable(64) %i.kk, i64 64, i1 false)
  store i64 11, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk)
  br label %bb.ed

bb.k:                                             ; preds = %bb.a
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mm = load i8, ptr %i.ml, align 8, !range !86, !noundef !12
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.mo = load i8, ptr %i.mn, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kj)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.kj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mj)
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.mq = load i8, ptr %i.mp, align 2, !range !5278, !noundef !12
  %i.mr = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mk)
          to label %bb.er unwind label %bb.eq

bb.l:                                             ; preds = %bb.a
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ki)
  call fastcc void @_RNvXs9l_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CaseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1232) %i.ki, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1232) %i.ms) #42
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1232) %i.mt, ptr noundef nonnull align 8 dereferenceable(1232) %i.ki, i64 1232, i1 false)
  store i64 13, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ki)
  br label %bb.ed

bb.m:                                             ; preds = %bb.a
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kh)
  call fastcc void @_RNvXs9v_NtCs4lawaffTVVK_9sqlparser3astNtB6_11IfStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1520) %i.kh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1520) %i.mu) #42
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1520) %i.mv, ptr noundef nonnull align 8 dereferenceable(1520) %i.kh, i64 1520, i1 false)
  store i64 14, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  br label %bb.ed

bb.n:                                             ; preds = %bb.a
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kg)
  call fastcc void @_RNvXs9P_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(704) %i.kg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %i.mw) #42, !noalias !12
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %i.mx, ptr noundef nonnull align 8 dereferenceable(704) %i.kg, i64 704, i1 false)
  store i64 15, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kg)
  br label %bb.ed

bb.o:                                             ; preds = %bb.a
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !range !100, !alias.scope !10801, !noalias !10804, !noundef !12
  %.not.i = icmp eq i64 %i.mz, 2
  br i1 %.not.i, label %_RNvXsaj_NtCs4lawaffTVVK_9sqlparser3astNtB6_14RaiseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call fastcc void @_RNvXsat_NtCs4lawaffTVVK_9sqlparser3astNtB6_19RaiseStatementValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(336) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.my) #42, !inline_history !10806
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8
  br label %_RNvXsaj_NtCs4lawaffTVVK_9sqlparser3astNtB6_14RaiseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXsaj_NtCs4lawaffTVVK_9sqlparser3astNtB6_14RaiseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.o, %bb.p
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ 2, %bb.o ]
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.na, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(328) %i.kf, i64 328, i1 false)
  store i64 16, ptr %0, align 8
  br label %bb.ed

bb.q:                                             ; preds = %bb.a
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ke)
  call fastcc void @_RNvXsin_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.ke, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.nb) #42
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.nc, ptr noundef nonnull align 8 dereferenceable(328) %i.ke, i64 328, i1 false)
  store i64 17, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ke)
  br label %bb.ed

bb.r:                                             ; preds = %bb.a
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd)
  call fastcc void @_RNvXspw_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CopySourceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.kd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nd) #42
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ni = load i8, ptr %i.nh, align 8, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc)
  invoke fastcc void @_RNvXspG_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CopyTargetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.kc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ne)
          to label %bb.eu unwind label %bb.et

bb.s:                                             ; preds = %bb.a
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val386 = load i8, ptr %i.nj, align 8, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jy)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jx)
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !range !13, !noundef !12
  %.not346 = icmp eq i64 %i.np, -9223372036854775808
  br i1 %.not346, label %bb.fe, label %bb.fd

bb.t:                                             ; preds = %bb.a
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.nq)
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ns = load i32, ptr %i.nr, align 8, !range !5930, !alias.scope !10807, !noalias !10810, !noundef !12
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.nt, i64 32, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.nu, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, i64 56, i1 false)
  %.sroa.4511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ns, ptr %.sroa.4511.0..sroa_idx, align 8
  store i64 20, ptr %0, align 8
  br label %bb.ed

bb.u:                                             ; preds = %bb.a
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !range !13, !alias.scope !10812, !noalias !10815, !noundef !12
  %.not.i419 = icmp eq i64 %i.nw, -9223372036854775808
  br i1 %.not.i419, label %_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i418, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.nv)
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ny = load i32, ptr %i.nx, align 8, !range !5930, !alias.scope !10812, !noalias !10815, !noundef !12
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i420 = getelementptr inbounds nuw i8, ptr %.sroa.0.i418, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i420, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.nz, i64 32, i1 false)
  %.sroa.0513.0.copyload514 = load i64, ptr %.sroa.0.i418, align 8
  br label %_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.u, %bb.v
  %.sroa.0513.0 = phi i64 [ %.sroa.0513.0.copyload514, %bb.v ], [ -9223372036854775808, %bb.u ]
  %.sroa.5516.0 = phi i32 [ %i.ny, %bb.v ], [ undef, %bb.u ]
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0513.0, ptr %i.oa, align 8
  %.sroa.5515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.jn, i64 48, i1 false)
  %.sroa.5516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.5516.0, ptr %.sroa.5516.0..sroa_idx, align 8
  store i64 21, ptr %0, align 8
  br label %bb.ed

bb.w:                                             ; preds = %bb.a
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 1336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jm)
  call fastcc void @_RNvXs5p_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(640) %i.jm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.ob) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jl)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oc)
          to label %bb.hk unwind label %bb.hj

bb.x:                                             ; preds = %bb.a
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jh)
  call fastcc void @_RNvXsb_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB5_6DeleteNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(784) %i.jh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.od) #42
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.oe, ptr noundef nonnull align 8 dereferenceable(784) %i.jh, i64 784, i1 false)
  store i64 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  br label %bb.ed

bb.y:                                             ; preds = %bb.a
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 304
  %2 = load <4 x i8>, ptr %i.oj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jg)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.of)
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.ol = load i8, ptr %i.ok, align 4, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.og)
          to label %bb.ij unwind label %bb.ii

bb.z:                                             ; preds = %bb.a
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iz)
  call fastcc void @_RNvXs8w_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11CreateTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2280) %i.iz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2280) %i.om) #42
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2280) %i.on, ptr noundef nonnull align 8 dereferenceable(2280) %i.iz, i64 2280, i1 false)
  store i64 25, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz)
  br label %bb.ed

bb.aa:                                            ; preds = %bb.a
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iy)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oo)
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.or = load i8, ptr %i.oq, align 8, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ix)
  call void @llvm.experimental.noalias.scope.decl(metadata !10817)
  call void @llvm.experimental.noalias.scope.decl(metadata !10820)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ix, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.op)
          to label %bb.jk unwind label %bb.jj

bb.ab:                                            ; preds = %bb.a
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv)
  call fastcc void @_RNvXs8m_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(568) %i.iv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(568) %i.os) #42
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.ot, ptr noundef nonnull align 8 dereferenceable(568) %i.iv, i64 568, i1 false)
  store i64 27, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv)
  br label %bb.ed

bb.ac:                                            ; preds = %bb.a
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 1112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ou)
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.pb = load <4 x i8>, ptr %i.pa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.it)
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !range !809, !noundef !12 ; 2 uses
  %.not311 = icmp eq i64 %i.pd, 70
  br i1 %.not311, label %bb.jp, label %bb.jn

bb.ad:                                            ; preds = %bb.a
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ph = load i8, ptr %i.pg, align 8, !range !86, !noundef !12
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.pj = load i8, ptr %i.pi, align 2, !range !81, !noundef !12
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.pl = load i8, ptr %i.pk, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.il)
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !range !13, !noundef !12
  %.not306 = icmp eq i64 %i.pn, -9223372036854775808
  br i1 %.not306, label %bb.ky, label %bb.kx

bb.ae:                                            ; preds = %bb.a
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ih)
  call fastcc void @_RNvXsny_NtCs4lawaffTVVK_9sqlparser3astNtB6_21CreateServerStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(208) %i.ih, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.po) #42
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.pp, ptr noundef nonnull align 8 dereferenceable(208) %i.ih, i64 208, i1 false)
  store i64 30, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih)
  br label %bb.ed

bb.af:                                            ; preds = %bb.a
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ig)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10825)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pq)
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.pt = load i32, ptr %i.ps, align 8, !range !5930, !alias.scope !10825, !noalias !10822, !noundef !12
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pv, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.pu, i64 32, i1 false), !alias.scope !10827
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  store i32 %i.pt, ptr %i.pw, align 8, !alias.scope !10822, !noalias !10825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.if)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.if, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pr)
          to label %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.lm

bb.ag:                                            ; preds = %bb.a
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic)
  call fastcc void @_RNvXs90_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15CreateConnectorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(176) %i.ic, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.px) #42
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.py, ptr noundef nonnull align 8 dereferenceable(176) %i.ic, i64 176, i1 false)
  store i64 32, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic)
  br label %bb.ed

bb.ah:                                            ; preds = %bb.a
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ib, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pz)
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.qd = load i8, ptr %i.qc, align 8, !range !86, !noundef !12
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.qf = load i8, ptr %i.qe, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl19AlterTableOperationENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ia, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qa)
          to label %bb.mf unwind label %bb.me

bb.ai:                                            ; preds = %bb.a
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hw)
  call fastcc void @_RNvXs9u_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11AlterSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.hw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.qg) #42
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.qh, ptr noundef nonnull align 8 dereferenceable(56) %i.hw, i64 56, i1 false)
  store i64 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw)
  br label %bb.ed

bb.aj:                                            ; preds = %bb.a
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qj)
          to label %_RNvXs23_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterIndexOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.mu

bb.ak:                                            ; preds = %bb.a
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ht)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ht, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hs)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ql)
          to label %bb.mx unwind label %bb.mw

bb.al:                                            ; preds = %bb.a
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hp)
  call fastcc void @_RNvXs2d_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9AlterTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(168) %i.hp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.qn) #42
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.qo, ptr noundef nonnull align 8 dereferenceable(168) %i.hp, i64 168, i1 false)
  store i64 37, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp)
  br label %bb.ed

bb.am:                                            ; preds = %bb.a
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10831)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ho, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.qp)
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.qs = load i32, ptr %i.qr, align 8, !range !5930, !alias.scope !10831, !noalias !10828, !noundef !12
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.qt, i64 32, i1 false), !alias.scope !10833
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  store i32 %i.qs, ptr %i.qv, align 8, !alias.scope !10828, !noalias !10831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn)
  invoke fastcc void @_RNvXsx_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_18AlterRoleOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(376) %i.hn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.qq)
          to label %bb.ne unwind label %bb.nd

bb.an:                                            ; preds = %bb.a
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10837)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.hm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.qw)
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.qz = load i32, ptr %i.qy, align 8, !range !5930, !alias.scope !10837, !noalias !10834, !noundef !12
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.rb = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ra, i64 32, i1 false), !alias.scope !10839
  %i.rc = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  store i32 %i.qz, ptr %i.rc, align 8, !alias.scope !10834, !noalias !10837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qx)
          to label %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit422 unwind label %bb.ng

end_hunk_2
begin_hunk_3_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10896)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.vn)
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.vp = load i32, ptr %i.vo, align 8, !range !5930, !alias.scope !10896, !noalias !10893, !noundef !12
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vr, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.vq, i64 32, i1 false), !alias.scope !10898
  %i.vs = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  store i32 %i.vp, ptr %i.vs, align 8, !alias.scope !10893, !noalias !10896
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.vu = load i8, ptr %i.vt, align 8, !range !86, !noundef !12
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 201
  %i.vw = load i8, ptr %i.vv, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp)
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.vy = load i64, ptr %i.vx, align 8, !range !13, !noundef !12
  %.not266 = icmp eq i64 %i.vy, -9223372036854775808
  br i1 %.not266, label %bb.os, label %bb.or

bb.bc:                                            ; preds = %bb.a
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vz)
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wb = load i8, ptr %i.wa, align 8, !range !86, !noundef !12
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.wd = load i8, ptr %i.wc, align 1, !range !2791, !noundef !12
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.we, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 24, i1 false)
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.wb, ptr %i.wf, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.wd, ptr %i.wg, align 1
  store i64 54, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go)
  br label %bb.ed

bb.bd:                                            ; preds = %bb.a
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10902)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.wh)
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.wk = load i32, ptr %i.wj, align 8, !range !5930, !alias.scope !10902, !noalias !10899, !noundef !12
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.wm = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.wl, i64 32, i1 false), !alias.scope !10904
  %i.wn = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  store i32 %i.wk, ptr %i.wn, align 8, !alias.scope !10899, !noalias !10902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm)
  invoke fastcc void @_RNvXseP_NtCs4lawaffTVVK_9sqlparser3astNtB6_14FetchDirectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.gm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wi)
          to label %bb.pe unwind label %bb.pc

bb.be:                                            ; preds = %bb.a
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val393 = load i8, ptr %i.wo, align 1, !range !6531, !noundef !12
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.wr = load i8, ptr %i.wq, align 2, !range !81, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl)
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.wt = load i64, ptr %i.ws, align 8, !range !13, !noundef !12
  %.not261 = icmp eq i64 %i.wt, -9223372036854775808
  br i1 %.not261, label %bb.pi, label %bb.ph

bb.bf:                                            ; preds = %bb.a
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val394 = load i8, ptr %i.wu, align 8, !range !5277, !noundef !12
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.val394, ptr %i.wv, align 8
  store i64 57, ptr %0, align 8
  br label %bb.ed

bb.bg:                                            ; preds = %bb.a
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !range !901, !noundef !12
  %.not259 = icmp eq i64 %i.wx, 73
  br i1 %.not259, label %bb.pn, label %bb.pm

bb.bh:                                            ; preds = %bb.a
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wy)
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wz, ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i64 24, i1 false)
  store i64 59, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi)
  br label %bb.ed

bb.bi:                                            ; preds = %bb.a
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.xb = load i64, ptr %i.xa, align 8, !range !901, !noundef !12
  %.not258 = icmp eq i64 %i.xb, 73
  br i1 %.not258, label %bb.pp, label %bb.po

bb.bj:                                            ; preds = %bb.a
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.xd = load i64, ptr %i.xc, align 8, !range !901, !noundef !12
  %.not257 = icmp eq i64 %i.xd, 73
  br i1 %.not257, label %bb.pr, label %bb.pq

bb.bk:                                            ; preds = %bb.a
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val395 = load i8, ptr %i.xe, align 8, !range !2791, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xf)
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.val395, ptr %i.xg, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xh, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i64 24, i1 false)
  store i64 62, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  br label %bb.ed

bb.bl:                                            ; preds = %bb.a
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.xk = load i8, ptr %i.xj, align 8, !range !86, !noundef !12
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.xm = load i8, ptr %i.xl, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.ge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.xi) #42
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.xk, ptr %i.xn, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.xm, ptr %i.xo, align 1
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.xp, ptr noundef nonnull align 8 dereferenceable(792) %i.ge, i64 792, i1 false)
  store i64 63, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  br label %bb.ed

bb.bm:                                            ; preds = %bb.a
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.xs = load i8, ptr %i.xr, align 8, !range !86, !noundef !12
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.xu = load i8, ptr %i.xt, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.gd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.xq) #42
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.xs, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.xu, ptr %i.xw, align 1
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.xx, ptr noundef nonnull align 8 dereferenceable(792) %i.gd, i64 792, i1 false)
  store i64 64, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd)
  br label %bb.ed

bb.bn:                                            ; preds = %bb.a
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.ya = load i8, ptr %i.xz, align 8, !range !86, !noundef !12
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.yc = load i8, ptr %i.yb, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.gc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.xy) #42
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.ya, ptr %i.yd, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.yc, ptr %i.ye, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.yf, ptr noundef nonnull align 8 dereferenceable(792) %i.gc, i64 792, i1 false)
  store i64 65, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  br label %bb.ed

bb.bo:                                            ; preds = %bb.a
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call fastcc void @_RNvXsy2_NtCs4lawaffTVVK_9sqlparser3astNtB6_11ShowCharsetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(336) %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.yg) #42
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.yh, ptr noundef nonnull align 8 dereferenceable(336) %i.gb, i64 336, i1 false)
  store i64 66, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  br label %bb.ed

bb.bp:                                            ; preds = %bb.a
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0517)
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.yk = load i8, ptr %i.yj, align 8, !range !86, !alias.scope !10905, !noalias !10908, !noundef !12
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %.sroa.0517, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(800) %i.yi) #42, !noalias !12
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.yl, ptr noundef nonnull align 8 dereferenceable(792) %.sroa.0517, i64 792, i1 false)
  %.sroa.4518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.yk, ptr %.sroa.4518.0..sroa_idx, align 8
  store i64 67, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0517)
  br label %bb.ed

bb.bq:                                            ; preds = %bb.a
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 800
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 804
  %4 = load i8, ptr %3, align 4, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 800
  %5 = load <4 x i8>, ptr %i.yn, align 8
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.ga, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.ym) #42
  store <4 x i8> %5, ptr %i.yo, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 804
  store i8 %4, ptr %6, align 4
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.yp, ptr noundef nonnull align 8 dereferenceable(792) %i.ga, i64 792, i1 false)
  store i64 68, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  br label %bb.ed

bb.br:                                            ; preds = %bb.a
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.ys = load i8, ptr %i.yr, align 8, !range !86, !noundef !12
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.yu = load i8, ptr %i.yt, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.fz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.yq) #42
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.ys, ptr %i.yv, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.yu, ptr %i.yw, align 1
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.yx, ptr noundef nonnull align 8 dereferenceable(792) %i.fz, i64 792, i1 false)
  store i64 69, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  br label %bb.ed

bb.bs:                                            ; preds = %bb.a
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.yz = load i64, ptr %i.yy, align 8, !range !901, !noundef !12
  %.not256 = icmp eq i64 %i.yz, 73
  br i1 %.not256, label %bb.pt, label %bb.ps

bb.bt:                                            ; preds = %bb.a
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  call fastcc void @_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_3UseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.fx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.za) #42
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zb, ptr noundef nonnull align 8 dereferenceable(32) %i.fx, i64 32, i1 false)
  store i64 71, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  br label %bb.ed

bb.bu:                                            ; preds = %bb.a
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast15TransactionModeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zc)
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.zf = load i8, ptr %i.ze, align 8, !range !86, !noundef !12
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.zh = load i8, ptr %i.zg, align 2, !range !81, !noundef !12
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.zj = load i8, ptr %i.zi, align 1, !range !2791, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zd)
          to label %bb.pw unwind label %bb.pv

bb.bv:                                            ; preds = %bb.a
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val396 = load i8, ptr %i.zk, align 1, !range !10058, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zl)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.576)
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.zn = load i64, ptr %i.zm, align 8, !range !13, !noundef !12
  %.not250 = icmp eq i64 %i.zn, -9223372036854775808
  br i1 %.not250, label %bb.qc, label %bb.qb

bb.bw:                                            ; preds = %bb.a
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zp = load i8, ptr %i.zo, align 8, !range !86, !noundef !12
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.zr = load i8, ptr %i.zq, align 1, !range !86, !noundef !12
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.zt = load i8, ptr %i.zs, align 2, !range !2791, !noundef !12
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.zp, ptr %i.zu, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.zr, ptr %i.zv, align 1
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.zt, ptr %i.zw, align 2
  store i64 74, ptr %0, align 8
  br label %bb.ed

bb.bx:                                            ; preds = %bb.a
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.zy = load i8, ptr %i.zx, align 8, !range !86, !noundef !12
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aaa = load i64, ptr %i.zz, align 8, !range !13, !noundef !12
  %.not248 = icmp eq i64 %i.aaa, -9223372036854775808
  br i1 %.not248, label %bb.qg, label %bb.qf

bb.by:                                            ; preds = %bb.a
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  call fastcc void @_RNvXsuO_NtCs4lawaffTVVK_9sqlparser3astNtB6_10SchemaNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aab) #42
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.aad = load i8, ptr %i.aac, align 8, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.aaf = load i64, ptr %i.aae, align 8, !range !13, !noundef !12
  %.not240 = icmp eq i64 %i.aaf, -9223372036854775808
  br i1 %.not240, label %bb.qi, label %bb.qh

bb.bz:                                            ; preds = %bb.a
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aag)
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aai = load i8, ptr %i.aah, align 8, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aak = load i64, ptr %i.aaj, align 8, !range !13, !noundef !12
  %.not216 = icmp eq i64 %i.aak, -9223372036854775808
  br i1 %.not216, label %bb.rd, label %bb.rc

bb.ca:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  call fastcc void @_RNvXs8Q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %1) #42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull align 8 dereferenceable(2688) %i.fd, i64 2688, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  br label %bb.ed

bb.cb:                                            ; preds = %bb.a
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  call fastcc void @_RNvXs9E_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_13CreateTriggerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(720) %i.fc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(720) %i.aal) #42
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.aam, ptr noundef nonnull align 8 dereferenceable(720) %i.fc, i64 720, i1 false)
  store i64 79, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  br label %bb.ed

bb.cc:                                            ; preds = %bb.a
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call fastcc void @_RNvXs9O_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11DropTriggerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aan) #42
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aao, ptr noundef nonnull align 8 dereferenceable(56) %i.fb, i64 56, i1 false)
  store i64 80, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  br label %bb.ed

bb.cd:                                            ; preds = %bb.a
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aas = load i8, ptr %i.aar, align 8, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aau = load i64, ptr %i.aat, align 8, !range !13, !noundef !12
  %.not211 = icmp eq i64 %i.aau, -9223372036854775808
  br i1 %.not211, label %bb.to, label %bb.tn

bb.ce:                                            ; preds = %bb.a
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.aay = load i8, ptr %i.aax, align 8, !range !86, !noundef !12
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 385
  %i.aba = load i8, ptr %i.aaz, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ew, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aav)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.abc = load i64, ptr %i.abb, align 8, !range !13, !noundef !12
  %.not208 = icmp eq i64 %i.abc, -9223372036854775808
  br i1 %.not208, label %bb.uc, label %bb.ub

bb.cf:                                            ; preds = %bb.a
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.abh = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.abi = load i8, ptr %i.abh, align 8, !range !86, !noundef !12
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.abk = load i8, ptr %i.abj, align 1, !range !86, !noundef !12
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 290
  %i.abm = load i8, ptr %i.abl, align 2, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.et, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  invoke fastcc void @_RNvXs3_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_17StageParamsObjectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(136) %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.abe)
          to label %bb.ul unwind label %bb.uk

bb.cg:                                            ; preds = %bb.a
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  call fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.abn) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.abp = load i64, ptr %i.abo, align 8, !range !922, !noundef !12
  %.not201 = icmp eq i64 %i.abp, 69
  br i1 %.not201, label %bb.va, label %bb.uz

bb.ch:                                            ; preds = %bb.a
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10910)
  %i.abs = load i64, ptr %i.abq, align 8, !range !13, !alias.scope !10913, !noalias !10910, !noundef !12
  %.not.i424 = icmp eq i64 %i.abs, -9223372036854775808
  br i1 %.not.i424, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abq)
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.abq, i64 24, i1 false), !alias.scope !10915
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.abu = load i64, ptr %i.abt, align 8, !range !2330, !noundef !12
  %.not192 = icmp eq i64 %i.abu, 28
  br i1 %.not192, label %bb.ve, label %bb.vd

bb.ck:                                            ; preds = %bb.a
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call fastcc void @_RNvXsgV_NtCs4lawaffTVVK_9sqlparser3astNtB6_13DenyStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(176) %i.ej, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.abv) #42
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.abw, ptr noundef nonnull align 8 dereferenceable(176) %i.ej, i64 176, i1 false)
  store i64 86, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  br label %bb.ed

bb.cl:                                            ; preds = %bb.a
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10916)
  %i.abz = load i64, ptr %i.abx, align 8, !range !13, !alias.scope !10919, !noalias !10916, !noundef !12
  %.not.i425 = icmp eq i64 %i.abz, -9223372036854775808
  br i1 %.not.i425, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abx)
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit426

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.abx, i64 24, i1 false), !alias.scope !10921
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit426

_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit426: ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.acb = load i64, ptr %i.aca, align 8, !range !2330, !noundef !12
  %.not185 = icmp eq i64 %i.acb, 28
  br i1 %.not185, label %bb.vx, label %bb.vw

bb.co:                                            ; preds = %bb.a
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10925)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.acc)
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ace = load i32, ptr %i.acd, align 8, !range !5930, !alias.scope !10925, !noalias !10922, !noundef !12
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acg, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.acf, i64 32, i1 false), !alias.scope !10927
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  store i32 %i.ace, ptr %i.ach, align 8, !alias.scope !10922, !noalias !10925
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.acj = load i8, ptr %i.aci, align 8, !range !86, !noundef !12
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ack, ptr noundef nonnull align 8 dereferenceable(64) %i.ef, i64 64, i1 false)
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.acj, ptr %i.acl, align 8
  store i64 88, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %bb.ed

bb.cp:                                            ; preds = %bb.a
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.acq = load i64, ptr %i.acp, align 8, !range !13, !noundef !12
  %.not181 = icmp eq i64 %i.acq, -9223372036854775808
  br i1 %.not181, label %bb.wk, label %bb.wj

bb.cq:                                            ; preds = %bb.a
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10931)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.acr)
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.acu = load i32, ptr %i.act, align 8, !range !5930, !alias.scope !10931, !noalias !10928, !noundef !12
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.acv, i64 32, i1 false), !alias.scope !10933
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store i32 %i.acu, ptr %i.acx, align 8, !alias.scope !10928, !noalias !10931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acs)
          to label %bb.ww unwind label %bb.wv

bb.cr:                                            ; preds = %bb.a
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acz = load i8, ptr %i.acy, align 8, !range !5277, !noundef !12
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adb = load i64, ptr %i.ada, align 8, !noundef !12
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.acz, ptr %i.adc, align 8
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.adb, ptr %i.add, align 8
  store i64 91, ptr %0, align 8
  br label %bb.ed

bb.cs:                                            ; preds = %bb.a
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val401 = load i8, ptr %i.ade, align 1, !range !81, !noundef !12
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.adh = load i8, ptr %i.adg, align 2, !range !81, !noundef !12
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.adj = load i8, ptr %i.adi, align 8, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adf)
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.val401, ptr %i.adk, align 1
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.adh, ptr %i.adl, align 2
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.adj, ptr %i.adm, align 8
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adn, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false)
  store i64 92, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.ed

bb.ct:                                            ; preds = %bb.a
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 46
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val400 = load i8, ptr %7, align 2, !range !81, !noundef !12
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 42
  %8 = load <4 x i8>, ptr %i.adp, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  %i.adq = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ado) #42 ; 2 uses
  store ptr %i.adq, ptr %i.dx, align 8
  %i.adr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ads = load i8, ptr %i.adr, align 8, !range !81, !noundef !12 ; 2 uses
  %.not175 = icmp eq i8 %i.ads, 2
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.val416 = load i8, ptr %i.adt, align 1
  %.sroa.5106.0 = select i1 %.not175, i8 undef, i8 %.val416
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5109)
  %i.adu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.adv = load i64, ptr %i.adu, align 8, !range !13, !noundef !12
  %.not176 = icmp eq i64 %i.adv, -9223372036854775808
  br i1 %.not176, label %bb.xb, label %bb.xa

bb.cu:                                            ; preds = %bb.a
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10937)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.adw)
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ady = load i32, ptr %i.adx, align 8, !range !5930, !alias.scope !10937, !noalias !10934, !noundef !12
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aea = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aea, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.adz, i64 32, i1 false), !alias.scope !10939
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  store i32 %i.ady, ptr %i.aeb, align 8, !alias.scope !10934, !noalias !10937
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aec, ptr noundef nonnull align 8 dereferenceable(64) %i.dw, i64 64, i1 false)
  store i64 94, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  br label %bb.ed

bb.cv:                                            ; preds = %bb.a
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10943)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aed)
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aef = load i32, ptr %i.aee, align 8, !range !5930, !alias.scope !10943, !noalias !10940, !noundef !12
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aeh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aeg, i64 32, i1 false), !alias.scope !10945
  %i.aei = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  store i32 %i.aef, ptr %i.aei, align 8, !alias.scope !10940, !noalias !10943
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aej, ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i64 64, i1 false)
  store i64 95, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.ed

bb.cw:                                            ; preds = %bb.a
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.aem = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.aeo = load i8, ptr %i.aen, align 8, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call fastcc void @_RNvXs71_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(616) %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.aek) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  invoke fastcc void @_RNvXs71_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(616) %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.ael)
          to label %bb.xf unwind label %bb.xe

bb.cx:                                            ; preds = %bb.a
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aes = load i64, ptr %i.aer, align 8, !range !13, !noundef !12
  %.not165 = icmp eq i64 %i.aes, -9223372036854775808
  br i1 %.not165, label %bb.xr, label %bb.xq

bb.cy:                                            ; preds = %bb.a
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aet)
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aev = load i8, ptr %i.aeu, align 8, !range !86, !noundef !12
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aew, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false)
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.aev, ptr %i.aex, align 8
  store i64 98, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.ed

bb.cz:                                            ; preds = %bb.a
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.afb = load i8, ptr %i.afa, align 8, !range !86, !noundef !12
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.afd = load i8, ptr %i.afc, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aey)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aff = load i8, ptr %i.afe, align 8, !range !968, !noundef !12
  %.not160 = icmp eq i8 %i.aff, 116
  br i1 %.not160, label %bb.yc, label %bb.yb

bb.da:                                            ; preds = %bb.a
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call fastcc void @_RNvXs8G_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_12CreateDomainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(496) %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.afg) #42
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.afh, ptr noundef nonnull align 8 dereferenceable(496) %i.dj, i64 496, i1 false)
  store i64 100, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %bb.ed

bb.db:                                            ; preds = %bb.a
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  invoke fastcc void @_RNvXs7y_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_29UserDefinedTypeRepresentationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.afj)
          to label %bb.yo unwind label %bb.yn

bb.dc:                                            ; preds = %bb.a
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afk)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5122)
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.afm = load i64, ptr %i.afl, align 8, !range !1972, !noundef !12
  %.not159 = icmp eq i64 %i.afm, -9223372036854775787
  br i1 %.not159, label %bb.yq, label %bb.yp

bb.dd:                                            ; preds = %bb.a
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9LockTableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afn)
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afo, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  store i64 103, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %bb.ed

bb.de:                                            ; preds = %bb.a
  store i64 104, ptr %0, align 8
  br label %bb.ed

bb.df:                                            ; preds = %bb.a
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.aft = load ptr, ptr %i.afs, align 8, !align !375, !noundef !12
  %.not151 = icmp eq ptr %i.aft, null
  br i1 %.not151, label %bb.yu, label %bb.yt

bb.dg:                                            ; preds = %bb.a
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.afw = load i64, ptr %i.afv, align 8, !range !13, !noundef !12
  %.not145 = icmp eq i64 %i.afw, -9223372036854775808
  br i1 %.not145, label %bb.zr, label %bb.zq

bb.dh:                                            ; preds = %bb.a
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10949)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.afx)
  %i.afy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.afz = load i32, ptr %i.afy, align 8, !range !5930, !alias.scope !10949, !noalias !10946, !noundef !12
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.agb = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aga, i64 32, i1 false), !alias.scope !10951
  %i.agc = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store i32 %i.afz, ptr %i.agc, align 8, !alias.scope !10946, !noalias !10949
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.agd, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false)
  store i64 107, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.ed

bb.di:                                            ; preds = %bb.a
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10955)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.age)
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.agg = load i32, ptr %i.agf, align 8, !range !5930, !alias.scope !10955, !noalias !10952, !noundef !12
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.agi = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.agh, i64 32, i1 false), !alias.scope !10957
  %i.agj = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store i32 %i.agg, ptr %i.agj, align 8, !alias.scope !10952, !noalias !10955
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.agk, ptr noundef nonnull align 8 dereferenceable(64) %i.cv, i64 64, i1 false)
  store i64 108, ptr %0, align 8
end_hunk_3
begin_hunk_4_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a

bb.ia:                                            ; preds = %bb.hz
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.jj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ee, !inline_history !937

bb.ib:                                            ; preds = %bb.hw
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.ic:                                            ; preds = %bb.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.hy

bb.id:                                            ; preds = %bb.ie
  %i.amo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ji) #38
          to label %bb.hz unwind label %bb.ee

bb.ie:                                            ; preds = %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.amj)
          to label %bb.ig unwind label %bb.id

bb.if:                                            ; preds = %bb.hy, %bb.ig
  %.sroa.09.0 = phi i64 [ %.sroa.09.0.copyload10, %bb.ig ], [ 69, %bb.hy ]
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.amp, ptr noundef nonnull align 8 dereferenceable(640) %i.jm, i64 640, i1 false)
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 1336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amq, ptr noundef nonnull align 8 dereferenceable(24) %i.jl, i64 24, i1 false)
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amr, ptr noundef nonnull align 8 dereferenceable(32) %i.jk, i64 32, i1 false)
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ams, ptr noundef nonnull align 8 dereferenceable(328) %i.jj, i64 328, i1 false)
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 1360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amt, ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i64 24, i1 false)
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i8 %i.ami, ptr %i.amu, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store i64 %.sroa.09.0, ptr %i.amv, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511, i64 320, i1 false)
  store i64 22, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  br label %bb.ed

bb.ig:                                            ; preds = %bb.ie
  %.sroa.09.0.copyload10 = load i64, ptr %i.bn, align 8
  %.sroa.511.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511.0..sroa_idx12, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.if

bb.ih:                                            ; preds = %bb.ik, %bb.ii
  %.pn329.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn.pn.pn, %bb.ik ], [ %i.amw, %bb.ii ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jg) #38
          to label %bb.ef unwind label %bb.ee

bb.ii:                                            ; preds = %bb.y
  %i.amw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ij:                                            ; preds = %bb.y
  %i.amx = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.je)
  %i.amy = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.amx)
          to label %bb.im unwind label %bb.il     ; 2 uses

bb.ik:                                            ; preds = %bb.in, %bb.il
  %.pn329.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn.pn, %bb.in ], [ %i.amz, %bb.il ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.jf) #38
          to label %bb.ih unwind label %bb.ee

bb.il:                                            ; preds = %bb.ij
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ik

bb.im:                                            ; preds = %bb.ij
  store ptr %i.amy, ptr %i.je, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd)
  invoke fastcc void @_RNvXsb7_NtCs4lawaffTVVK_9sqlparser3astNtB6_18CreateTableOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.jd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oh)
          to label %bb.ip unwind label %bb.io

bb.in:                                            ; preds = %bb.iq, %bb.io
  %.pn329.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn, %bb.iq ], [ %i.ana, %bb.io ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.je) #38
          to label %bb.ik unwind label %bb.ee

bb.io:                                            ; preds = %bb.im
  %i.ana = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.ip:                                            ; preds = %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oi)
          to label %bb.is unwind label %bb.ir

bb.iq:                                            ; preds = %bb.iw, %bb.ir
  %.pn329.pn.pn = phi { ptr, i32 } [ %.pn329.pn, %bb.iw ], [ %i.anb, %bb.ir ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast18CreateTableOptionsECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.jd) #38
          to label %bb.in unwind label %bb.ee

bb.ir:                                            ; preds = %bb.ip
  %i.anb = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.is:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb)
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.and = load i64, ptr %i.anc, align 8, !range !13, !noundef !12
  %.not326 = icmp eq i64 %i.and, -9223372036854775808
  br i1 %.not326, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.anc)
          to label %bb.iy unwind label %bb.ix

bb.iu:                                            ; preds = %bb.is
  store i64 -9223372036854775808, ptr %i.jb, align 8
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iy, %bb.iu
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 309
  %i.anf = load i8, ptr %i.ane, align 1, !range !86, !noundef !12
  %i.ang = getelementptr inbounds nuw i8, ptr %1, i64 310
  %i.anh = load i8, ptr %i.ang, align 2, !range !86, !noundef !12
  %i.ani = getelementptr inbounds nuw i8, ptr %1, i64 311
  %i.anj = load i8, ptr %i.ani, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ja)
  %i.ank = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.anl = load i64, ptr %i.ank, align 8, !range !13, !noundef !12
  %.not327 = icmp eq i64 %i.anl, -9223372036854775808
  br i1 %.not327, label %bb.ja, label %bb.iz

bb.iw:                                            ; preds = %bb.jc, %bb.ix
  %.pn329.pn = phi { ptr, i32 } [ %.pn329, %bb.jc ], [ %i.anm, %bb.ix ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.jc) #38
          to label %bb.iq unwind label %bb.ee

bb.ix:                                            ; preds = %bb.it
  %i.anm = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

bb.iy:                                            ; preds = %bb.it
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.iv

bb.iz:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ank)
          to label %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit439 unwind label %bb.jd

bb.ja:                                            ; preds = %bb.iv
  store i64 -9223372036854775808, ptr %i.ja, align 8
  br label %bb.jb

bb.jb:                                            ; preds = %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit439, %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515)
  %i.ann = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ano = load i64, ptr %i.ann, align 8, !range !2063, !noundef !12
  %.not328 = icmp eq i64 %i.ano, -9223372036854775806
  br i1 %.not328, label %bb.jf, label %bb.je

bb.jc:                                            ; preds = %bb.jg, %bb.jd
  %.pn329 = phi { ptr, i32 } [ %i.aod, %bb.jg ], [ %i.anp, %bb.jd ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.jb) #38
          to label %bb.iw unwind label %bb.ee

bb.jd:                                            ; preds = %bb.iz
  %i.anp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit439: ; preds = %bb.iz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.jb

bb.je:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke fastcc void @_RNvXsw6_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CreateViewParamsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(136) %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ann)
          to label %bb.jh unwind label %bb.jg

bb.jf:                                            ; preds = %bb.jb, %bb.jh
  %.sroa.013.0 = phi i64 [ %.sroa.013.0.copyload14, %bb.jh ], [ -9223372036854775806, %bb.jb ]
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <4 x i8> %2, ptr %i.anq, align 8
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anr, ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i64 24, i1 false)
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 %i.ol, ptr %i.ans, align 4
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ant, ptr noundef nonnull align 8 dereferenceable(24) %i.jf, i64 24, i1 false)
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.amy, ptr %i.anu, align 8
  %i.anv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anv, ptr noundef nonnull align 8 dereferenceable(32) %i.jd, i64 32, i1 false)
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anw, ptr noundef nonnull align 8 dereferenceable(24) %i.jc, i64 24, i1 false)
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anx, ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i64 24, i1 false)
  %i.any = getelementptr inbounds nuw i8, ptr %0, i64 309
  store i8 %i.anf, ptr %i.any, align 1
  %i.anz = getelementptr inbounds nuw i8, ptr %0, i64 310
  store i8 %i.anh, ptr %i.anz, align 2
  %i.aoa = getelementptr inbounds nuw i8, ptr %0, i64 311
  store i8 %i.anj, ptr %i.aoa, align 1
  %i.aob = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aob, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i64 24, i1 false)
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.013.0, ptr %i.aoc, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515, i64 128, i1 false)
  store i64 24, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg)
  br label %bb.ed

bb.jg:                                            ; preds = %bb.je
  %i.aod = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ja) #38
          to label %bb.jc unwind label %bb.ee

bb.jh:                                            ; preds = %bb.je
  %.sroa.013.0.copyload14 = load i64, ptr %i.bk, align 8
  %.sroa.515.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515.0..sroa_idx16, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.jf

bb.ji:                                            ; preds = %bb.jl, %bb.jj
  %.pn324 = phi { ptr, i32 } [ %i.aol, %bb.jl ], [ %i.aoe, %bb.jj ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iy) #38
          to label %bb.ef unwind label %bb.ee

bb.jj:                                            ; preds = %bb.aa
  %i.aoe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.jk:                                            ; preds = %bb.aa
  %i.aof = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aog = load i32, ptr %i.aof, align 8, !range !5930, !alias.scope !10820, !noalias !10817, !noundef !12
  %i.aoh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aoi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aoh, i64 32, i1 false), !alias.scope !10996
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  store i32 %i.aog, ptr %i.aoj, align 8, !alias.scope !10817, !noalias !10820
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iw)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aok)
          to label %bb.jm unwind label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aol = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ix) #38
          to label %bb.ji unwind label %bb.ee

bb.jm:                                            ; preds = %bb.jk
  %i.aom = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aom, ptr noundef nonnull align 8 dereferenceable(24) %i.iy, i64 24, i1 false)
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.or, ptr %i.aon, align 8
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aoo, ptr noundef nonnull align 8 dereferenceable(64) %i.ix, i64 64, i1 false)
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aop, ptr noundef nonnull align 8 dereferenceable(24) %i.iw, i64 24, i1 false)
  store i64 26, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ix)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy)
  br label %bb.ed

bb.jn:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5525)
  %i.aoq = icmp eq i64 %i.pd, 69
  br i1 %i.aoq, label %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10997
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.pc) #42
          to label %.noexc440 unwind label %bb.jr, !inline_history !11001

.noexc440:                                        ; preds = %bb.jo
  %.sroa.0523.0.copyload524 = load i64, ptr %i.c, align 8, !noalias !11002
  %.sroa.5525.0..sroa_idx526 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5525, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5525.0..sroa_idx526, i64 320, i1 false), !noalias !11002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10997
  br label %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.jp:                                            ; preds = %bb.ac
  store i64 70, ptr %i.it, align 8
  br label %bb.jq

bb.jq:                                            ; preds = %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.jp
  %i.aor = phi i1 [ %i.aox, %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ], [ true, %bb.jp ]
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 1164
  %i.aot = load <4 x i8>, ptr %i.aos, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.is)
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aov = load i64, ptr %i.aou, align 8, !range !922, !noundef !12
  %.not312 = icmp eq i64 %i.aov, 69
  br i1 %.not312, label %bb.jt, label %bb.js

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit443, %bb.jv, %bb.jr
  %.pn315.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aow, %bb.jr ], [ %.pn315.pn.pn.pn.pn.pn.pn, %bb.jv ], [ %.pn315.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit443 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iu) #38
          to label %bb.ef unwind label %bb.ee

bb.jr:                                            ; preds = %bb.jo
  %i.aow = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECs7p2uQeJxui2_9deltalake.exit

_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc440, %bb.jn
  %.sroa.0523.0 = phi i64 [ %.sroa.0523.0.copyload524, %.noexc440 ], [ 69, %bb.jn ] ; 2 uses
  store i64 %.sroa.0523.0, ptr %i.it, align 8
  %.sroa.5525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5525, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5525)
  %i.aox = icmp samesign ugt i64 %.sroa.0523.0, 68
  br label %bb.jq

bb.js:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aou)
          to label %bb.jx unwind label %bb.jw

bb.jt:                                            ; preds = %bb.jq
  store i64 69, ptr %i.is, align 8
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jx, %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ir)
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.aoz = load i64, ptr %i.aoy, align 8, !range !922, !noundef !12
  %.not313 = icmp eq i64 %i.aoz, 69
  br i1 %.not313, label %bb.jz, label %bb.jy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit443: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit445, %bb.kb, %bb.jw
  %.pn315.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.apa, %bb.jw ], [ %.pn315.pn.pn.pn.pn.pn, %bb.kb ], [ %.pn315.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit445 ] ; 2 uses
  br i1 %i.aor, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECs7p2uQeJxui2_9deltalake.exit, label %bb.jv

bb.jv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit443
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.it)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ee, !inline_history !11003

bb.jw:                                            ; preds = %bb.js
  %i.apa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit443

bb.jx:                                            ; preds = %bb.js
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.is, ptr noundef nonnull align 8 dereferenceable(328) %i.bj, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.ju

bb.jy:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aoy)
          to label %bb.kd unwind label %bb.kc

bb.jz:                                            ; preds = %bb.ju
  store i64 69, ptr %i.ir, align 8
  br label %bb.ka

bb.ka:                                            ; preds = %bb.kd, %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iq)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ov)
          to label %bb.kh unwind label %bb.kg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit445: ; preds = %bb.ke, %bb.kf, %bb.kc
  %.pn315.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.apd, %bb.kc ], [ %.pn315.pn.pn.pn.pn, %bb.kf ], [ %.pn315.pn.pn.pn.pn, %bb.ke ] ; 2 uses
  %i.apb = load i64, ptr %i.is, align 8, !range !922, !alias.scope !11004, !noundef !12
  %i.apc = icmp eq i64 %i.apb, 69
  br i1 %i.apc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit443, label %bb.kb

bb.kb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit445
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.is)
end_hunk_4
begin_hunk_5_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a

bb.wb:                                            ; preds = %bb.wh, %bb.wd
  %.pn188.pn = phi { ptr, i32 } [ %i.bfv, %bb.wh ], [ %i.bfl, %bb.wd ] ; 2 uses
  %i.bfj = load i64, ptr %i.eh, align 8, !range !2330, !alias.scope !11111, !noundef !12
  %i.bfk = icmp eq i64 %i.bfj, 28
  br i1 %i.bfk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast12GrantObjectsEECs7p2uQeJxui2_9deltalake.exit492, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast12GrantObjectsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.eh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast12GrantObjectsEECs7p2uQeJxui2_9deltalake.exit492 unwind label %bb.ee

bb.wd:                                            ; preds = %bb.vy
  %i.bfl = landingpad { ptr, i32 }
          cleanup
  br label %bb.wb

bb.we:                                            ; preds = %bb.vy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5541)
  %i.bfm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bfn = load i64, ptr %i.bfm, align 8, !range !13, !noundef !12
  %.not186 = icmp eq i64 %i.bfn, -9223372036854775808
  br i1 %.not186, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !11114)
  call void @llvm.experimental.noalias.scope.decl(metadata !11117)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bfm)
          to label %bb.wi unwind label %bb.wh

bb.wg:                                            ; preds = %bb.we, %bb.wi
  %.sroa.0539.0 = phi i64 [ %.sroa.0539.0.copyload, %bb.wi ], [ -9223372036854775808, %bb.we ]
  %i.bfo = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bfp = load i8, ptr %i.bfo, align 8, !range !81, !noundef !12
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bfq, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  %i.bfr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bfr, ptr noundef nonnull align 8 dereferenceable(56) %i.eh, i64 56, i1 false)
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bfs, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  %i.bft = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.0539.0, ptr %i.bft, align 8
  %.sroa.5541.0..sroa_idx542 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5541.0..sroa_idx542, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5541, i64 56, i1 false)
  %i.bfu = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bfp, ptr %i.bfu, align 8
  store i64 87, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5541)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %bb.ed

bb.wh:                                            ; preds = %bb.wf
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.eg) #38
          to label %bb.wb unwind label %bb.ee

bb.wi:                                            ; preds = %bb.wf
  %i.bfw = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bfx = load i32, ptr %i.bfw, align 8, !range !5930, !alias.scope !11117, !noalias !11114, !noundef !12
  %i.bfy = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bfz, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bfy, i64 32, i1 false), !alias.scope !11119
  %i.bga = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i32 %i.bfx, ptr %i.bga, align 8, !alias.scope !11114, !noalias !11117
  %.sroa.0539.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.5541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5541, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5541.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.wg

bb.wj:                                            ; preds = %bb.cp
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acp)
  br label %bb.wl

bb.wk:                                            ; preds = %bb.cp
  store i64 -9223372036854775808, ptr %i.ee, align 8
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wk, %bb.wj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acm)
          to label %bb.wo unwind label %bb.wn

bb.wm:                                            ; preds = %bb.wp, %bb.wn
  %.pn182.pn = phi { ptr, i32 } [ %.pn182, %bb.wp ], [ %i.bgb, %bb.wn ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee) #38
          to label %bb.ef unwind label %bb.ee

bb.wn:                                            ; preds = %bb.wl
  %i.bgb = landingpad { ptr, i32 }
          cleanup
  br label %bb.wm

bb.wo:                                            ; preds = %bb.wl
  %i.bgc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bgd = load i8, ptr %i.bgc, align 8, !range !86, !noundef !12
  %i.bge = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.bgf = load i8, ptr %i.bge, align 1, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acn)
          to label %bb.wr unwind label %bb.wq

bb.wp:                                            ; preds = %bb.ws, %bb.wq
  %.pn182 = phi { ptr, i32 } [ %i.bgh, %bb.ws ], [ %i.bgg, %bb.wq ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed) #38
          to label %bb.wm unwind label %bb.ee

bb.wq:                                            ; preds = %bb.wo
  %i.bgg = landingpad { ptr, i32 }
          cleanup
  br label %bb.wp

bb.wr:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aco)
          to label %bb.wt unwind label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.bgh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ec) #38
          to label %bb.wp unwind label %bb.ee

bb.wt:                                            ; preds = %bb.wr
  %i.bgi = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.bgj = load i8, ptr %i.bgi, align 2, !range !86, !noundef !12
  %i.bgk = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.bgl = load i8, ptr %i.bgk, align 1, !range !86, !noundef !12
  %i.bgm = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgm, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false)
  %i.bgn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgn, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false)
  %i.bgo = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.bgd, ptr %i.bgo, align 8
  %i.bgp = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.bgf, ptr %i.bgp, align 1
  %i.bgq = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgq, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgr, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false)
  %i.bgs = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.bgj, ptr %i.bgs, align 2
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %i.bgl, ptr %i.bgt, align 1
  store i64 89, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  br label %bb.ed

bb.wu:                                            ; preds = %bb.wx, %bb.wv
  %.pn179 = phi { ptr, i32 } [ %i.bgx, %bb.wx ], [ %i.bgu, %bb.wv ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ea) #38
          to label %bb.ef unwind label %bb.ee

bb.wv:                                            ; preds = %bb.cq
  %i.bgu = landingpad { ptr, i32 }
          cleanup
  br label %bb.wu

bb.ww:                                            ; preds = %bb.cq
  %i.bgv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bgw = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bgv)
          to label %bb.wy unwind label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.bgx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.dz) #38
          to label %bb.wu unwind label %bb.ee

bb.wy:                                            ; preds = %bb.ww
  %i.bgy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bgy, ptr noundef nonnull align 8 dereferenceable(64) %i.ea, i64 64, i1 false)
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgz, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false)
  %i.bha = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bgw, ptr %i.bha, align 8
  store i64 90, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.ed

bb.wz:                                            ; preds = %bb.xa
  %i.bhb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.dx) #38
          to label %bb.ef unwind label %bb.ee

bb.xa:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast13UtilityOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adu)
          to label %bb.xc unwind label %bb.wz

bb.xb:                                            ; preds = %bb.ct, %bb.xc
  %.sroa.0107.0 = phi i64 [ %.sroa.0107.0.copyload108, %bb.xc ], [ -9223372036854775808, %bb.ct ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %.val400, ptr %9, align 2
  %i.bhc = getelementptr inbounds nuw i8, ptr %0, i64 42
  store <4 x i8> %8, ptr %i.bhc, align 2
  %i.bhd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.adq, ptr %i.bhd, align 8
  %i.bhe = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.ads, ptr %i.bhe, align 8
  %i.bhf = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %.sroa.5106.0, ptr %i.bhf, align 1
  %i.bhg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0107.0, ptr %i.bhg, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109, i64 16, i1 false)
  store i64 93, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5109)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  br label %bb.ed

bb.xc:                                            ; preds = %bb.xa
  %.sroa.0107.0.copyload108 = load i64, ptr %i.p, align 8
  %.sroa.5109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109.0..sroa_idx110, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.xb

bb.xd:                                            ; preds = %bb.xg, %bb.xe
  %.pn171.pn.pn = phi { ptr, i32 } [ %.pn171.pn, %bb.xg ], [ %i.bhh, %bb.xe ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(616) %i.du) #38
          to label %bb.ef unwind label %bb.ee

bb.xe:                                            ; preds = %bb.cw
  %i.bhh = landingpad { ptr, i32 }
          cleanup
  br label %bb.xd

bb.xf:                                            ; preds = %bb.cw
  %i.bhi = getelementptr inbounds nuw i8, ptr %1, i64 1320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.bhj = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bhi)
          to label %bb.xi unwind label %bb.xh     ; 2 uses

bb.xg:                                            ; preds = %bb.xj, %bb.xh
  %.pn171.pn = phi { ptr, i32 } [ %.pn171, %bb.xj ], [ %i.bhk, %bb.xh ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(616) %i.dt) #38
          to label %bb.xd unwind label %bb.ee

bb.xh:                                            ; preds = %bb.xf
  %i.bhk = landingpad { ptr, i32 }
          cleanup
  br label %bb.xg

bb.xi:                                            ; preds = %bb.xf
  store ptr %i.bhj, ptr %i.ds, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast11MergeClauseENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aem)
          to label %bb.xl unwind label %bb.xk

bb.xj:                                            ; preds = %bb.xo, %bb.xk
  %.pn171 = phi { ptr, i32 } [ %i.bhu, %bb.xo ], [ %i.bhl, %bb.xk ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ds) #38
          to label %bb.xg unwind label %bb.ee

bb.xk:                                            ; preds = %bb.xi
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  br label %bb.xj

bb.xl:                                            ; preds = %bb.xi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5113)
  %i.bhm = getelementptr inbounds nuw i8, ptr %1, i64 1264 ; 2 uses
  %i.bhn = load i64, ptr %i.bhm, align 8, !range !842, !noundef !12
  %.not170 = icmp eq i64 %i.bhn, -9223372036854775807
  br i1 %.not170, label %bb.xn, label %bb.xm

bb.xm:                                            ; preds = %bb.xl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvXsrY_NtCs4lawaffTVVK_9sqlparser3astNtB6_12OutputClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bhm)
          to label %bb.xp unwind label %bb.xo

bb.xn:                                            ; preds = %bb.xl, %bb.xp
  %.sroa.0111.0 = phi i64 [ %.sroa.0111.0.copyload112, %bb.xp ], [ -9223372036854775807, %bb.xl ]
  %i.bho = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i8 %i.aeo, ptr %i.bho, align 8
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.bhp, ptr noundef nonnull align 8 dereferenceable(616) %i.du, i64 616, i1 false)
  %i.bhq = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.bhq, ptr noundef nonnull align 8 dereferenceable(616) %i.dt, i64 616, i1 false)
  %i.bhr = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store ptr %i.bhj, ptr %i.bhr, align 8
  %i.bhs = getelementptr inbounds nuw i8, ptr %0, i64 1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bhs, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false)
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 %.sroa.0111.0, ptr %i.bht, align 8
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113, i64 48, i1 false)
  store i64 96, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5113)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %bb.ed

bb.xo:                                            ; preds = %bb.xm
  %i.bhu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast11MergeClauseEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.dr) #38
          to label %bb.xj unwind label %bb.ee

bb.xp:                                            ; preds = %bb.xm
  %.sroa.0111.0.copyload112 = load i64, ptr %i.o, align 8
  %.sroa.5113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113.0..sroa_idx114, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.xn

bb.xq:                                            ; preds = %bb.cx
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aer)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.cx
  store i64 -9223372036854775808, ptr %i.dq, align 8
  br label %bb.xs

bb.xs:                                            ; preds = %bb.xr, %bb.xq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aep)
          to label %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit496 unwind label %bb.xu

bb.xt:                                            ; preds = %bb.xv, %bb.xu
  %.pn167.pn = phi { ptr, i32 } [ %.pn167, %bb.xv ], [ %i.bhv, %bb.xu ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq) #38
          to label %bb.ef unwind label %bb.ee

bb.xu:                                            ; preds = %bb.xs
  %i.bhv = landingpad { ptr, i32 }
          cleanup
  br label %bb.xt

_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit496: ; preds = %bb.xs
  %i.bhw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bhx = load i8, ptr %i.bhw, align 8, !range !86, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aeq)
          to label %bb.xx unwind label %bb.xw

bb.xv:                                            ; preds = %bb.ya, %bb.xw
  %.pn167 = phi { ptr, i32 } [ %i.bih, %bb.ya ], [ %i.bhy, %bb.xw ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp) #38
          to label %bb.xt unwind label %bb.ee

bb.xw:                                            ; preds = %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit496
  %i.bhy = landingpad { ptr, i32 }
          cleanup
  br label %bb.xv

bb.xx:                                            ; preds = %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit496
  %i.bhz = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bia = load ptr, ptr %i.bhz, align 8, !align !375, !noundef !12
  %.not166 = icmp eq ptr %i.bia, null
  br i1 %.not166, label %bb.xz, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.bib = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bhz)
          to label %bb.xz unwind label %bb.ya

bb.xz:                                            ; preds = %bb.xy, %bb.xx
  %.sroa.0115.0 = phi ptr [ null, %bb.xx ], [ %i.bib, %bb.xy ]
  %i.bic = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bic, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  %i.bid = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bid, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false)
  %i.bie = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.bhx, ptr %i.bie, align 8
  %i.bif = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bif, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.big = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0115.0, ptr %i.big, align 8
  store i64 97, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %bb.ed

bb.ya:                                            ; preds = %bb.xy
  %i.bih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.do) #38
          to label %bb.xv unwind label %bb.ee

bb.yb:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.afe)
          to label %bb.yf unwind label %bb.ye

bb.yc:                                            ; preds = %bb.cz
  store i8 116, ptr %i.dl, align 8
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yf, %bb.yc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast15SequenceOptionsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aez)
          to label %bb.yj unwind label %bb.yi
end_hunk_5

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.07?download=true
inline.NumInlined: 1670
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete8complete:bb.a
  %i.sn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit594 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gu:                                            ; preds = %bb.gs
  call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %i.so = load i8, ptr %i.au, align 8, !range !13, !alias.scope !2798, !noalias !2799, !noundef !10
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.gv, label %.noexc595.preheader, !prof !17

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2800
  %i.sq = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !range !27, !alias.scope !2798, !noalias !2799, !noundef !10
  store i8 %i.sr, ptr %i.e, align 1, !noalias !2800
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1482, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1988) #31
          to label %.noexc481 unwind label %bb.gt

.noexc481:                                        ; preds = %bb.gv
  unreachable

.noexc595.preheader:                              ; preds = %bb.gu
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit596 unwind label %.loopexit977

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit596: ; preds = %.noexc595.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.ss = load i64, ptr %i.at, align 8, !range !20, !alias.scope !2801, !noundef !10
  %i.st = icmp eq i64 %i.ss, -1
  br i1 %i.st, label %bb.hb, label %bb.gw

bb.gw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit596
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i598 unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.su = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body599 unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.sv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i598: ; preds = %bb.gw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.hb unwind label %bb.gz

.body599:                                         ; preds = %bb.gz, %bb.gx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit594
  %.pn411 = phi { ptr, i32 } [ %.pn409, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit594 ], [ %i.sw, %bb.gz ], [ %i.su, %bb.gx ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av) #28
          to label %bb.ha unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i598
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %.body599

bb.ha:                                            ; preds = %bb.hc, %bb.hi, %.body599
  %.pn413 = phi { ptr, i32 } [ %lpad.thr_comm912, %bb.hi ], [ %lpad.thr_comm.split-lp913, %bb.hc ], [ %.pn411, %.body599 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #28
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i598, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.sx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr null, ptr %i.sx, align 8, !alias.scope !2802, !noalias !2803
  %i.sy = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  store ptr null, ptr %i.sy, align 8, !alias.scope !2802, !noalias !2803
  %i.sz = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr null, ptr %i.sz, align 8, !alias.scope !2802, !noalias !2803
  %i.ta = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i8 0, ptr %i.ta, align 8, !alias.scope !2802, !noalias !2803
  invoke void @_RINvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB3_5Error20append_assign_to_msgcEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.aw, i32 noundef 10)
          to label %bb.hd unwind label %bb.hi

bb.hc:                                            ; preds = %bb.he
  %lpad.thr_comm.split-lp913 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.hd:                                            ; preds = %bb.hb
  invoke void @_RINvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB3_5Error20append_assign_to_msgRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.he unwind label %bb.hi

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %.sroa.6862.0..sroa_idx863 = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6862.0..sroa_idx863, ptr noundef nonnull align 8 dereferenceable(32) %i.sy, i64 32, i1 false)
  %.sroa.4856.0..sroa_idx857 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.cu, ptr %.sroa.4856.0..sroa_idx857, align 8, !alias.scope !2804, !noalias !2805
  %.sroa.5859.0..sroa_idx860 = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.cw, ptr %.sroa.5859.0..sroa_idx860, align 8, !alias.scope !2804, !noalias !2805
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.hf unwind label %bb.hc

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i603 unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.tc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i603: ; preds = %bb.hf
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit610 unwind label %.loopexit.split-lp962.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit610: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.dz

bb.hi:                                            ; preds = %bb.hb, %bb.hd
  %lpad.thr_comm912 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.aw) #28
          to label %bb.ha unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hj:                                            ; preds = %bb.go
  %i.td = load i64, ptr %i.dg, align 8, !noundef !10 ; 4 uses
  %i.te = icmp ult i64 %i.td, 384307168202282326
  call void @llvm.assume(i1 %i.te)
  %i.tf = icmp eq i64 %i.td, 0                    ; 3 uses
  br i1 %i.tf, label %bb.hl, label %bb.ia

bb.hk:                                            ; preds = %bb.go
  %i.tg = load i64, ptr %i.cl, align 8, !range !20, !noundef !10
  %.not423 = icmp eq i64 %i.tg, -1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  br i1 %.not423, label %bb.ir, label %bb.iq

bb.hl:                                            ; preds = %bb.hj
  %i.th = load i64, ptr %i.cy, align 8, !noundef !10 ; 2 uses
  %i.ti = icmp ult i64 %i.th, 576460752303423488
  call void @llvm.assume(i1 %i.ti)
  %i.tj = icmp eq i64 %i.th, 0
  br i1 %i.tj, label %bb.hm, label %bb.ia

bb.hm:                                            ; preds = %bb.hl
  %i.tk = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !noundef !10 ; 2 uses
  %i.tl = icmp ult i64 %i.tk, 2305843009213693952
  call void @llvm.assume(i1 %i.tl)
  %i.tm = icmp eq i64 %i.tk, 0
  br i1 %i.tm, label %bb.hn, label %bb.ia

bb.hn:                                            ; preds = %bb.hm
  %i.tn = load i64, ptr %i.da, align 8, !noundef !10 ; 2 uses
  %i.to = icmp ult i64 %i.tn, 576460752303423488
  call void @llvm.assume(i1 %i.to)
  %i.tp = icmp ne i64 %i.tn, 0
  %i.tq = trunc nuw i8 %.sroa.028.0 to i1
  %or.cond4 = or i1 %i.tp, %i.tq
  br i1 %or.cond4, label %bb.ia, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.tr = load i64, ptr %.sroa.11.0..sroa_idx268, align 8, !noundef !10 ; 2 uses
  %i.ts = icmp ult i64 %i.tr, 2305843009213693952
  call void @llvm.assume(i1 %i.ts)
  %i.tt = icmp eq i64 %i.tr, 0
  br i1 %i.tt, label %bb.hp, label %.thread

bb.hp:                                            ; preds = %bb.ho
  %i.tu = load i64, ptr %.sroa.11.0..sroa_idx270, align 8, !noundef !10 ; 2 uses
  %i.tv = icmp ult i64 %i.tu, 2305843009213693952
  call void @llvm.assume(i1 %i.tv)
  %i.tw = icmp eq i64 %i.tu, 0
  br i1 %i.tw, label %bb.hq, label %.thread

bb.hq:                                            ; preds = %bb.hp
  %i.tx = load i64, ptr %i.dc, align 8, !noundef !10 ; 2 uses
  %i.ty = icmp ult i64 %i.tx, 384307168202282326
  call void @llvm.assume(i1 %i.ty)
  %i.tz = icmp eq i64 %i.tx, 0
  br i1 %i.tz, label %bb.hr, label %.thread

bb.hr:                                            ; preds = %bb.hq
  %i.ua = load i64, ptr %i.di, align 8, !noundef !10 ; 2 uses
  %i.ub = icmp ult i64 %i.ua, 384307168202282326
  call void @llvm.assume(i1 %i.ub)
  %i.uc = icmp ne i64 %i.ua, 0
  %i.ud = or i8 %.sroa.6.0, %.sroa.020.0
  %4 = or i8 %.sroa.9.0, %i.ud
  %5 = icmp ne i8 %4, 0
  %or.cond12 = or i1 %i.uc, %5
  br i1 %or.cond12, label %.thread, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ue = load i64, ptr %i.de, align 8, !noundef !10 ; 3 uses
  %i.uf = icmp ult i64 %i.ue, 384307168202282326
  call void @llvm.assume(i1 %i.uf)
  %i.ug = icmp eq i64 %i.ue, 0
  br i1 %i.ug, label %bb.ht, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph: ; preds = %bb.hs
  %i.uh = load ptr, ptr %i.dd, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.ui = load i64, ptr %i.ck, align 8, !range !14, !noundef !10
  %.idx1397 = mul nuw nsw i64 %i.ue, 24
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 %.idx1397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.uh, ptr %i.y, align 8
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.ui, ptr %.sroa.5222.0..sroa_idx, align 8
  %.sroa.6223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  store ptr %i.uj, ptr %.sroa.6223.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7883)
  %.sroa.7883.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

bb.ht:                                            ; preds = %bb.hs
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete22builtin_complete_print(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) inttoptr (i64 4 to ptr), i64 noundef 0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(432) %0, i8 noundef %.sroa.0196.0)
          to label %_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete23builtin_complete_remove.exit unwind label %.loopexit.split-lp962.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hu:                                            ; preds = %bb.hx, %bb.hv
  %.pn416 = phi { ptr, i32 } [ %i.ul, %bb.hv ], [ %i.uq, %bb.hx ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hv:                                            ; preds = %bb.hy
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph, %bb.hz
  %i.um = phi ptr [ %i.uh, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph ], [ %i.us, %bb.hz ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  store ptr %i.un, ptr %.sroa.4221.0..sroa_idx, align 8, !alias.scope !2806, !noalias !2807
  %.sroa.0881.0.copyload882 = load i64, ptr %i.um, align 8, !noalias !2806 ; 2 uses
  %.sroa.7883.0..sroa_idx884 = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7883, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7883.0..sroa_idx884, i64 16, i1 false), !noalias !2806
  %.not415 = icmp eq i64 %.sroa.0881.0.copyload882, -1
  br i1 %.not415, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.hw

bb.hw:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.sroa.0881.0.copyload882, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7883.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7883, i64 16, i1 false)
  %i.uo = load ptr, ptr %.sroa.7883.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %i.up = load i64, ptr %i.uk, align 8, !noundef !10
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete22builtin_complete_print(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.uo, i64 noundef %i.up, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(432) %0, i8 noundef %.sroa.0196.0)
          to label %bb.hy unwind label %bb.hx

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit, %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7883)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit613 unwind label %.loopexit.split-lp962.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit613: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete23builtin_complete_remove.exit

bb.hx:                                            ; preds = %bb.hw
  %i.uq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #28
          to label %bb.hu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hy:                                            ; preds = %bb.hw
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x)
          to label %bb.hz unwind label %bb.hv

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7883)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7883)
  %i.ur = load ptr, ptr %.sroa.6223.0..sroa_idx, align 8, !alias.scope !2808, !noalias !2807, !nonnull !10, !noundef !10
  %i.us = load ptr, ptr %.sroa.4221.0..sroa_idx, align 8, !alias.scope !2808, !noalias !2807, !nonnull !10, !noundef !10 ; 2 uses
  %i.ut = icmp eq ptr %i.us, %i.ur
  br i1 %i.ut, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

.thread:                                          ; preds = %bb.ho, %bb.hp, %bb.hq, %bb.hr
  %spec.select1817 = select i1 %.sroa.033.0, i16 52, i16 20
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hj, %bb.hl, %bb.hm, %bb.hn
  %spec.select = select i1 %.sroa.033.0, i16 52, i16 20
  %i.uu = trunc nuw i8 %.sroa.028.0 to i1
  br i1 %i.uu, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %.thread, %bb.ia
  %spec.select1818 = phi i16 [ %spec.select1817, %.thread ], [ %spec.select, %bb.ia ] ; 2 uses
  %i.uv = load ptr, ptr %i.dd, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.uw = load i64, ptr %i.de, align 8, !noundef !10 ; 2 uses
  %i.ux = load ptr, ptr %i.df, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.uy = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.uz = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !noundef !10 ; 2 uses
  %i.va = load ptr, ptr %i.cx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.vb = load i64, ptr %i.cy, align 8, !noundef !10 ; 2 uses
  %i.vc = load ptr, ptr %i.cz, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.vd = load i64, ptr %i.da, align 8, !noundef !10 ; 2 uses
  %i.ve = load ptr, ptr %i.db, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.vf = load i64, ptr %i.dc, align 8, !noundef !10 ; 2 uses
  %i.vg = load ptr, ptr %.sroa.10.0..sroa_idx252, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.vh = load i64, ptr %.sroa.11.0..sroa_idx268, align 8, !noundef !10 ; 2 uses
  %i.vi = load ptr, ptr %.sroa.10.0..sroa_idx254, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.vj = load i64, ptr %.sroa.11.0..sroa_idx270, align 8, !noundef !10 ; 2 uses
  %.sroa.0359.0.insert.ext = zext nneg i8 %.sroa.020.0 to i24
  %.sroa.0359.1.insert.ext = zext nneg i8 %.sroa.6.0 to i24
  %.sroa.0359.1.insert.shift = shl nuw nsw i24 %.sroa.0359.1.insert.ext, 8
  %.sroa.0359.1.insert.insert = or disjoint i24 %.sroa.0359.1.insert.shift, %.sroa.0359.0.insert.ext
  %.sroa.0359.2.insert.ext = zext nneg i8 %.sroa.9.0 to i24
  %.sroa.0359.2.insert.shift = shl nuw nsw i24 %.sroa.0359.2.insert.ext, 16
  %.sroa.0359.2.insert.insert = or disjoint i24 %.sroa.0359.1.insert.insert, %.sroa.0359.2.insert.shift ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  %.idx.i = mul nuw nsw i64 %i.uw, 24
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uv, i64 %.idx.i
  %i.vl = icmp eq i64 %i.uw, 0
  br i1 %i.vl, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ib, %.noexc614
  %.sroa.03.012.i = phi ptr [ %i.vq, %.noexc614 ], [ %i.uv, %bb.ib ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !alias.scope !2809, !noalias !2811, !nonnull !10, !noundef !10
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i, i64 16
  %i.vp = load i64, ptr %i.vo, align 8, !alias.scope !2809, !noalias !2811, !noundef !10
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete21builtin_complete_add2(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.vn, i64 noundef %i.vp, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.uy, i64 noundef %i.uz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.va, i64 noundef range(i64 0, 576460752303423488) %i.vb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.vc, i64 noundef range(i64 0, 576460752303423488) %i.vd, i24 range(i24 0, 66048) %.sroa.0359.2.insert.insert, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ve, i64 noundef range(i64 0, 384307168202282326) %i.vf, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.vg, i64 noundef %i.vh, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.vi, i64 noundef %i.vj, i16 noundef %spec.select1818)
          to label %.noexc614 unwind label %.loopexit.split-lp962.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc614:                                        ; preds = %.lr.ph.i
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i, i64 24 ; 2 uses
  %i.vr = icmp eq ptr %i.vq, %i.vk
  br i1 %i.vr, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc614, %bb.ib
  %.idx17.i = mul nuw nsw i64 %i.td, 24
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ux, i64 %.idx17.i
  br i1 %i.tf, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete20builtin_complete_add.exit, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %._crit_edge.i, %.noexc615
  %.sroa.05.013.i = phi ptr [ %i.vx, %.noexc615 ], [ %i.ux, %._crit_edge.i ] ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 8
  %i.vu = load ptr, ptr %i.vt, align 8, !alias.scope !2810, !noalias !2812, !nonnull !10, !noundef !10
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 16
  %i.vw = load i64, ptr %i.vv, align 8, !alias.scope !2810, !noalias !2812, !noundef !10
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete21builtin_complete_add2(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.vu, i64 noundef %i.vw, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.uy, i64 noundef %i.uz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.va, i64 noundef range(i64 0, 576460752303423488) %i.vb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.vc, i64 noundef range(i64 0, 576460752303423488) %i.vd, i24 range(i24 0, 66048) %.sroa.0359.2.insert.insert, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ve, i64 noundef range(i64 0, 384307168202282326) %i.vf, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.vg, i64 noundef %i.vh, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.vi, i64 noundef %i.vj, i16 noundef %spec.select1818)
          to label %.noexc615 unwind label %.loopexit.split-lp962.loopexit.split-lp.loopexit

.noexc615:                                        ; preds = %.lr.ph15.i
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 24 ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.vs
  br i1 %i.vy, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete20builtin_complete_add.exit, label %.lr.ph15.i

bb.ic:                                            ; preds = %bb.ia
  %i.vz = load ptr, ptr %i.dd, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.wa = load i64, ptr %i.de, align 8, !noundef !10 ; 2 uses
  %i.wb = load ptr, ptr %i.df, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.wc = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.wd = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !noundef !10 ; 2 uses
  %i.we = load ptr, ptr %i.cx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.wf = load i64, ptr %i.cy, align 8, !noundef !10 ; 2 uses
  %i.wg = load ptr, ptr %i.cz, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.wh = load i64, ptr %i.da, align 8, !noundef !10 ; 2 uses
  %i.wi = load ptr, ptr %i.dh, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.wj = load i64, ptr %i.di, align 8, !noundef !10 ; 2 uses
  %.idx.i616 = mul nuw nsw i64 %i.wa, 24
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vz, i64 %.idx.i616
  %i.wl = icmp eq i64 %i.wa, 0
  br i1 %i.wl, label %._crit_edge.i618, label %.lr.ph.i617

.lr.ph.i617:                                      ; preds = %bb.ic, %.noexc619
  %.sroa.0.05.i = phi ptr [ %i.wm, %.noexc619 ], [ %i.vz, %bb.ic ] ; 2 uses
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete27builtin_complete_remove_cmd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.05.i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.wc, i64 noundef %i.wd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.we, i64 noundef range(i64 0, 576460752303423488) %i.wf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.wg, i64 noundef range(i64 0, 576460752303423488) %i.wh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.wi, i64 noundef range(i64 0, 384307168202282326) %i.wj)
          to label %.noexc619 unwind label %.loopexit.split-lp962.loopexit

.noexc619:                                        ; preds = %.lr.ph.i617
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24 ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.wk
  br i1 %i.wn, label %._crit_edge.i618, label %.lr.ph.i617

._crit_edge.i618:                                 ; preds = %.noexc619, %bb.ic
  %.idx10.i = mul nuw nsw i64 %i.td, 24
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wb, i64 %.idx10.i
  br i1 %i.tf, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete23builtin_complete_remove.exit, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %._crit_edge.i618, %.noexc620
  %.sroa.02.06.i = phi ptr [ %i.wp, %.noexc620 ], [ %i.wb, %._crit_edge.i618 ] ; 2 uses
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins8complete27builtin_complete_remove_cmd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.06.i, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.wc, i64 noundef %i.wd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.we, i64 noundef range(i64 0, 576460752303423488) %i.wf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.wg, i64 noundef range(i64 0, 576460752303423488) %i.wh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.wi, i64 noundef range(i64 0, 384307168202282326) %i.wj)
          to label %.noexc620 unwind label %.loopexit961

.noexc620:                                        ; preds = %.lr.ph8.i
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8frGy5WneL6_4fish8builtins9functions9functions:bb.a
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cs) #27
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEEB1z_.exit428

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEEB1z_.exit428: ; preds = %bb.nw, %bb.nx, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %.sink.split

bb.nz:                                            ; preds = %bb.oc, %bb.oa
  %.pn307 = phi { ptr, i32 } [ %i.acy, %bb.oa ], [ %i.add, %bb.oc ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cv) #28
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.oa:                                            ; preds = %bb.of, %bb.kh
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %bb.nz

bb.ob:                                            ; preds = %bb.kh
  %i.acz = extractvalue { ptr, i64 } %i.xb, 0
  %i.ada = extractvalue { ptr, i64 } %i.xb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  store i64 0, ptr %i.ct, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @2066, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 9, ptr %.sroa.524.0..sroa_idx, align 8
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store i64 5, ptr %i.adb, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store i64 1, ptr %.sroa.427.0..sroa_idx, align 8
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  store i64 4, ptr %i.adc, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  store i64 %i.gv, ptr %.sroa.430.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cu, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.acz, i64 noundef %i.ada, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.ct, i64 noundef 3)
          to label %bb.od unwind label %bb.oc

bb.oc:                                            ; preds = %bb.oe, %bb.ob
  %i.add = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ct) #28
          to label %bb.nz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.od:                                            ; preds = %bb.ob
  call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  %i.ade = load i8, ptr %i.cu, align 8, !range !13, !alias.scope !3045, !noalias !3046, !noundef !10
  %i.adf = trunc nuw i8 %i.ade to i1
  br i1 %i.adf, label %bb.oe, label %bb.of, !prof !17

bb.oe:                                            ; preds = %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3047
  %i.adg = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.adh = load i8, ptr %i.adg, align 1, !range !27, !alias.scope !3045, !noalias !3046, !noundef !10
  store i8 %i.adh, ptr %i.l, align 1, !noalias !3047
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1482, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2067) #31
          to label %.noexc unwind label %bb.oc

.noexc:                                           ; preds = %bb.oe
  unreachable

bb.of:                                            ; preds = %bb.od
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ct)
          to label %bb.og unwind label %bb.oa

bb.og:                                            ; preds = %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %.sroa.4500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.dh, ptr %.sroa.4500.0..sroa_idx, align 8, !alias.scope !3048, !noalias !3049
  %.sroa.6501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i64 %i.dj, ptr %.sroa.6501.0..sroa_idx, align 8, !alias.scope !3048, !noalias !3049
  %.sroa.7502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store ptr null, ptr %.sroa.7502.0..sroa_idx, align 8, !alias.scope !3048, !noalias !3049
  %.sroa.8504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store ptr null, ptr %.sroa.8504.0..sroa_idx, align 8, !alias.scope !3048, !noalias !3049
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !3048, !noalias !3049
  call void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.cw, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %.sink.split

.lr.ph851:                                        ; preds = %bb.ba, %.lr.ph851
  %.sroa.016.0849 = phi ptr [ %i.adi, %.lr.ph851 ], [ %i.gw, %bb.ba ] ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.016.0849, i64 16 ; 2 uses
  %i.adj = load ptr, ptr %.sroa.016.0849, align 8, !nonnull !10, !align !12, !noundef !10
  %i.adk = getelementptr inbounds nuw i8, ptr %.sroa.016.0849, i64 8
  %i.adl = load i64, ptr %i.adk, align 8, !noundef !10
  call void @_RNvNtCs8frGy5WneL6_4fish8function6remove(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.adj, i64 noundef %i.adl)
  %i.adm = icmp eq ptr %i.adi, %i.hu
  br i1 %i.adm, label %.sink.split, label %.lr.ph851
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs8frGy5WneL6_4fish8builtins6printfxNtB2_21RawStringToScalarType25raw_string_to_scalar_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %3, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3055
  call fastcc void @_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11parse_radixNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull readonly %1, ptr noundef nonnull readnone %i.b, i32 noundef 0, i32 undef, i1 noundef zeroext false), !noalias !3055
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !25, !noalias !3055, !noundef !10 ; 2 uses
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 8, !range !25, !noalias !3055, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3055
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1, !alias.scope !3054, !noalias !3056
  br label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.018.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !3055 ; 5 uses
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.419.0.copyload.i = load i64, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !3055 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3055
  %i.h = trunc nuw i8 %i.d to i1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i64 %.sroa.018.0.copyload.i, -1
  br i1 %i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  switch i64 %.sroa.018.0.copyload.i, label %bb.i [
    i64 0, label %bb.h
    i64 -9223372036854775808, label %bb.j
  ], !prof !26

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.018.0.copyload.i, ptr %i.j, align 8, !alias.scope !3054, !noalias !3056
  br label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.k, align 1, !alias.scope !3054, !noalias !3056
  br label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @57, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #31, !noalias !3055
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.l = icmp sgt i64 %.sroa.018.0.copyload.i, -1
  br i1 %i.l, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.m, align 8, !alias.scope !3054, !noalias !3056
  br label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit

bb.k:                                             ; preds = %bb.i
  %i.n = sub nsw i64 0, %.sroa.018.0.copyload.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !3054, !noalias !3056
  br label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit

bb.l:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.p, align 1, !alias.scope !3054, !noalias !3056
  br label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit

_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit: ; preds = %bb.b, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ %.sroa.419.0.copyload.i, %bb.k ], [ %.sroa.419.0.copyload.i, %bb.l ], [ %.sroa.419.0.copyload.i, %bb.j ], [ %.sroa.419.0.copyload.i, %bb.f ], [ %.sroa.419.0.copyload.i, %bb.g ]
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %bb.j ], [ 0, %bb.f ], [ 1, %bb.g ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !3054, !noalias !3056
  %i.q = tail call { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  store ptr %i.r, ptr %4, align 8, !captures !35
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.s, ptr %i.t, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string3subNtB2_3SubNtB4_16StringSubCommand6handle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 17 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [80 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %4, align 8, !nonnull !10, !align !12, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !10
  %i.n = load i64, ptr %0, align 8, !range !18, !noundef !10 ; 3 uses
  %.not51 = icmp eq i64 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 5 uses
  %.not52 = icmp eq i64 %i.p, 0                   ; 2 uses
  %or.cond = select i1 %.not51, i1 true, i1 %.not52
  br i1 %or.cond, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2071) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNtNtCs8frGy5WneL6_4fish8builtins6string9arguments(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = sub i64 0, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = icmp sgt i64 %i.p, 0
  %i.x = sub i64 0, %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i8, ptr %i.y, align 8, !range !13
  %.fr116 = freeze i8 %i.z
  %i.aa = trunc i8 %.fr116 to i1
  %6 = or i64 %i.p, %i.n
  %spec.select70.not = icmp eq i64 %6, 0
  %i.ab = trunc nuw i64 %i.n to i1
  %7 = load i64, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %i.aa, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.d
  %.mux115 = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 1)
  %brmerge114131 = icmp slt i64 %i.t, 0
  br label %.split

.split.us:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %bb.e unwind label %.loopexit.split.us

bb.e:                                             ; preds = %.split.us
  %i.ae = load i64, ptr %i.c, align 8, !range !21, !noundef !10
  %.not53.us = icmp eq i64 %i.ae, -2
  br i1 %.not53.us, label %.split111.us, label %.thread88

.thread88:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.af = load i64, ptr %i.b, align 8, !range !20, !alias.scope !3066, !noundef !10
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit79, label %bb.t

.loopexit.split.us:                               ; preds = %.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.540.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ah = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1996)
          to label %bb.y unwind label %bb.x       ; 2 uses

.split:                                           ; preds = %.split.preheader, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit
  %.sroa.03.0 = phi i32 [ %i.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ], [ 0, %.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %bb.g unwind label %.loopexit.split

.body:                                            ; preds = %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split, %bb.u, %bb.r, %bb.j
  %.pn = phi { ptr, i32 } [ %lpad.phi93, %bb.j ], [ %i.bi, %bb.r ], [ %i.bk, %bb.u ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d) #28
          to label %bb.w unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp

.loopexit.split:                                  ; preds = %.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i75
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.split
  %i.ai = load i64, ptr %i.c, align 8, !range !21, !noundef !10
  %.not53 = icmp eq i64 %i.ai, -2
  br i1 %.not53, label %.split111.us.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.aj = load i8, ptr %i.r, align 8, !range !13, !noundef !10
  %i.ak = trunc nuw i8 %i.aj to i1
  %.pre = load i64, ptr %i.v, align 8             ; 5 uses
  %i.al = call i64 @llvm.usub.sat.i64(i64 %.pre, i64 %i.u)
  %i.am = call i64 @llvm.umin.i64(i64 %.mux115, i64 %.pre)
  %.sroa.0.0.i = select i1 %brmerge114131, i64 %i.al, i64 %i.am ; 5 uses
  br i1 %.not52, label %bb.k, label %_RNCNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string3subNtB4_3SubNtB6_16StringSubCommand6handle0Ba_.exit

.split111.us.loopexit:                            ; preds = %bb.g
  %i.an = icmp slt i32 %.sroa.03.0, 1
  %i.ao = zext i1 %i.an to i32
  br label %.split111.us

.split111.us:                                     ; preds = %.split111.us.loopexit, %bb.e
  %.us-phi112 = phi i32 [ 1, %bb.e ], [ %i.ao, %.split111.us.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.i:                                             ; preds = %.split111.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit79, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  %.sroa.5.0 = phi i32 [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit79 ], [ 1, %.split111.us ]
  %.sroa.0.0 = phi i32 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit79 ], [ %.us-phi112, %.split111.us ]
  %i.ap = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.aq = insertvalue { i32, i32 } %i.ap, i32 %.sroa.5.0, 1
  ret { i32, i32 } %i.aq

.loopexit89:                                      ; preds = %bb.m, %bb.o
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp90:                             ; preds = %.invoke
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp90, %.loopexit89
  %lpad.phi93 = phi { ptr, i32 } [ %lpad.loopexit91, %.loopexit89 ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp90 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %.body unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp

_RNCNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string3subNtB4_3SubNtB6_16StringSubCommand6handle0Ba_.exit: ; preds = %bb.h
  %i.ar = call i64 @llvm.usub.sat.i64(i64 %.pre, i64 %i.x)
  %.sroa.0.0.i72 = select i1 %i.w, i64 %i.p, i64 %i.ar
  %i.as = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i72, i64 %.sroa.0.0.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNCNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string3subNtB4_3SubNtB6_16StringSubCommand6handle0Ba_.exit
  %spec.select.a = phi i64 [ %i.as, %_RNCNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string3subNtB4_3SubNtB6_16StringSubCommand6handle0Ba_.exit ], [ undef, %bb.h ]
  %spec.select = select i1 %i.ab, i64 %7, i64 %spec.select.a
  %.sroa.029.0 = select i1 %spec.select70.not, i64 %.pre, i64 %spec.select
  %i.at = add i64 %.sroa.029.0, %.sroa.0.0.i      ; 2 uses
  %i.au = icmp ult i64 %i.at, %.sroa.0.0.i
  br i1 %i.au, label %.invoke, label %bb.m

bb.l:                                             ; preds = %bb.o, %bb.n
  %i.av = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.03.0, i32 1) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 0
  %i.ax = extractvalue { i32, i1 } %i.av, 1
  br i1 %i.ax, label %.invoke, label %bb.p

.invoke:                                          ; preds = %bb.l, %bb.k
  %i.ay = phi ptr [ @2072, %bb.k ], [ @2073, %bb.l ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay) #30
          to label %.cont unwind label %.loopexit.split-lp90

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ad, align 8, !nonnull !10
  %i.ba = load ptr, ptr %i.ac, align 8, !nonnull !10, !align !11, !noundef !10
  %..i = call noundef i64 @llvm.umin.i64(i64 %.pre, i64 %i.at)
  %i.bb = sub nuw i64 %..i, %.sroa.0.0.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.sroa.0.0.i
  %i.bd = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bc, i64 noundef %i.bb)
          to label %bb.n unwind label %.loopexit89 ; 0 uses

bb.n:                                             ; preds = %bb.m
  br i1 %i.ak, label %bb.o, label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.ac, align 8, !nonnull !10, !align !11, !noundef !10
  %i.bf = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendcEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be, i32 noundef 10)
          to label %bb.l unwind label %.loopexit89 ; 0 uses

bb.p:                                             ; preds = %bb.l
  %i.bg = load i64, ptr %i.b, align 8, !range !20, !alias.scope !3067, !noundef !10
  %i.bh = icmp eq i64 %i.bg, -1
  br i1 %i.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split

bb.t:                                             ; preds = %.thread88
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i75 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i75: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit79 unwind label %.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit79: ; preds = %.thread88, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %.body, %bb.j, %.body85, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %lpad.loopexit.split-lp133 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.w:                                             ; preds = %.body85, %.body
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %.body85 ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn65.pn

.body85:                                          ; preds = %bb.ae, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn65 = phi { ptr, i32 } [ %.pn63, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.bm, %bb.x ], [ %i.cb, %bb.ae ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #28
          to label %bb.w unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i84, %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body85

bb.y:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @2074, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 41, ptr %i.bo, align 8
  store i64 -1, ptr %i.f, align 8
  %i.bp = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.z unwind label %.loopexit.split-lp100 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.aa, %.loopexit99, %.loopexit.split-lp100
  %.pn63 = phi { ptr, i32 } [ %lpad.loopexit.split-lp102, %.loopexit.split-lp100 ], [ %lpad.loopexit101, %.loopexit99 ], [ %i.bu, %bb.aa ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #28
          to label %.body85 unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp

.loopexit99:                                      ; preds = %.noexc81.preheader
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

.loopexit.split-lp100:                            ; preds = %bb.y
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.z:                                             ; preds = %bb.y
  %i.bq = extractvalue { ptr, i64 } %i.ah, 1
  %i.br = extractvalue { ptr, i64 } %i.ah, 0
  %i.bs = extractvalue { ptr, i64 } %i.bp, 0
  %i.bt = extractvalue { ptr, i64 } %i.bp, 1
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bs, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bt, ptr %.sroa.52.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.br, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.g, i64 noundef 1)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !3068)
  %i.bv = load i8, ptr %i.h, align 8, !range !13, !alias.scope !3068, !noalias !3069, !noundef !10
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ac, label %.noexc81.preheader, !prof !17

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3070
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !range !27, !alias.scope !3068, !noalias !3069, !noundef !10
  store i8 %i.by, ptr %i.a, align 1, !noalias !3070
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1482, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2075) #31
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.ac
  unreachable

.noexc81.preheader:                               ; preds = %bb.ab
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit82 unwind label %.loopexit99

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit82: ; preds = %.noexc81.preheader
  %i.bz = load i64, ptr %i.f, align 8, !range !20, !alias.scope !3071, !noundef !10
  %i.ca = icmp eq i64 %i.bz, -1
  br i1 %i.ca, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit82
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i84 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body85 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i84: ; preds = %bb.ad
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.08?download=true
inline.NumInlined: 3676
inline.NumDeleted: 1536
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtNtNtB9_6protos2pe2PEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_2PEE4from:bb.a
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.us = load i32, ptr %i.ur, align 8, !noundef !5
  %i.ut = zext i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  store i64 1, ptr %i.uu, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  store i64 %i.ut, ptr %i.uv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  %i.ux = load i16, ptr %i.uw, align 4, !noundef !5
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uq, i64 14
  %i.uz = load i16, ptr %i.uy, align 2, !noundef !5
  %i.va = zext i16 %i.uz to i32
  %i.vb = zext i16 %i.ux to i32
  store i32 1, ptr %i.n, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.vb, ptr %i.vc, align 4
  %i.vd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 1, ptr %i.vd, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %i.va, ptr %i.ve, align 4
  %i.vf = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vf, i8 0, i64 16, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6321
  %i.vg = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 137) 32, i64 noundef range(i64 1, 9) 8) #47, !noalias !6321 ; 4 uses
  %i.vh = icmp eq ptr %i.vg, null
  br i1 %i.vh, label %bb.gi, label %bb.gl, !prof !6

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
          to label %.noexc368 unwind label %bb.gj

.noexc368:                                        ; preds = %bb.gi
  unreachable

bb.gj:                                            ; preds = %bb.gi
  %i.vi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n) #45
          to label %.critedge197 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.vj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.gl:                                            ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vg, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.vk = getelementptr inbounds nuw i8, ptr %i.aj, i64 760 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6322)
  %.val.i370 = load ptr, ptr %i.vk, align 8, !alias.scope !6322, !align !23, !noundef !5 ; 4 uses
  %i.vl = icmp eq ptr %.val.i370, null
  br i1 %i.vl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit376, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.experimental.noalias.scope.decl(metadata !6323)
  %i.vm = getelementptr inbounds nuw i8, ptr %.val.i370, i64 16
  %.val.i.i.i.i371 = load ptr, ptr %i.vm, align 8, !alias.scope !6323, !noalias !6322, !align !23, !noundef !5 ; 4 uses
  %i.vn = icmp eq ptr %.val.i.i.i.i371, null
  br i1 %i.vn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i373, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i371)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i372 unwind label %.body374, !noalias !6324

.body374:                                         ; preds = %bb.gn
  %i.vo = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i371, i64 noundef 32, i64 noundef 8) #47, !noalias !6324
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i370, i64 noundef 32, i64 noundef 8) #47, !noalias !6322
  store ptr %i.vg, ptr %i.vk, align 8
  br label %.critedge197

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i372: ; preds = %bb.gn
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i371, i64 noundef 32, i64 noundef 8) #47, !noalias !6324
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i373

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i373: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i372, %bb.gm
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i370, i64 noundef 32, i64 noundef 8) #47, !noalias !6322
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit376

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit376: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i373, %bb.gl
  store ptr %i.vg, ptr %i.vk, align 8
  br label %bb.go

bb.go:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit376, %bb.gg
  %i.vp = getelementptr inbounds nuw i8, ptr %i.aj, i64 312
  %i.vq = load i64, ptr %i.vp, align 8, !noundef !5 ; 2 uses
  %i.vr = icmp ult i64 %i.vq, 67818912035696881
  call void @llvm.assume(i1 %i.vr)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store i64 1, ptr %i.vs, align 8, !alias.scope !6325
  %i.vt = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  store i64 %i.vq, ptr %i.vt, align 8, !alias.scope !6325
  %i.vu = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  %i.vv = load i64, ptr %i.vu, align 8, !noundef !5 ; 5 uses
  %i.vw = icmp ult i64 %i.vv, 67818912035696881
  call void @llvm.assume(i1 %i.vw)
  %i.vx = icmp samesign ugt i64 %i.vv, 4294967295
  %i.vy = shl nuw i64 %i.vv, 32
  %.sroa.0158.0.insert.insert = select i1 %i.vx, i64 513, i64 %i.vy ; 2 uses
  %i.vz = trunc i64 %.sroa.0158.0.insert.insert to i1
  br i1 %i.vz, label %bb.gp, label %bb.gq, !prof !6

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6326
  br label %.invoke1013

bb.gq:                                            ; preds = %bb.go
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0158.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  store i32 1, ptr %i.be, align 8, !alias.scope !6327
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.bf, align 4, !alias.scope !6327
  %i.wa = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  %i.wb = load i64, ptr %i.wa, align 8, !noundef !5 ; 2 uses
  %i.wc = icmp ult i64 %i.wb, 144115188075855872
  call void @llvm.assume(i1 %i.wc)
  %i.wd = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  store i64 1, ptr %i.wd, align 8, !alias.scope !6328
  %i.we = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  store i64 %i.wb, ptr %i.we, align 8, !alias.scope !6328
  %i.wf = getelementptr inbounds nuw i8, ptr %i.aj, i64 336
  %i.wg = load i64, ptr %i.wf, align 8, !noundef !5 ; 2 uses
  %i.wh = icmp ult i64 %i.wg, 115292150460684698
  call void @llvm.assume(i1 %i.wh)
  %i.wi = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  store i64 1, ptr %i.wi, align 8, !alias.scope !6329
  %i.wj = getelementptr inbounds nuw i8, ptr %i.aj, i64 152
  store i64 %i.wg, ptr %i.wj, align 8, !alias.scope !6329
  %i.wk = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  %i.wl = load i64, ptr %i.wk, align 8, !noundef !5 ; 2 uses
  %i.wm = icmp ult i64 %i.wl, 115292150460684698
  call void @llvm.assume(i1 %i.wm)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  store i64 1, ptr %i.wn, align 8, !alias.scope !6330
  %i.wo = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  store i64 %i.wl, ptr %i.wo, align 8, !alias.scope !6330
  %i.wp = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  %i.wq = load i64, ptr %i.wp, align 8, !noundef !5 ; 2 uses
  %i.wr = icmp ult i64 %i.wq, 104811045873349726
  call void @llvm.assume(i1 %i.wr)
  %i.ws = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  store i64 1, ptr %i.ws, align 8, !alias.scope !6331
  %i.wt = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  store i64 %i.wq, ptr %i.wt, align 8, !alias.scope !6331
  %i.wu = load i64, ptr %i.jt, align 8, !noundef !5 ; 2 uses
  %i.wv = icmp ult i64 %i.wu, 24530244778869085
  call void @llvm.assume(i1 %i.wv)
  %i.ww = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  store i64 1, ptr %i.ww, align 8, !alias.scope !6332
  %i.wx = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  store i64 %i.wu, ptr %i.wx, align 8, !alias.scope !6332
  %i.wy = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  %i.wz = load ptr, ptr %i.wy, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.idx = mul nuw nsw i64 %i.vv, 136
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 %.idx
  %i.xb = icmp eq i64 %i.vv, 0
  br i1 %i.xb, label %bb.gu, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 136
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wz, i64 64
  %i.xe = load i32, ptr %i.xd, align 8, !range !33, !noalias !6333, !noundef !5
  %i.xf = trunc nuw i32 %i.xe to i1
  br i1 %i.xf, label %bb.gs, label %.invoke, !prof !13

bb.gs:                                            ; preds = %bb.gr
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wz, i64 56
  %i.xh = load i32, ptr %i.xg, align 8, !range !33, !noalias !6333, !noundef !5
  %i.xi = trunc nuw i32 %i.xh to i1
  br i1 %i.xi, label %bb.gt, label %.invoke, !prof !13

.invoke:                                          ; preds = %bb.gs, %bb.gr
  %i.xj = phi ptr [ @47, %bb.gr ], [ @48, %bb.gs ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xj) #42
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.gt:                                            ; preds = %bb.gs
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wz, i64 60
  %i.xl = load i32, ptr %i.xk, align 4, !noalias !6333
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wz, i64 68
  %i.xn = load i32, ptr %i.xm, align 4, !noalias !6333
  %i.xo = zext i32 %i.xn to i64
  %i.xp = zext i32 %i.xl to i64
  %i.xq = add nuw nsw i64 %i.xo, %i.xp
  %i.xr = invoke noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionENCNvXs7_NtNtB1t_2pe6parserNtB1p_2PEINtNtBc_7convert4FromNtB2p_2PEE4froms2_0ENtNtNtBa_6traits8iterator8Iterator4foldyNvYyNtNtBc_3cmp3Ord3maxEB1v_(ptr noundef nonnull %i.xc, ptr noundef nonnull %i.xa, i64 noundef %i.xq)
          to label %bb.gv unwind label %bb.d      ; 3 uses

bb.gu:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br label %bb.hb

bb.gv:                                            ; preds = %bb.gt
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.xt = load i64, ptr %i.xs, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %or.cond = icmp ugt i64 %i.xt, %i.xr
  br i1 %or.cond, label %bb.gw, label %bb.hb

bb.gw:                                            ; preds = %bb.gv
  %2 = sub nuw i64 %i.xt, %i.xr
  store i64 1, ptr %i.m, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.xr, ptr %i.xu, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %2, ptr %i.xw, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xx, i8 0, i64 16, i1 false)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.hb, %bb.gw
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6334
  %i.xy = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 137) 48, i64 noundef range(i64 1, 9) 8) #47, !noalias !6334 ; 4 uses
  %i.xz = icmp eq ptr %i.xy, null
  br i1 %i.xz, label %bb.gy, label %bb.hc, !prof !6

bb.gy:                                            ; preds = %bb.gx
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #44
          to label %.noexc382 unwind label %bb.gz

.noexc382:                                        ; preds = %bb.gy
  unreachable

bb.gz:                                            ; preds = %bb.gy
  %i.ya = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #45
          to label %.critedge197 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.yb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.hb:                                            ; preds = %bb.gu, %bb.gv
  store i64 1, ptr %i.m, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.yc, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %i.yd, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, i8 0, i64 24, i1 false)
  br label %bb.gx

bb.hc:                                            ; preds = %bb.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.xy, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.yf = getelementptr inbounds nuw i8, ptr %i.aj, i64 768 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6335)
  %.val.i384 = load ptr, ptr %i.yf, align 8, !alias.scope !6335, !align !23, !noundef !5 ; 4 uses
  %i.yg = icmp eq ptr %.val.i384, null
  br i1 %i.yg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1E_.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.experimental.noalias.scope.decl(metadata !6336)
  %i.yh = getelementptr inbounds nuw i8, ptr %.val.i384, i64 32
  %.val.i.i.i.i385 = load ptr, ptr %i.yh, align 8, !alias.scope !6336, !noalias !6335, !align !23, !noundef !5 ; 4 uses
  %i.yi = icmp eq ptr %.val.i.i.i.i385, null
  br i1 %i.yi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i385)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i386 unwind label %.body387, !noalias !6337

.body387:                                         ; preds = %bb.he
  %i.yj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i385, i64 noundef 32, i64 noundef 8) #47, !noalias !6337
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i384, i64 noundef 48, i64 noundef 8) #47, !noalias !6335
  store ptr %i.xy, ptr %i.yf, align 8
  br label %.critedge197

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i386: ; preds = %bb.he
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i385, i64 noundef 32, i64 noundef 8) #47, !noalias !6337
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i386, %bb.hd
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i384, i64 noundef 48, i64 noundef 8) #47, !noalias !6335
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1E_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1E_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i.i, %bb.hc
  store ptr %i.xy, ptr %i.yf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef nonnull align 8 dereferenceable(800) %i.aj, i64 800, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser2PEEBJ_(ptr noalias nofree noundef align 8 dereferenceable(568) %1)
  ret void

bb.hf:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn194.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_12NestedProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB2D_12NestedProto2NtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB7_12NestedProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_7VersionNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB2D_7VersionNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB7_7VersionNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB5_9ShellItemNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB2D_9ShellItemNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnkNtB7_9ShellItemNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB5_3ZipNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB2D_3ZipNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zipNtB7_3ZipNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
end_hunk_0

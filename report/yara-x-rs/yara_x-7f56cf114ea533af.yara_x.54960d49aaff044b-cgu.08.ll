Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.08?download=true
inline.NumInlined: 3676
inline.NumDeleted: 1536
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtNtNtB9_6protos2pe2PEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_2PEE4from:bb.a
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uo, i64 14
  %i.ux = load i16, ptr %i.uw, align 2, !noundef !5
  %i.uy = zext i16 %i.ux to i32
  %i.uz = zext i16 %i.uv to i32
  store i32 1, ptr %i.n, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.uz, ptr %i.va, align 4
  %i.vb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 1, ptr %i.vb, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %i.uy, ptr %i.vc, align 4
  %i.vd = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vd, i8 0, i64 16, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6192
  %i.ve = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 137) 32, i64 noundef range(i64 1, 9) 8) #47, !noalias !6192 ; 4 uses
  %i.vf = icmp eq ptr %i.ve, null
  br i1 %i.vf, label %bb.gf, label %bb.gi, !prof !6

bb.gf:                                            ; preds = %bb.ge
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
          to label %.noexc368 unwind label %bb.gg

.noexc368:                                        ; preds = %bb.gf
  unreachable

bb.gg:                                            ; preds = %bb.gf
  %i.vg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n) #45
          to label %.critedge197 unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.vh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.gi:                                            ; preds = %bb.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ve, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.vi = getelementptr inbounds nuw i8, ptr %i.aj, i64 760 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6193)
  %.val.i370 = load ptr, ptr %i.vi, align 8, !alias.scope !6193, !align !23, !noundef !5 ; 4 uses
  %i.vj = icmp eq ptr %.val.i370, null
  br i1 %i.vj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit376, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.experimental.noalias.scope.decl(metadata !6194)
  %i.vk = getelementptr inbounds nuw i8, ptr %.val.i370, i64 16
  %.val.i.i.i.i371 = load ptr, ptr %i.vk, align 8, !alias.scope !6194, !noalias !6193, !align !23, !noundef !5 ; 4 uses
  %i.vl = icmp eq ptr %.val.i.i.i.i371, null
  br i1 %i.vl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i373, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i371)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i372 unwind label %.body374, !noalias !6195

.body374:                                         ; preds = %bb.gk
  %i.vm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i371, i64 noundef 32, i64 noundef 8) #47, !noalias !6195
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i370, i64 noundef 32, i64 noundef 8) #47, !noalias !6193
  store ptr %i.ve, ptr %i.vi, align 8
  br label %.critedge197

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i372: ; preds = %bb.gk
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i371, i64 noundef 32, i64 noundef 8) #47, !noalias !6195
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i373

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i373: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i372, %bb.gj
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i370, i64 noundef 32, i64 noundef 8) #47, !noalias !6193
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit376

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit376: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i373, %bb.gi
  store ptr %i.ve, ptr %i.vi, align 8
  br label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit376, %bb.gd
  %i.vn = getelementptr inbounds nuw i8, ptr %i.aj, i64 312
  %i.vo = load i64, ptr %i.vn, align 8, !noundef !5 ; 2 uses
  %i.vp = icmp ult i64 %i.vo, 67818912035696881
  call void @llvm.assume(i1 %i.vp)
  %i.vq = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store i64 1, ptr %i.vq, align 8, !alias.scope !6196
  %i.vr = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  store i64 %i.vo, ptr %i.vr, align 8, !alias.scope !6196
  %i.vs = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  %i.vt = load i64, ptr %i.vs, align 8, !noundef !5 ; 5 uses
  %i.vu = icmp ult i64 %i.vt, 67818912035696881
  call void @llvm.assume(i1 %i.vu)
  %i.vv = icmp samesign ugt i64 %i.vt, 4294967295
  %i.vw = shl nuw i64 %i.vt, 32
  %.sroa.0158.0.insert.insert = select i1 %i.vv, i64 513, i64 %i.vw ; 2 uses
  %i.vx = trunc i64 %.sroa.0158.0.insert.insert to i1
  br i1 %i.vx, label %bb.gm, label %bb.gn, !prof !6

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6197
  br label %.invoke998

.invoke998:                                       ; preds = %bb.ew, %bb.ey, %bb.gm
  %.sink = phi ptr [ %i.c, %bb.ew ], [ %i.d, %bb.ey ], [ %i.e, %bb.gm ] ; 2 uses
  %i.vy = phi ptr [ @641, %bb.ew ], [ @642, %bb.ey ], [ @643, %bb.gm ]
  store i8 2, ptr %.sink, align 1, !noalias !5
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vy) #42
          to label %.cont999 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont999:                                         ; preds = %.invoke998
  unreachable

bb.gn:                                            ; preds = %bb.gl
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0158.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  store i32 1, ptr %i.bd, align 8, !alias.scope !6198
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.be, align 4, !alias.scope !6198
  %i.vz = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  %i.wa = load i64, ptr %i.vz, align 8, !noundef !5 ; 2 uses
  %i.wb = icmp ult i64 %i.wa, 144115188075855872
  call void @llvm.assume(i1 %i.wb)
  %i.wc = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  store i64 1, ptr %i.wc, align 8, !alias.scope !6199
  %i.wd = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  store i64 %i.wa, ptr %i.wd, align 8, !alias.scope !6199
  %i.we = getelementptr inbounds nuw i8, ptr %i.aj, i64 336
  %i.wf = load i64, ptr %i.we, align 8, !noundef !5 ; 2 uses
  %i.wg = icmp ult i64 %i.wf, 115292150460684698
  call void @llvm.assume(i1 %i.wg)
  %i.wh = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  store i64 1, ptr %i.wh, align 8, !alias.scope !6200
  %i.wi = getelementptr inbounds nuw i8, ptr %i.aj, i64 152
  store i64 %i.wf, ptr %i.wi, align 8, !alias.scope !6200
  %i.wj = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  %i.wk = load i64, ptr %i.wj, align 8, !noundef !5 ; 2 uses
  %i.wl = icmp ult i64 %i.wk, 115292150460684698
  call void @llvm.assume(i1 %i.wl)
  %i.wm = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  store i64 1, ptr %i.wm, align 8, !alias.scope !6201
  %i.wn = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  store i64 %i.wk, ptr %i.wn, align 8, !alias.scope !6201
  %i.wo = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  %i.wp = load i64, ptr %i.wo, align 8, !noundef !5 ; 2 uses
  %i.wq = icmp ult i64 %i.wp, 104811045873349726
  call void @llvm.assume(i1 %i.wq)
  %i.wr = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  store i64 1, ptr %i.wr, align 8, !alias.scope !6202
  %i.ws = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  store i64 %i.wp, ptr %i.ws, align 8, !alias.scope !6202
  %i.wt = load i64, ptr %i.js, align 8, !noundef !5 ; 2 uses
  %i.wu = icmp ult i64 %i.wt, 24530244778869085
  call void @llvm.assume(i1 %i.wu)
  %i.wv = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  store i64 1, ptr %i.wv, align 8, !alias.scope !6203
  %i.ww = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  store i64 %i.wt, ptr %i.ww, align 8, !alias.scope !6203
  %i.wx = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  %i.wy = load ptr, ptr %i.wx, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.idx = mul nuw nsw i64 %i.vt, 136
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 %.idx
  %i.xa = icmp eq i64 %i.vt, 0
  br i1 %i.xa, label %bb.gr, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 136
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 64
  %i.xd = load i32, ptr %i.xc, align 8, !range !33, !noalias !6204, !noundef !5
  %i.xe = trunc nuw i32 %i.xd to i1
  br i1 %i.xe, label %bb.gp, label %.invoke1000, !prof !13

bb.gp:                                            ; preds = %bb.go
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wy, i64 56
  %i.xg = load i32, ptr %i.xf, align 8, !range !33, !noalias !6204, !noundef !5
  %i.xh = trunc nuw i32 %i.xg to i1
  br i1 %i.xh, label %bb.gq, label %.invoke1000, !prof !13

.invoke1000:                                      ; preds = %bb.gp, %bb.go
  %i.xi = phi ptr [ @47, %bb.go ], [ @48, %bb.gp ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xi) #42
          to label %.cont1001 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1001:                                        ; preds = %.invoke1000
  unreachable

bb.gq:                                            ; preds = %bb.gp
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wy, i64 60
  %i.xk = load i32, ptr %i.xj, align 4, !noalias !6204
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wy, i64 68
  %i.xm = load i32, ptr %i.xl, align 4, !noalias !6204
  %i.xn = zext i32 %i.xm to i64
  %i.xo = zext i32 %i.xk to i64
  %i.xp = add nuw nsw i64 %i.xn, %i.xo
  %i.xq = invoke noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionENCNvXs7_NtNtB1t_2pe6parserNtB1p_2PEINtNtBc_7convert4FromNtB2p_2PEE4froms2_0ENtNtNtBa_6traits8iterator8Iterator4foldyNvYyNtNtBc_3cmp3Ord3maxEB1v_(ptr noundef nonnull %i.xb, ptr noundef nonnull %i.wz, i64 noundef %i.xp)
          to label %bb.gs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.gr:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br label %bb.gy

bb.gs:                                            ; preds = %bb.gq
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.xs = load i64, ptr %i.xr, align 8, !noundef !5 ; 2 uses
  %2 = icmp uge i64 %i.xs, %i.xq                  ; 2 uses
  %3 = sub nuw i64 %i.xs, %i.xq
  %.sroa.3.0.i380 = select i1 %2, i64 %3, i64 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %4 = icmp ne i64 %.sroa.3.0.i380, 0
  %or.cond = select i1 %2, i1 %4, i1 false
  br i1 %or.cond, label %bb.gt, label %bb.gy

bb.gt:                                            ; preds = %bb.gs
  store i64 1, ptr %i.m, align 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.xq, ptr %i.xt, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %i.xu, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.3.0.i380, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xw, i8 0, i64 16, i1 false)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gy, %bb.gt
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6205
  %i.xx = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 137) 48, i64 noundef range(i64 1, 9) 8) #47, !noalias !6205 ; 4 uses
  %i.xy = icmp eq ptr %i.xx, null
  br i1 %i.xy, label %bb.gv, label %bb.gz, !prof !6

bb.gv:                                            ; preds = %bb.gu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #44
          to label %.noexc382 unwind label %bb.gw

.noexc382:                                        ; preds = %bb.gv
  unreachable

bb.gw:                                            ; preds = %bb.gv
  %i.xz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #45
          to label %.critedge197 unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ya = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.gy:                                            ; preds = %bb.gr, %bb.gs
  store i64 1, ptr %i.m, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.yb, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %i.yc, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yd, i8 0, i64 24, i1 false)
  br label %bb.gu

bb.gz:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.xx, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ye = getelementptr inbounds nuw i8, ptr %i.aj, i64 768 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6206)
  %.val.i384 = load ptr, ptr %i.ye, align 8, !alias.scope !6206, !align !23, !noundef !5 ; 4 uses
  %i.yf = icmp eq ptr %.val.i384, null
  br i1 %i.yf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1E_.exit, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !6207)
  %i.yg = getelementptr inbounds nuw i8, ptr %.val.i384, i64 32
  %.val.i.i.i.i385 = load ptr, ptr %i.yg, align 8, !alias.scope !6207, !noalias !6206, !align !23, !noundef !5 ; 4 uses
  %i.yh = icmp eq ptr %.val.i.i.i.i385, null
  br i1 %i.yh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i385)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i386 unwind label %.body387, !noalias !6208

.body387:                                         ; preds = %bb.hb
  %i.yi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i385, i64 noundef 32, i64 noundef 8) #47, !noalias !6208
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i384, i64 noundef 48, i64 noundef 8) #47, !noalias !6206
  store ptr %i.xx, ptr %i.ye, align 8
  br label %.critedge197

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i386: ; preds = %bb.hb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i385, i64 noundef 32, i64 noundef 8) #47, !noalias !6208
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i386, %bb.ha
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i384, i64 noundef 48, i64 noundef 8) #47, !noalias !6206
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1E_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1E_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i.i, %bb.gz
  store ptr %i.xx, ptr %i.ye, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef nonnull align 8 dereferenceable(800) %i.aj, i64 800, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser2PEEBJ_(ptr noalias nofree noundef align 8 dereferenceable(568) %1)
  ret void

bb.hc:                                            ; preds = %bb.b
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

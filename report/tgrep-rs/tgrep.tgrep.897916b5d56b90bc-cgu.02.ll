Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.02?download=true
inline.NumInlined: 782
inline.NumDeleted: 344
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions12all_patterns:bb.a
  br label %bb.am

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions12walk_options(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 590
  %i.c = load i8, ptr %i.b, align 2, !range !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 589
  %i.e = load i8, ptr %i.d, align 1, !range !8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 594
  %i.g = load i8, ptr %i.f, align 2, !range !8, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 595
  %i.j = load i8, ptr %i.i, align 1, !range !8
  %.sroa.0.0 = select i1 %i.h, i8 1, i8 %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 597
  %i.l = load i8, ptr %i.k, align 1, !range !8, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 609
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtB8_6string6StringENvYRB3m_INtNtB2g_7convert4IntoB13_E4intoEE9from_iterCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull %i.q, ptr noundef nonnull %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 598
  %i.w = load i8, ptr %i.v, align 2, !range !8, !noundef !6
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 599
  %i.z = load i8, ptr %i.y, align 1, !range !8
  %.sroa.01.0 = select i1 %i.x, i8 1, i8 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i32 0, ptr %i.ab, align 8
  store i64 1, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 67108864, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  store i8 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  store i64 -1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 229
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 4 uses
  store i64 0, ptr %i.aj, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.ak, align 2
  store i8 %i.c, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 %i.e, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 226
  store i8 %.sroa.0.0, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 227
  store i8 %i.l, ptr %i.ap, align 1
  %i.aq = load <2 x i64>, ptr %i.m, align 8
  store <2 x i64> %i.aq, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i8 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i64 104, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load <2 x i64>, ptr %i.n, align 8
  store <2 x i64> %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 229
  %i.ay = load <8 x i8>, ptr %i.o, align 1
  store <8 x i8> %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 237
  store i8 %.sroa.01.0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load <2 x i64>, ptr %i.aa, align 8
  store <2 x i64> %i.bb, ptr %i.ba, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.bc

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions13match_options(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(624) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 583
  %i.c = load i8, ptr %i.b, align 1, !range !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 587
  %i.e = load i8, ptr %i.d, align 1, !range !8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.g = load i8, ptr %i.f, align 8, !range !8, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 578
  %i.i = load i8, ptr %i.h, align 2, !range !8    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !range !20, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !range !20, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load i64, ptr %i.o, align 8
  %.val28 = load i64, ptr %i.n, align 8           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !20, !noundef !6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val29 = load i64, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 591
  %i.t = load i8, ptr %i.s, align 1, !range !8, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 575
  %i.v = load i8, ptr %i.u, align 1, !range !8
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %i.x = load i64, ptr %1, align 8, !range !20    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 602
  %i.ab = load i8, ptr %i.aa, align 2, !range !8, !noundef !6
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ad = trunc nuw i64 %i.x to i1
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp eq i64 %i.z, 0
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 574
  %i.ag = load i8, ptr %i.af, align 2, !range !8
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond5 = select i1 %i.ae, i1 true, i1 %i.ah
  br i1 %or.cond5, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old = getelementptr inbounds nuw i8, ptr %1, i64 574
  %.old3 = load i8, ptr %.old, align 2, !range !8, !noundef !6
  %.old4 = trunc nuw i8 %.old3 to i1
  br i1 %.old4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.aj = load i8, ptr %i.ai, align 8, !range !8
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond9 = select i1 %i.w, i1 true, i1 %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 607
  %i.am = load i8, ptr %i.al, align 1, !range !8
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond13 = select i1 %or.cond9, i1 true, i1 %i.an
  %i.ao = xor i8 %i.t, 1
  %spec.select27 = select i1 %or.cond13, i8 0, i8 %i.ao
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %bb.c, %bb.d
  %.sroa.017.0 = phi i8 [ 0, %bb.a ], [ %spec.select27, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !15, !noundef !6
  %.not = icmp ne i64 %i.aq, -1                   ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -1, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 603
  %i.as = load i8, ptr %i.ar, align 1, !range !8, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 579
  %i.au = load i8, ptr %i.at, align 1, !range !8, !noundef !6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 619
  %i.aw = load i8, ptr %i.av, align 1, !range !11, !alias.scope !418, !noundef !6
  %i.ax = invoke noundef zeroext i1 @_RNvMs_NtCsbNLsQi0JuJ4_5tgrep6outputNtB4_9ColorMode10is_enabled(i8 noundef %i.aw)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  br i1 %i.ax, label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions18wants_match_detail.exit, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.ay = or i8 %i.au, %i.i
  %or.cond.i = icmp ne i8 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.ba = load i8, ptr %i.az, align 4, !range !8, !alias.scope !418
  %i.bb = trunc nuw i8 %i.ba to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 607
  %i.bd = load i8, ptr %i.bc, align 1, !range !8, !alias.scope !418
  %i.be = or i8 %i.bd, %i.g
  %i.bf = icmp ne i8 %i.be, 0
  %or.cond11.i = select i1 %or.cond5.i, i1 true, i1 %i.bf
  %or.cond13.not.i = or i1 %.not, %or.cond11.i
  br i1 %or.cond13.not.i, label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions18wants_match_detail.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 580
  %i.bh = load i8, ptr %i.bg, align 4, !range !8, !alias.scope !418, !noundef !6
  br label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions18wants_match_detail.exit

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #22
          to label %bb.n unwind label %bb.m

_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions18wants_match_detail.exit: ; preds = %bb.k, %bb.j, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.bh, %bb.k ], [ 1, %.noexc ], [ 1, %bb.j ]
  %spec.select26 = or i64 %i.q, %i.m
  %i.bj = trunc nuw i64 %spec.select26 to i1
  %i.bk = trunc nuw i64 %i.q to i1
  %.sroa.522.0 = select i1 %i.bk, i64 %.val29, i64 %.val28
  %.sroa.015.0 = select i1 %i.bj, i64 %.sroa.522.0, i64 0
  %.sroa.018.0 = or i64 %i.m, %i.k
  %i.bl = trunc nuw i64 %.sroa.018.0 to i1
  %i.bm = trunc nuw i64 %i.k to i1
  %.sroa.519.0 = select i1 %i.bm, i64 %.val, i64 %.val28
  %.sroa.014.0 = select i1 %i.bl, i64 %.sroa.519.0, i64 0
  %i.bn = trunc nuw i8 %i.g to i1
  %i.bo = trunc nuw i8 %i.t to i1
  %or.cond = select i1 %i.bo, i1 true, i1 %i.w    ; 2 uses
  %.sroa.016.0 = select i1 %or.cond, i64 1, i64 %i.x
  %.sroa.5.0 = select i1 %or.cond, i64 1, i64 %i.z
  %i.bp = xor i8 %i.i, 1
  %.sroa.0.0 = select i1 %i.bn, i8 %i.bp, i8 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.c, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %i.e, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.0.0, ptr %i.bs, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.014.0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.015.0, ptr %i.bu, align 8
  store i64 %.sroa.016.0, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.017.0, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.as, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.au, ptr %i.bz, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i8 %.sroa.0.0.i, ptr %i.ca, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %bb.l
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions18effective_passthru(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 602
  %i.b = load i8, ptr %i.a, align 2, !range !8, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !20, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i64 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.j = load i8, ptr %i.i, align 2, !range !8
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 574
  %.old1 = load i8, ptr %.old, align 2, !range !8, !noundef !6
  %.old2 = trunc nuw i8 %.old1 to i1
  br i1 %.old2, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 575
  %i.m = load i8, ptr %i.l, align 1, !range !8, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.p = load i8, ptr %i.o, align 8, !range !8
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond6 = select i1 %i.n, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 607
  %i.s = load i8, ptr %i.r, align 1, !range !8
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond10 = select i1 %or.cond6, i1 true, i1 %i.t
  br i1 %or.cond10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 591
  %i.v = load i8, ptr %i.u, align 1, !range !8, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i1 %i.w, true
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi i1 [ %i.x, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions18make_output_config(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(624) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 578
  %i.i = load i8, ptr %i.h, align 2, !range !8, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 574
  %i.l = load i8, ptr %i.k, align 2, !range !8, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.o = load i8, ptr %i.n, align 8, !range !8, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 607
  %i.r = load i8, ptr %i.q, align 1, !range !8
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 579
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  %. = select i1 %i.v, i8 3, i8 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ %., %bb.d ], [ 2, %bb.a ], [ 4, %bb.b ], [ 5, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 619
  %i.x = load i8, ptr %i.w, align 1, !range !11, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 618
  %i.z = load i8, ptr %i.y, align 2, !range !11, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 585
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.ac = load <2 x i8>, ptr %i.aa, align 1
  %i.ad = load <2 x i8>, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !20, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !range !20, !noundef !6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %spec.select18 = or i64 %i.ah, %i.af
  %i.aj = trunc nuw i64 %spec.select18 to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ak = trunc nuw i64 %i.af to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i64, ptr %i.al, align 8
  %.val21 = load i64, ptr %i.ai, align 8
  %.sroa.5.0 = select i1 %i.ak, i64 %.val, i64 %.val21
  %i.am = icmp eq i64 %.sroa.5.0, 0
  br i1 %i.am, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.e, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !range !20, !noundef !6 ; 2 uses
  %spec.select20 = or i64 %i.ao, %i.ah
  %i.ap = trunc nuw i64 %spec.select20 to i1
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.aq = trunc nuw i64 %i.ao to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_0
begin_hunk_1_@_RNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_server:.split

bb.to:                                            ; preds = %bb.aet, %bb.tt, %_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers1_0B5_.exit, %bb.tn
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.eu)
          to label %bb.aew unwind label %bb.sx

bb.tp:                                            ; preds = %bb.ti
  %.not610 = icmp eq ptr %i.avw, null
  br i1 %.not610, label %bb.tr, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.awf = invoke fastcc noundef ptr @_RNvNtCsbNLsQi0JuJ4_5tgrep6search23require_server_coverage(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.avw)
          to label %bb.ts unwind label %bb.tf     ; 2 uses

bb.tr:                                            ; preds = %bb.tp
  %i.awg = invoke noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 21)
          to label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers1_0B5_.exit unwind label %bb.tf

_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers1_0B5_.exit: ; preds = %bb.tr
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.awg, ptr %i.awh, align 8
  store i8 1, ptr %0, align 8
  br label %bb.to

bb.ts:                                            ; preds = %bb.tq
  %.not611 = icmp eq ptr %i.awf, null
  br i1 %.not611, label %bb.tu, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.awf, ptr %i.awi, align 8
  store i8 1, ptr %0, align 8
  br label %bb.to

bb.tu:                                            ; preds = %bb.ts
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i64 0, ptr %i.eq, align 8
  %i.awj = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.awj, align 8
  %i.awk = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 0, ptr %i.awk, align 8
  %i.awl = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.avw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 7)
          to label %bb.tw unwind label %bb.tv     ; 3 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetReEECsbNLsQi0JuJ4_5tgrep.exit1050: ; preds = %bb.aea, %bb.tv
  %.pn695 = phi { ptr, i32 } [ %i.awm, %bb.tv ], [ %.pn693, %bb.aea ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eq) #22
          to label %bb.te unwind label %bb.xy

bb.tv:                                            ; preds = %bb.aer, %bb.ady, %bb.uc, %bb.ub, %bb.tz, %bb.tu
  %i.awm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetReEECsbNLsQi0JuJ4_5tgrep.exit1050

bb.tw:                                            ; preds = %bb.tu
  %.not612 = icmp eq ptr %i.awl, null
  br i1 %.not612, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.awn = load i8, ptr %i.awl, align 8, !range !19, !alias.scope !1191, !noundef !6
  %.not1340 = icmp eq i8 %i.awn, 4
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awl, i64 8
  %spec.select = select i1 %.not1340, ptr %i.awo, ptr %i.eq
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %bb.tw
  %.sroa.077.0 = phi ptr [ %i.eq, %bb.tw ], [ %spec.select, %bb.tx ] ; 5 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %7, i64 595
  %i.awq = load i8, ptr %i.awp, align 1, !range !8, !noundef !6
  %i.awr = trunc nuw i8 %i.awq to i1
  %i.aws = icmp eq i64 %i.aue, 2
  %or.cond7 = or i1 %i.aws, %i.awr
  br i1 %or.cond7, label %.thread1298, label %bb.tz

.thread1298:                                      ; preds = %bb.ty
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  br label %bb.ub

bb.tz:                                            ; preds = %bb.ty
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  %i.awt = getelementptr inbounds nuw i8, ptr %.sroa.077.0, i64 8 ; 2 uses
  %i.awu = load ptr, ptr %i.awt, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.sroa.077.0, i64 16 ; 2 uses
  %i.aww = load i64, ptr %i.awv, align 8, !noundef !6
  %i.awx = getelementptr inbounds nuw [32 x i8], ptr %i.awu, i64 %i.aww
  store ptr %i.awu, ptr %i.ep, align 8
  %i.awy = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.awx, ptr %i.awy, align 8
  %i.awz = invoke fastcc noundef zeroext i1 @_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers3_0EB2m_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ep)
          to label %bb.ua unwind label %bb.tv

bb.ua:                                            ; preds = %bb.tz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  br i1 %i.awz, label %bb.uc, label %bb.ub

bb.ub:                                            ; preds = %.thread1298, %bb.ua
  %i.axa = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.ud unwind label %bb.tv     ; 2 uses

bb.uc:                                            ; preds = %bb.ua
  %i.axb = load ptr, ptr %i.awt, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.axc = load i64, ptr %i.awv, align 8, !noundef !6
  %i.axd = getelementptr inbounds nuw [32 x i8], ptr %i.axb, i64 %i.axc
  invoke fastcc void @_RINvXs7_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB6_7HashSetReEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtB2r_6filter6FilterINtNtNtB1g_5slice4iter4IterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers4_0ENCB4z_s5_0EEB4D_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.eo, ptr noundef nonnull %i.axb, ptr noundef %i.axd)
          to label %bb.ue unwind label %bb.tv

bb.ud:                                            ; preds = %bb.ub
  %i.axe = extractvalue { i64, i64 } %i.axa, 0
  %i.axf = extractvalue { i64, i64 } %i.axa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  %.sroa.4516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i64 %i.axe, ptr %.sroa.4516.0..sroa_idx, align 8
  %.sroa.5517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i64 %i.axf, ptr %.sroa.5517.0..sroa_idx, align 8
  br label %bb.ue

bb.ue:                                            ; preds = %bb.uc, %bb.ud
  %.sroa.075.01300 = phi i1 [ true, %bb.uc ], [ false, %bb.ud ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  %i.axg = icmp eq i64 %i.aue, 0
  br i1 %i.axg, label %bb.ug, label %bb.uf

bb.uf:                                            ; preds = %bb.ug, %bb.ue
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.axh = getelementptr inbounds nuw i8, ptr %.sroa.077.0, i64 8
  %i.axi = load ptr, ptr %i.axh, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %.sroa.077.0, i64 16
  %i.axk = load i64, ptr %i.axj, align 8, !noundef !6
  %i.axl = getelementptr inbounds nuw [32 x i8], ptr %i.axi, i64 %i.axk
  store ptr %i.axi, ptr %i.el, align 8
  %i.axm = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.axl, ptr %i.axm, align 8
  %i.axn = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %i.eo, ptr %i.axn, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr %6, ptr %.sroa.492.0..sroa_idx, align 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr %2, ptr %.sroa.593.0..sroa_idx, align 8
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store i64 %3, ptr %.sroa.694.0..sroa_idx, align 8
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  store ptr %7, ptr %.sroa.795.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtB2l_5slice4iter4IterB11_ENCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers6_0EE9from_iterB3Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.em, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.el)
          to label %bb.uk unwind label %bb.uj

bb.ug:                                            ; preds = %bb.ue
  %i.axo = load i64, ptr %i.auu, align 8, !range !20, !noundef !6
  %i.axp = icmp ne i64 %i.axo, 0
  %or.cond9 = or i1 %.sroa.075.01300, %i.axp
  br i1 %or.cond9, label %bb.uf, label %bb.uh

bb.uh:                                            ; preds = %bb.ug, %bb.uk
  %.sroa.0301.0 = phi i8 [ 1, %bb.uk ], [ 0, %bb.ug ] ; 6 uses
  %.sroa.077.1 = phi ptr [ %i.en, %bb.uk ], [ %.sroa.077.0, %bb.ug ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  %i.axq = getelementptr inbounds nuw i8, ptr %7, i64 568
  %i.axr = load i8, ptr %i.axq, align 8, !range !11, !noundef !6 ; 2 uses
  %.not614 = icmp eq i8 %i.axr, 2
  br i1 %.not614, label %bb.um, label %bb.ul

bb.ui:                                            ; preds = %bb.aeu, %.thread1306, %bb.uj
  %.sroa.0301.1 = phi i8 [ %.sroa.0301.2, %bb.uj ], [ %.sroa.0301.0, %bb.aeu ], [ %.sroa.0301.0, %.thread1306 ]
  %.pn691 = phi { ptr, i32 } [ %i.axt, %bb.uj ], [ %.pn689, %bb.aeu ], [ %.pn689, %.thread1306 ] ; 2 uses
  %i.axs = trunc nuw i8 %.sroa.0301.1 to i1
  br i1 %i.axs, label %bb.aev, label %bb.aea

bb.uj:                                            ; preds = %bb.aeq, %bb.adx, %bb.uf
  %.sroa.0301.2 = phi i8 [ %.sroa.0301.0, %bb.aeq ], [ %.sroa.0301.0, %bb.adx ], [ 0, %bb.uf ]
  %i.axt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ui

bb.uk:                                            ; preds = %bb.uf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  br label %bb.uh

bb.ul:                                            ; preds = %bb.uh
  %i.axu = getelementptr inbounds nuw i8, ptr %7, i64 569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  %i.axv = load i8, ptr %i.axu, align 1, !range !12, !noundef !6
  store i8 %i.axr, ptr %i.ej, align 1
  %i.axw = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store i8 %i.axv, ptr %i.axw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  store i64 0, ptr %i.ei, align 8
  %i.axx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.axx, align 8
  %i.axy = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 3 uses
  store i64 0, ptr %i.axy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.axz = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.uo unwind label %bb.un     ; 2 uses

bb.um:                                            ; preds = %bb.uh, %bb.vo
  %.sroa.0298.0 = phi i8 [ 1, %bb.vo ], [ 0, %bb.uh ] ; 33 uses
  %.sroa.077.2 = phi ptr [ %i.ek, %bb.vo ], [ %.sroa.077.1, %bb.uh ] ; 6 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %.sroa.077.2, i64 16 ; 5 uses
  %i.ayb = load i64, ptr %i.aya, align 8, !noundef !6 ; 3 uses
  %i.ayc = icmp ult i64 %i.ayb, 288230376151711744
  call void @llvm.assume(i1 %i.ayc)
  %i.ayd = icmp ne i64 %i.ayb, 0                  ; 2 uses
  br i1 %i.og, label %.loopexit1359, label %bb.vp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit, %bb.un
  %.sroa.0298.1 = phi i8 [ %.sroa.0298.2, %bb.un ], [ %.sroa.0298.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit ]
  %.pn622 = phi { ptr, i32 } [ %i.aye, %bb.un ], [ %.pn620, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei) #22
          to label %.thread1306 unwind label %bb.xy

bb.un:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983, %bb.ul
  %.sroa.0298.2 = phi i8 [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983 ], [ 0, %bb.ul ]
  %i.aye = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit

bb.uo:                                            ; preds = %bb.ul
  %i.ayf = extractvalue { i64, i64 } %i.axz, 0
  %i.ayg = extractvalue { i64, i64 } %i.axz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  %.sroa.4522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store i64 %i.ayf, ptr %.sroa.4522.0..sroa_idx, align 8
  %.sroa.5523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store i64 %i.ayg, ptr %.sroa.5523.0..sroa_idx, align 8
  %i.ayh = getelementptr inbounds nuw i8, ptr %.sroa.077.1, i64 8
  %i.ayi = load ptr, ptr %i.ayh, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %.sroa.077.1, i64 16
  %i.ayk = load i64, ptr %i.ayj, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ayk, 5
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayi, i64 %.idx
  %i.aym = icmp eq i64 %i.ayk, 0
  br i1 %i.aym, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.uo
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %.sroa.4525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.6526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %.sroa.4528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.6529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  br label %bb.up

bb.up:                                            ; preds = %.lr.ph, %.backedge1398
  %.sroa.096.01420 = phi ptr [ %i.ayi, %.lr.ph ], [ %i.ayr, %.backedge1398 ] ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %.sroa.096.01420, i64 32 ; 2 uses
  %i.ays = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.096.01420, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %bb.uq unwind label %.loopexit1393 ; 4 uses

._crit_edge:                                      ; preds = %.backedge1398, %bb.uo
  %i.ayt = load ptr, ptr %i.axx, align 8, !nonnull !6, !noundef !6
  %i.ayu = load i64, ptr %i.axy, align 8, !noundef !6
  invoke fastcc void @_RINvMs_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_8SortMode13apply_indexedNtNtCsgCecv3eZDcN_5alloc6string6StringNvMB13_B11_6as_strEB7_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %i.ej, ptr noalias nofree noundef nonnull align 8 %i.ayt, i64 noundef %i.ayu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6)
          to label %bb.vh unwind label %.loopexit.split-lp1394

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.loopexit1393, %.loopexit.split-lp1394, %bb.vj
  %.sroa.0298.3 = phi i8 [ 0, %bb.vj ], [ 0, %.loopexit1393 ], [ %.sroa.0298.4.ph, %.loopexit.split-lp1394 ]
  %.pn620 = phi { ptr, i32 } [ %.pn618, %bb.vj ], [ %lpad.loopexit1395, %.loopexit1393 ], [ %lpad.loopexit.split-lp1396, %.loopexit.split-lp1394 ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eh)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.xy

.loopexit1393:                                    ; preds = %bb.vd, %bb.up, %bb.us, %bb.uw, %bb.uz
  %lpad.loopexit1395 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit

.loopexit.split-lp1394:                           ; preds = %.invoke1536, %._crit_edge, %bb.vh, %bb.vn
  %.sroa.0298.4.ph = phi i8 [ 1, %bb.vn ], [ 0, %.invoke1536 ], [ 0, %._crit_edge ], [ 0, %bb.vh ]
  %lpad.loopexit.split-lp1396 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit

bb.uq:                                            ; preds = %bb.up
  %.not615 = icmp eq ptr %i.ays, null
  br i1 %.not615, label %.backedge1398, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.ayv = load i8, ptr %i.ays, align 8, !range !19, !alias.scope !1192, !noundef !6
  %.not1341 = icmp eq i8 %i.ayv, 3
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ays, i64 16
  %i.ayx = load ptr, ptr %i.ayw, align 8, !alias.scope !1192, !nonnull !6 ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ays, i64 24
  %i.ayz = load i64, ptr %i.ayy, align 8, !alias.scope !1192 ; 9 uses
  br i1 %.not1341, label %bb.us, label %.backedge1398

bb.us:                                            ; preds = %bb.ur
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, i64 noundef %i.ayz, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ut unwind label %.loopexit1393

bb.ut:                                            ; preds = %bb.us
  %i.aza = load i64, ptr %i.bk, align 8, !range !20, !noundef !6
  %i.azb = trunc nuw i64 %i.aza to i1
  %i.azc = load i64, ptr %i.ayn, align 8, !range !21, !noundef !6 ; 3 uses
  br i1 %i.azb, label %bb.uu, label %bb.uv, !prof !10

bb.uu:                                            ; preds = %bb.ut
  %i.azd = load i64, ptr %i.ayo, align 8
  br label %.invoke1536

.invoke1536:                                      ; preds = %bb.vb, %bb.uu
  %i.aze = phi i64 [ %i.azc, %bb.uu ], [ %i.azm, %bb.vb ]
  %i.azf = phi i64 [ %i.azd, %bb.uu ], [ %i.azn, %bb.vb ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.aze, i64 %i.azf) #24
          to label %.cont1537 unwind label %.loopexit.split-lp1394

.cont1537:                                        ; preds = %.invoke1536
  unreachable

bb.uv:                                            ; preds = %bb.ut
  %i.azg = load ptr, ptr %i.ayo, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.azh = icmp ule i64 %i.ayz, %i.azc
  call void @llvm.assume(i1 %i.azh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %.not617 = icmp eq i64 %i.ayz, 0                ; 2 uses
  br i1 %.not617, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.ux, %bb.uv
  store i64 %i.azc, ptr %i.eg, align 8
  store ptr %i.azg, ptr %.sroa.4525.0..sroa_idx, align 8
  store i64 %i.ayz, ptr %.sroa.6526.0..sroa_idx, align 8
  %i.azi = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.eg)
          to label %bb.uy unwind label %.loopexit1393

bb.ux:                                            ; preds = %bb.uv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azg, ptr nonnull align 1 %i.ayx, i64 %i.ayz, i1 false)
  br label %bb.uw

bb.uy:                                            ; preds = %bb.uw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br i1 %i.azi, label %.backedge1398, label %bb.uz

bb.uz:                                            ; preds = %bb.uy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bj, i64 noundef %i.ayz, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.va unwind label %.loopexit1393

.backedge1398:                                    ; preds = %bb.uy, %bb.uq, %bb.ur, %bb.vf
  %i.azj = icmp eq ptr %i.ayr, %i.ayl
  br i1 %i.azj, label %._crit_edge, label %bb.up

bb.va:                                            ; preds = %bb.uz
  %i.azk = load i64, ptr %i.bj, align 8, !range !20, !noundef !6
  %i.azl = trunc nuw i64 %i.azk to i1
  %i.azm = load i64, ptr %i.ayp, align 8, !range !21, !noundef !6 ; 3 uses
  br i1 %i.azl, label %bb.vb, label %bb.vc, !prof !10

bb.vb:                                            ; preds = %bb.va
  %i.azn = load i64, ptr %i.ayq, align 8
  br label %.invoke1536

bb.vc:                                            ; preds = %bb.va
  %i.azo = load ptr, ptr %i.ayq, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.azp = icmp ule i64 %i.ayz, %i.azm
  call void @llvm.assume(i1 %i.azp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br i1 %.not617, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %bb.ve, %bb.vc
  store i64 %i.azm, ptr %i.ef, align 8
  store ptr %i.azo, ptr %.sroa.4528.0..sroa_idx, align 8
  store i64 %i.ayz, ptr %.sroa.6529.0..sroa_idx, align 8
  invoke fastcc void @_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ef)
          to label %bb.vf unwind label %.loopexit1393

bb.ve:                                            ; preds = %bb.vc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azo, ptr nonnull align 1 %i.ayx, i64 %i.ayz, i1 false)
  br label %bb.vd

bb.vf:                                            ; preds = %bb.vd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %.backedge1398

bb.vg:                                            ; preds = %bb.ace, %bb.yo, %bb.yi, %bb.xh, %bb.xb
  unreachable

bb.vh:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  %i.azq = load ptr, ptr %i.axx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.azr = load i64, ptr %i.axy, align 8, !noundef !6
  %i.azs = getelementptr inbounds nuw [24 x i8], ptr %i.azq, i64 %i.azr
  store ptr %i.azq, ptr %i.ed, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.azs, ptr %.sroa.4105.0..sroa_idx, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 0, ptr %.sroa.5106.0..sroa_idx, align 8
  invoke void @_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapRejEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB15_jEE9from_iterINtNtNtB1g_8adapters3map3MapINtNtB2w_9enumerate9EnumerateINtNtNtB1i_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers8_0EEB4x_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ee, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ed)
          to label %bb.vi unwind label %.loopexit.split-lp1394

bb.vi:                                            ; preds = %bb.vh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.077.1)
          to label %bb.vl unwind label %bb.vk

bb.vj:                                            ; preds = %bb.vm, %bb.vk
  %.pn618 = phi { ptr, i32 } [ %i.azy, %bb.vm ], [ %i.azt, %bb.vk ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRejEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ee)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.xy

bb.vk:                                            ; preds = %bb.vi
  %i.azt = landingpad { ptr, i32 }
          cleanup
  br label %bb.vj

bb.vl:                                            ; preds = %bb.vi
  %i.azu = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.azv = load ptr, ptr %i.azu, align 8, !nonnull !6, !noundef !6
  %i.azw = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.azx = load i64, ptr %i.azw, align 8, !noundef !6
  invoke fastcc void @_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0EB1w_(ptr noalias nofree noundef nonnull align 8 %i.azv, i64 noundef %i.azx, ptr noundef nonnull align 8 %i.ee)
          to label %bb.vn unwind label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.azy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ec) #22
          to label %bb.vj unwind label %bb.xy

bb.vn:                                            ; preds = %bb.vl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRejEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ee)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983 unwind label %.loopexit.split-lp1394

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983: ; preds = %bb.vn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eh)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985 unwind label %bb.un

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei)
          to label %bb.vo unwind label %.loopexit.split-lp1361

.thread1306:                                      ; preds = %.loopexit1388, %.loopexit.split-lp1389, %.loopexit1360, %.loopexit.split-lp1361, %bb.abz, %bb.xq, %bb.adk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit, %bb.ys, %bb.ym, %.thread1302, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.0298.5 = phi i8 [ %.sroa.0298.0, %bb.abz ], [ %.sroa.0298.0, %bb.adk ], [ %.sroa.0298.0, %bb.xq ], [ %.sroa.0298.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit ], [ %.sroa.0298.0, %bb.ym ], [ %.sroa.0298.0, %bb.ys ], [ %.sroa.0298.0, %.thread1302 ], [ %.sroa.0298.6.ph, %.loopexit.split-lp1361 ], [ %.sroa.0298.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit ], [ %.sroa.0298.0, %.loopexit1360 ], [ %.sroa.0298.0, %.loopexit.split-lp1389 ], [ %.sroa.0298.0, %.loopexit1388 ]
  %.pn689 = phi { ptr, i32 } [ %lpad.phi, %bb.abz ], [ %i.bnm, %bb.adk ], [ %lpad.phi1387, %bb.xq ], [ %.pn675, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit ], [ %lpad.phi1369, %bb.ym ], [ %lpad.phi1374, %bb.ys ], [ %.pn6441305, %.thread1302 ], [ %lpad.loopexit.split-lp1363, %.loopexit.split-lp1361 ], [ %.pn622, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit ], [ %lpad.loopexit1362, %.loopexit1360 ], [ %lpad.loopexit.split-lp1391, %.loopexit.split-lp1389 ], [ %lpad.loopexit1390, %.loopexit1388 ] ; 2 uses
  %i.azz = trunc nuw i8 %.sroa.0298.5 to i1
  br i1 %i.azz, label %bb.aeu, label %bb.ui

.loopexit1360:                                    ; preds = %bb.vu, %bb.vx, %bb.wa, %bb.wd, %bb.wg, %bb.wj, %bb.wo, %bb.wq, %bb.wr, %bb.yg, %bb.yv, %bb.wv
  %lpad.loopexit1362 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1306

.loopexit.split-lp1361:                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985, %bb.vr, %bb.xz, %bb.yb, %bb.yf, %bb.yi, %bb.yx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit1030, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit1034, %bb.acp, %bb.acq, %bb.acx, %bb.ada, %bb.adc, %bb.add, %bb.ade, %bb.adg, %bb.adn, %bb.adp, %bb.adu, %._crit_edge1431, %bb.acn
  %.sroa.0298.6.ph = phi i8 [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985 ], [ %.sroa.0298.0, %bb.yb ], [ %.sroa.0298.0, %bb.yx ], [ %.sroa.0298.0, %bb.yi ], [ %.sroa.0298.0, %bb.yf ], [ %.sroa.0298.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit1030 ], [ %.sroa.0298.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit1034 ], [ %.sroa.0298.0, %bb.vr ], [ %.sroa.0298.0, %bb.acn ], [ %.sroa.0298.0, %._crit_edge1431 ], [ %.sroa.0298.0, %bb.acq ], [ %.sroa.0298.0, %bb.xz ], [ %.sroa.0298.0, %bb.acx ], [ %.sroa.0298.0, %bb.ada ], [ %.sroa.0298.0, %bb.add ], [ %.sroa.0298.0, %bb.adc ], [ %.sroa.0298.0, %bb.ade ], [ %.sroa.0298.0, %bb.adn ], [ %.sroa.0298.0, %bb.adp ], [ %.sroa.0298.0, %bb.acp ], [ %.sroa.0298.0, %bb.adu ], [ %.sroa.0298.0, %bb.adg ]
  %lpad.loopexit.split-lp1363 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1306

bb.vo:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  br label %bb.um

bb.vp:                                            ; preds = %bb.um
  br i1 %i.od, label %bb.vr, label %bb.vq

.loopexit1359:                                    ; preds = %bb.yc, %bb.vt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit1036, %bb.abw, %bb.um
  %i.baa = load i8, ptr %i.asj, align 4, !range !8, !noundef !6
  %i.bab = trunc nuw i8 %i.baa to i1
  br i1 %i.bab, label %bb.acq, label %bb.acp

bb.vq:                                            ; preds = %bb.vp
  br i1 %or.cond, label %bb.vs, label %bb.vt

bb.vr:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  %i.bac = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.abx unwind label %.loopexit.split-lp1361 ; 2 uses

bb.vs:                                            ; preds = %bb.vq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i64 0, ptr %i.dz, align 8
  %i.bad = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bad, align 8
  %i.bae = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  store i64 0, ptr %i.bae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  %i.baf = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.zb unwind label %bb.za     ; 2 uses

bb.vt:                                            ; preds = %bb.vq
  %i.bag = getelementptr inbounds nuw i8, ptr %.sroa.077.2, i64 8
  %i.bah = load ptr, ptr %i.bag, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.idx1432 = shl nuw nsw i64 %i.ayb, 5
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 %.idx1432
  br i1 %i.ayd, label %.lr.ph1423, label %.loopexit1359

.lr.ph1423:                                       ; preds = %bb.vt
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.sroa.4561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.6562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.bal = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bam = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.bao = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %.sroa.4567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %.sroa.5568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.bap = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.baq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.bar = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.bas = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.bat = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bau = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %.sroa.4570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.6571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.bav = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.baw = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %.sroa.4573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.6574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bax = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %i.bay = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.baz = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.bba = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.dm, i64 104
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.dm, i64 112
  br label %bb.vu

bb.vu:                                            ; preds = %.lr.ph1423, %bb.yc
  %.sroa.0173.01421 = phi ptr [ %i.bah, %.lr.ph1423 ], [ %i.bbd, %bb.yc ] ; 9 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %.sroa.0173.01421, i64 32 ; 2 uses
  %i.bbe = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %bb.vv unwind label %.loopexit1360 ; 4 uses

bb.vv:                                            ; preds = %bb.vu
  %.not624 = icmp eq ptr %i.bbe, null
  br i1 %.not624, label %bb.vx, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.bbf = load i8, ptr %i.bbe, align 8, !range !19, !alias.scope !1193, !noundef !6
  %.not1342 = icmp eq i8 %i.bbf, 3                ; 2 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbe, i64 16
  %i.bbh = load ptr, ptr %i.bbg, align 8, !alias.scope !1193, !nonnull !6
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbe, i64 24
  %i.bbj = load i64, ptr %i.bbi, align 8, !alias.scope !1193
  %spec.select1335 = select i1 %.not1342, i64 %i.bbj, i64 0
  %spec.select1336 = select i1 %.not1342, ptr %i.bbh, ptr inttoptr (i64 1 to ptr)
  br label %bb.vx

bb.vx:                                            ; preds = %bb.vw, %bb.vv
  %.sroa.7181.0 = phi i64 [ %spec.select1335, %bb.vw ], [ 0, %bb.vv ] ; 13 uses
  %.sroa.0176.0 = phi ptr [ %spec.select1336, %bb.vw ], [ inttoptr (i64 1 to ptr), %bb.vv ] ; 5 uses
  %i.bbk = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 4)
          to label %bb.vy unwind label %.loopexit1360 ; 4 uses

bb.vy:                                            ; preds = %bb.vx
  %.not626 = icmp eq ptr %i.bbk, null
  br i1 %.not626, label %bb.wa, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.bbl = load i8, ptr %i.bbk, align 8, !range !19, !alias.scope !1194, !noundef !6
  %i.bbm = icmp eq i8 %i.bbl, 2
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbk, i64 8
  %i.bbo = load i64, ptr %i.bbn, align 8, !range !16, !alias.scope !1194
  %i.bbp = icmp eq i64 %i.bbo, 0
  %or.cond.i988 = select i1 %i.bbm, i1 %i.bbp, i1 false
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbk, i64 16
  %i.bbr = load i64, ptr %i.bbq, align 8, !alias.scope !1194
  %spec.select717 = select i1 %or.cond.i988, i64 %i.bbr, i64 0
  br label %bb.wa

bb.wa:                                            ; preds = %bb.vz, %bb.vy
  %.sroa.0192.0 = phi i64 [ %spec.select717, %bb.vz ], [ 0, %bb.vy ] ; 4 uses
  %i.bbs = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 7)
          to label %bb.wb unwind label %.loopexit1360 ; 4 uses

bb.wb:                                            ; preds = %bb.wa
  %.not627 = icmp eq ptr %i.bbs, null
  br i1 %.not627, label %bb.wd, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  %i.bbt = load i8, ptr %i.bbs, align 8, !range !19, !alias.scope !1195, !noundef !6
  %.not1343 = icmp eq i8 %i.bbt, 3                ; 2 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbs, i64 16
  %i.bbv = load ptr, ptr %i.bbu, align 8, !alias.scope !1195, !nonnull !6
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbs, i64 24
  %i.bbx = load i64, ptr %i.bbw, align 8, !alias.scope !1195
  %spec.select1337 = select i1 %.not1343, i64 %i.bbx, i64 0
  %spec.select1338 = select i1 %.not1343, ptr %i.bbv, ptr inttoptr (i64 1 to ptr)
  br label %bb.wd

bb.wd:                                            ; preds = %bb.wc, %bb.wb
  %.sroa.4200.0 = phi i64 [ %spec.select1337, %bb.wc ], [ 0, %bb.wb ] ; 10 uses
  %.sroa.0198.0 = phi ptr [ %spec.select1338, %bb.wc ], [ inttoptr (i64 1 to ptr), %bb.wb ] ; 2 uses
  %i.bby = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4)
          to label %bb.we unwind label %.loopexit1360 ; 4 uses

bb.we:                                            ; preds = %bb.wd
  %.not629 = icmp eq ptr %i.bby, null
  br i1 %.not629, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.bbz = load i8, ptr %i.bby, align 8, !range !19, !alias.scope !1196, !noundef !6
  %.not1344 = icmp eq i8 %i.bbz, 3                ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bby, i64 16
  %i.bcb = load ptr, ptr %i.bca, align 8, !alias.scope !1196, !nonnull !6
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bby, i64 24
  %i.bcd = load i64, ptr %i.bcc, align 8, !alias.scope !1196
  %spec.select718 = select i1 %.not1344, i64 %i.bcd, i64 5
  %spec.select719 = select i1 %.not1344, ptr %i.bcb, ptr @94
  br label %bb.wg

bb.wg:                                            ; preds = %bb.wf, %bb.we
  %.sroa.4210.0 = phi i64 [ %spec.select718, %bb.wf ], [ 5, %bb.we ]
  %.sroa.0208.0 = phi ptr [ %spec.select719, %bb.wf ], [ @94, %bb.we ] ; 4 uses
  %i.bce = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 6)
          to label %bb.wh unwind label %.loopexit1360 ; 4 uses

bb.wh:                                            ; preds = %bb.wg
  %.not631 = icmp eq ptr %i.bce, null
  br i1 %.not631, label %bb.wj, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  %i.bcf = load i8, ptr %i.bce, align 8, !range !19, !alias.scope !1197, !noundef !6
  %i.bcg = icmp eq i8 %i.bcf, 2
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bce, i64 8
  %i.bci = load i64, ptr %i.bch, align 8, !range !16, !alias.scope !1197
  %i.bcj = icmp eq i64 %i.bci, 0
  %or.cond.i995 = select i1 %i.bcg, i1 %i.bcj, i1 false
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bce, i64 16
  %i.bcl = load i64, ptr %i.bck, align 8, !alias.scope !1197
  %spec.select720 = select i1 %or.cond.i995, i64 %i.bcl, i64 0
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wh
  %.sroa.0218.0 = phi i64 [ %spec.select720, %bb.wi ], [ 0, %bb.wh ] ; 3 uses
  %i.bcm = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 4)
          to label %bb.wk unwind label %.loopexit1360 ; 4 uses

bb.wk:                                            ; preds = %bb.wj
  %.not632 = icmp eq ptr %i.bcm, null
  br i1 %.not632, label %bb.wm, label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  %i.bcn = load i8, ptr %i.bcm, align 8, !range !19, !alias.scope !1198, !noundef !6
  %i.bco = icmp eq i8 %i.bcn, 2
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcm, i64 8
  %i.bcq = load i64, ptr %i.bcp, align 8, !range !16, !alias.scope !1198
  %i.bcr = icmp eq i64 %i.bcq, 0
  %or.cond.i998 = select i1 %i.bco, i1 %i.bcr, i1 false
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcm, i64 16
  %i.bct = load i64, ptr %i.bcs, align 8, !alias.scope !1198
  %spec.select721 = select i1 %or.cond.i998, i64 %i.bct, i64 0
  br label %bb.wm

bb.wm:                                            ; preds = %bb.wl, %bb.wk
  %.sroa.0224.0 = phi i64 [ %spec.select721, %bb.wl ], [ 0, %bb.wk ] ; 2 uses
  switch i64 %.sroa.4210.0, label %bb.wq [
    i64 7, label %bb.wn
    i64 6, label %bb.wp
  ]

bb.wn:                                            ; preds = %bb.wm
  %i.bcu = load i32, ptr %.sroa.0208.0, align 1
  %i.bcv = xor i32 %i.bcu, 1953394531
  %i.bcw = getelementptr i8, ptr %.sroa.0208.0, i64 3
  %i.bcx = load i32, ptr %i.bcw, align 1
  %i.bcy = xor i32 %i.bcx, 1954047348
  %i.bcz = or i32 %i.bcv, %i.bcy
  %i.bda = icmp ne i32 %i.bcz, 0
  %i.bdb = zext i1 %i.bda to i32
  %i.bdc = icmp eq i32 %i.bdb, 0
  br i1 %i.bdc, label %bb.wo, label %bb.wq

bb.wo:                                            ; preds = %bb.wn
  %i.bdd = invoke noundef ptr @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter23write_context_separator(ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0176.0, i64 noundef %.sroa.7181.0, i64 noundef %.sroa.0192.0)
          to label %bb.ye unwind label %.loopexit1360 ; 2 uses

bb.wp:                                            ; preds = %bb.wm
  %i.bde = load i32, ptr %.sroa.0208.0, align 1
  %i.bdf = xor i32 %i.bde, 1634625890
  %i.bdg = getelementptr i8, ptr %.sroa.0208.0, i64 4
  %i.bdh = load i16, ptr %i.bdg, align 1
  %i.bdi = zext i16 %i.bdh to i32
  %i.bdj = xor i32 %i.bdi, 31090
  %i.bdk = or i32 %i.bdf, %i.bdj
  %i.bdl = icmp ne i32 %i.bdk, 0
  %i.bdm = zext i1 %i.bdl to i32
  %i.bdn = icmp eq i32 %i.bdm, 0
  br i1 %i.bdn, label %bb.wr, label %bb.wq

bb.wq:                                            ; preds = %bb.wn, %bb.wm, %bb.wp
end_hunk_1

inline.NumInlined: 1069
inline.NumDeleted: 396
begin_hunk_0_@_RNvNtNtCslLuZgPVt6hg_3ide5hover6render10deref_expr:bb.a
  store i64 1610612768, ptr %i.dc, align 8, !noalias !896
  store ptr %i.i, ptr %i.h, align 8, !noalias !896
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @1, ptr %i.dd, align 8, !noalias !896
  %i.de = invoke noundef zeroext i1 @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.x unwind label %bb.w, !noalias !900

bb.w:                                             ; preds = %bb.y, %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #29
          to label %.thread205 unwind label %bb.z, !noalias !900

bb.x:                                             ; preds = %bb.v
  br i1 %i.de, label %bb.y, label %bb.aa, !prof !23

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc.i136 unwind label %bb.w, !noalias !900

.noexc.i136:                                      ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !900
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.dh = load ptr, ptr %1, align 8, !nonnull !5, !align !166, !noundef !5
  %i.di = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr @15, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr %i.ac, ptr %i.dk, align 8
  store i64 0, ptr %i.y, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.dn = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i8 0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.do, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.dm, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  store i8 3, ptr %i.dp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !902
  store i64 0, ptr %i.g, align 8, !noalias !902
  %.sroa.4.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i141, align 8, !noalias !902
  %.sroa.5.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i142, align 8, !noalias !902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !902
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1610612768, ptr %i.dq, align 8, !noalias !902
  store ptr %i.g, ptr %i.f, align 8, !noalias !902
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @1, ptr %i.dr, align 8, !noalias !902
  %i.ds = invoke noundef zeroext i1 @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.ab, !noalias !906

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #29
          to label %.body144 unwind label %bb.ae, !noalias !906

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.ds, label %bb.ad, label %bb.ag, !prof !23

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc.i143 unwind label %bb.ab, !noalias !906

.noexc.i143:                                      ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !906
  unreachable

.body144:                                         ; preds = %bb.ar, %bb.ab, %bb.af, %.body150
  %.pn102.pn = phi { ptr, i32 } [ %.pn102, %.body150 ], [ %i.dt, %bb.ab ], [ %i.dv, %bb.af ], [ %i.fj, %bb.ar ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #29
          to label %.thread205 unwind label %bb.ay

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i159
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body144

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.dw = load ptr, ptr %1, align 8, !nonnull !5, !align !166, !noundef !5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr @15, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr %i.an, ptr %i.dz, align 8
  store i64 0, ptr %i.w, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ec = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i8 0, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ed, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.eb, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  store i8 3, ptr %i.ee, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !908
  store i64 0, ptr %i.e, align 8, !noalias !908
  %.sroa.4.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i147, align 8, !noalias !908
  %.sroa.5.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i148, align 8, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !908
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.ef, align 8, !noalias !908
  store ptr %i.e, ptr %i.d, align 8, !noalias !908
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @1, ptr %i.eg, align 8, !noalias !908
  %i.eh = invoke noundef zeroext i1 @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ai unwind label %bb.ah, !noalias !912

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #29
          to label %.body150 unwind label %bb.ak, !noalias !912

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.eh, label %bb.aj, label %bb.an, !prof !23

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc.i149 unwind label %bb.ah, !noalias !912

.noexc.i149:                                      ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !912
  unreachable

.body150:                                         ; preds = %bb.ap, %bb.ah, %bb.al, %bb.am
  %.pn102 = phi { ptr, i32 } [ %i.el, %bb.am ], [ %i.ei, %bb.ah ], [ %i.ek, %bb.al ], [ %i.fh, %bb.ap ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #29
          to label %.body144 unwind label %bb.ay

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body150

bb.am:                                            ; preds = %.invoke, %bb.ao
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #29
          to label %.body150 unwind label %bb.ay

bb.an:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.en = load i64, ptr %i.em, align 8, !noundef !5 ; 2 uses
  %i.eo = icmp sgt i64 %i.en, -1
  call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw i64 %i.en, 9
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !noundef !5 ; 2 uses
  %i.es = icmp sgt i64 %i.er, -1
  call void @llvm.assume(i1 %i.es)
  %i.et = add nuw i64 %i.er, 12
  %..i = call noundef range(i64 0, -9223372036854775789) i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775789) %i.et, i64 range(i64 0, -9223372036854775789) %i.ep)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !5 ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  call void @llvm.assume(i1 %i.ew)
  %i.ex = add nuw i64 %i.ev, 19
  %..i153 = call noundef range(i64 0, -9223372036854775789) i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775789) %i.ex, i64 range(i64 0, -9223372036854775789) %..i) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %6 = add i64 %..i153, -65545
  %or.cond.not = icmp ult i64 %6, -65526
  br i1 %or.cond.not, label %.invoke, label %bb.ao, !prof !914

.invoke:                                          ; preds = %bb.an
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #27
          to label %.cont unwind label %bb.am

.cont:                                            ; preds = %.invoke
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.ey = trunc i64 %..i153 to i16
  %7 = add i16 %i.ey, -19
  %i.ez = trunc i64 %..i153 to i16
  %8 = add i16 %i.ez, -9
  %i.fa = trunc i64 %..i153 to i16
  %i.fb = add i16 %i.fa, -12
  store ptr %i.x, ptr %i.u, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.fc, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i16 %7, ptr %.sroa.430.0..sroa_idx, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.ab, ptr %i.fd, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr null, ptr %i.fe, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i16 %8, ptr %.sroa.440.0..sroa_idx, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.z, ptr %i.ff, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store ptr null, ptr %i.fg, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store i16 %i.fb, ptr %.sroa.450.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @45, ptr noundef nonnull %i.u)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit unwind label %bb.am

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body150 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit unwind label %bb.al

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i159 unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body144 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i159: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit163 unwind label %bb.af

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit163: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i165 unwind label %bb.at

bb.at:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit163
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.thread205 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i165: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit163
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit170 unwind label %.thread221

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit170: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.av

bb.av:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit195, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit170
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body171 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit unwind label %bb.bm

bb.ay:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i127, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i, %.thread205, %.thread217, %bb.bf, %.body177, %bb.am, %.body150, %.body144
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.az:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fq = load ptr, ptr %1, align 8, !nonnull !5, !align !166, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.fq, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @15, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.an, ptr %i.ft, align 8
  store i64 0, ptr %i.q, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.fw = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i8 0, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fx, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.fv, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  store i8 3, ptr %i.fy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !916
  store i64 0, ptr %i.c, align 8, !noalias !916
  %.sroa.4.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i174, align 8, !noalias !916
  %.sroa.5.0..sroa_idx.i175 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i175, align 8, !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !916
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.fz, align 8, !noalias !916
  store ptr %i.c, ptr %i.b, align 8, !noalias !916
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1, ptr %i.ga, align 8, !noalias !916
  %i.gb = invoke noundef zeroext i1 @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bb unwind label %bb.ba, !noalias !920

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body177 unwind label %bb.bd, !noalias !920

bb.bb:                                            ; preds = %bb.az
  br i1 %i.gb, label %bb.bc, label %bb.bg, !prof !23

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc.i176 unwind label %bb.ba, !noalias !920

.noexc.i176:                                      ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.ba
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !920
  unreachable

.body177:                                         ; preds = %bb.bi, %bb.ba, %bb.be, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.gf, %bb.bf ], [ %i.gc, %bb.ba ], [ %i.ge, %bb.be ], [ %i.gt, %bb.bi ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #29
          to label %.thread205 unwind label %bb.ay

bb.be:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i184
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body177

bb.bf:                                            ; preds = %.invoke228, %bb.bh
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #29
          to label %.body177 unwind label %bb.ay

bb.bg:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !5 ; 2 uses
  %i.gi = icmp sgt i64 %i.gh, -1
  call void @llvm.assume(i1 %i.gi)
  %i.gj = add nuw i64 %i.gh, 9
  %i.gk = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !5 ; 2 uses
  %i.gm = icmp sgt i64 %i.gl, -1
  call void @llvm.assume(i1 %i.gm)
  %i.gn = add nuw i64 %i.gl, 19
  %..i180 = call noundef range(i64 0, -9223372036854775789) i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775789) %i.gn, i64 range(i64 0, -9223372036854775789) %i.gj) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %9 = add i64 %..i180, -65545
  %or.cond230.not = icmp ult i64 %9, -65526
  br i1 %or.cond230.not, label %.invoke228, label %bb.bh, !prof !914

bb.bh:                                            ; preds = %bb.bg
  %i.go = trunc i64 %..i180 to i16
  %10 = add i16 %i.go, -19
  %i.gp = trunc i64 %..i180 to i16
  %11 = add i16 %i.gp, -9
  store ptr %i.r, ptr %i.o, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.gq, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i16 %10, ptr %.sroa.465.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.t, ptr %i.gr, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.470.0..sroa_idx, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr null, ptr %i.gs, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i16 %11, ptr %.sroa.475.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @49, ptr noundef nonnull %i.o)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit182 unwind label %bb.bf

.invoke228:                                       ; preds = %bb.bg
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #27
          to label %.cont229 unwind label %bb.bf

.cont229:                                         ; preds = %.invoke228
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit182: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i184 unwind label %bb.bi

bb.bi:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit182
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body177 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i184: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit182
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit188 unwind label %bb.be

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit188: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i190 unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit188
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread205 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i190: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit188
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit195 unwind label %.thread221

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit195: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.av

bb.bm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body171

.body171:                                         ; preds = %bb.aw, %bb.bm
  %eh.lpad-body172 = phi { ptr, i32 } [ %i.gx, %bb.bm ], [ %i.fn, %bb.aw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  br label %.thread205

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  invoke void @_RNvMNtCslLuZgPVt6hg_3ide5hoverNtB2_11HoverAction22goto_type_from_targets(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.n, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, i8 noundef %4)
          to label %bb.bn unwind label %bb.m

bb.bn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.gy = load i64, ptr %i.n, align 8, !range !675, !noundef !5
  %.not101 = icmp eq i64 %i.gy, -1
  br i1 %.not101, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.n, i64 152, i1 false)
  %i.gz = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !922, !noalias !925, !noundef !5 ; 3 uses
  %i.ha = load i64, ptr %i.bv, align 8, !range !172, !alias.scope !922, !noalias !925, !noundef !5
  %i.hb = icmp eq i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.bs unwind label %bb.bq, !noalias !925

bb.bq:                                            ; preds = %bb.bp
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide5hover11HoverActionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.l) #29
          to label %.thread217 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bs:                                            ; preds = %bb.bp, %bb.bo
  %i.he = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !922, !noalias !925, !nonnull !5, !noundef !5
  %i.hf = getelementptr inbounds nuw [152 x i8], ptr %i.he, i64 %i.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.hf, ptr noundef nonnull align 8 dereferenceable(152) %i.n, i64 152, i1 false)
  %i.hg = add i64 %i.gz, 1
  store i64 %i.hg, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !922, !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bn, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.l

.thread217:                                       ; preds = %bb.bq, %bb.m, %.thread205
  %.pn102.pn.pn203 = phi { ptr, i32 } [ %.pn102.pn.pn204, %.thread205 ], [ %lpad.thr_comm.split-lp, %bb.m ], [ %i.hc, %bb.bq ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide5hover11HoverResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ag) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit unwind label %bb.ay

.thread205:                                       ; preds = %.body177, %.body171, %.body144, %bb.bk, %bb.at, %bb.w, %bb.r, %.thread221
  %.pn102.pn.pn204 = phi { ptr, i32 } [ %i.gv, %bb.bk ], [ %lpad.thr_comm, %.thread221 ], [ %i.fl, %bb.at ], [ %i.cr, %bb.r ], [ %i.df, %bb.w ], [ %.pn, %.body177 ], [ %eh.lpad-body172, %.body171 ], [ %.pn102.pn, %.body144 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9ModuleDefEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #29
          to label %.thread217 unwind label %bb.ay

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit: ; preds = %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i127, %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i, %.thread217
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn203, %.thread217 ], [ %i.at, %bb.d ], [ %i.at, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i ], [ %i.bk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i127 ], [ %i.bk, %bb.h ]
  resume { ptr, i32 } %.pn102.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslLuZgPVt6hg_3ide5hover6render10underscore(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, i8 noundef range(i8 0, 4) %4, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = tail call noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
  %.not = icmp eq i16 %i.m, 24
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val31 = load ptr, ptr %i.o, align 8, !noundef !5 ; 27 uses
  %.not.i = icmp eq ptr %.val31, null
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.val31, i64 48 ; 43 uses
  %i.q = load i32, ptr %i.p, align 4, !noundef !5 ; 3 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %bb.f, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit55

bb.f:                                             ; preds = %bb.c
  %i.s = add nuw i32 %i.q, 1                      ; 2 uses
  store i32 %i.s, ptr %i.p, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.invoke, label %bb.j, !prof !23

bb.g:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit55

.body:                                            ; preds = %bb.az, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i, %bb.ar, %bb.as, %bb.al, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i, %bb.ad, %bb.ae, %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECslLuZgPVt6hg_3ide.exit.sink.split.i, %bb.k, %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.ar ], [ %i.aa, %bb.k ], [ %i.bj, %bb.ad ], [ %i.bw, %bb.al ], [ %i.an, %bb.s ], [ %i.x, %bb.i ], [ %i.aa, %bb.l ], [ %i.an, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECslLuZgPVt6hg_3ide.exit.sink.split.i ], [ %i.bj, %bb.ae ], [ %i.bw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i ], [ %i.cl, %bb.as ], [ %i.cw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECslLuZgPVt6hg_3ide.exit.sink.split.i ], [ %i.cw, %bb.az ]
  %i.u = load i32, ptr %i.p, align 4, !noundef !5
  %i.v = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.v, ptr %i.p, align 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.h:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val31) #30
end_hunk_0
begin_hunk_1_@_RNvNtNtCslLuZgPVt6hg_3ide5hover6render8try_expr:bb.a
bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.r, ptr noundef nonnull align 8 dereferenceable(152) %i.t, i64 152, i1 false)
  %i.jz = load i64, ptr %.sroa.548.0..sroa_idx, align 8, !alias.scope !1176, !noalias !1179, !noundef !5 ; 3 uses
  %i.ka = load i64, ptr %i.ih, align 8, !range !172, !alias.scope !1176, !noalias !1179, !noundef !5
  %i.kb = icmp eq i64 %i.jz, %i.ka
  br i1 %i.kb, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ih)
          to label %bb.dy unwind label %bb.dw, !noalias !1179

bb.dw:                                            ; preds = %bb.dv
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide5hover11HoverActionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.r) #29
          to label %.thread376.thread unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.dy:                                            ; preds = %bb.dv, %bb.du
  %i.ke = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !alias.scope !1176, !noalias !1179, !nonnull !5, !noundef !5
  %i.kf = getelementptr inbounds nuw [152 x i8], ptr %i.ke, i64 %i.jz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.kf, ptr noundef nonnull align 8 dereferenceable(152) %i.t, i64 152, i1 false)
  %i.kg = add i64 %i.jz, 1
  store i64 %i.kg, ptr %.sroa.548.0..sroa_idx, align 8, !alias.scope !1176, !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dt, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.kh = load ptr, ptr %1, align 8, !nonnull !5, !align !166, !noundef !5
  %i.ki = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.kh, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @15, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.aj, ptr %i.kk, align 8
  store i64 0, ptr %i.p, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.kn = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i8 0, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ko, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.km, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  store i8 3, ptr %i.kp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1181
  store i64 0, ptr %i.e, align 8, !noalias !1181
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1181
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1181
  %i.kq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.kq, align 8, !noalias !1181
  store ptr %i.e, ptr %i.d, align 8, !noalias !1181
  %i.kr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @1, ptr %i.kr, align 8, !noalias !1181
  %i.ks = invoke noundef zeroext i1 @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.eb unwind label %bb.ea, !noalias !1185

bb.ea:                                            ; preds = %bb.ec, %bb.dz
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #29
          to label %.thread376.thread unwind label %bb.ed, !noalias !1185

bb.eb:                                            ; preds = %bb.dz
  br i1 %i.ks, label %bb.ec, label %bb.ee, !prof !23

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc.i266 unwind label %bb.ea, !noalias !1185

.noexc.i266:                                      ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %bb.ea
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !1185
  unreachable

bb.ee:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.kv = load ptr, ptr %1, align 8, !nonnull !5, !align !166, !noundef !5
  %i.kw = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.kv, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @15, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.aw, ptr %i.ky, align 8
  store i64 0, ptr %i.n, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %i.kz, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.lb = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i8 0, ptr %i.lb, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lc, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.la, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  store i8 3, ptr %i.ld, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1187
  store i64 0, ptr %i.c, align 8, !noalias !1187
  %.sroa.4.0..sroa_idx.i271 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i271, align 8, !noalias !1187
  %.sroa.5.0..sroa_idx.i272 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i272, align 8, !noalias !1187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1187
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.le, align 8, !noalias !1187
  store ptr %i.c, ptr %i.b, align 8, !noalias !1187
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1, ptr %i.lf, align 8, !noalias !1187
  %i.lg = invoke noundef zeroext i1 @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.eg unwind label %bb.ef, !noalias !1191

bb.ef:                                            ; preds = %bb.eh, %bb.ee
  %i.lh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body274 unwind label %bb.ei, !noalias !1191

bb.eg:                                            ; preds = %bb.ee
  br i1 %i.lg, label %bb.eh, label %bb.em, !prof !23

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc.i273 unwind label %bb.ef, !noalias !1191

.noexc.i273:                                      ; preds = %bb.eh
  unreachable

bb.ei:                                            ; preds = %bb.ef
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !1191
  unreachable

.body274:                                         ; preds = %bb.er, %bb.ef, %bb.ej, %bb.ek
  %.sroa.040.2 = phi i8 [ 1, %bb.ek ], [ 1, %bb.ef ], [ 0, %bb.ej ], [ 0, %bb.er ]
  %.pn116.pn = phi { ptr, i32 } [ %.pn116, %bb.ek ], [ %i.lh, %bb.ef ], [ %i.lj, %bb.ej ], [ %i.mg, %bb.er ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #29
          to label %.thread376 unwind label %bb.an

bb.ej:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body274

bb.ek:                                            ; preds = %.body280, %bb.el
  %.pn116 = phi { ptr, i32 } [ %i.lk, %bb.el ], [ %eh.lpad-body281, %.body280 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #29
          to label %.body274 unwind label %bb.an

bb.el:                                            ; preds = %.invoke, %bb.en
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.em:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !noundef !5 ; 2 uses
  %i.ln = icmp sgt i64 %i.lm, -1
  call void @llvm.assume(i1 %i.ln)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.lp = load i64, ptr %i.lo, align 8, !noundef !5 ; 2 uses
  %i.lq = icmp sgt i64 %i.lp, -1
  call void @llvm.assume(i1 %i.lq)
  %..i = call noundef range(i64 0, -9223372036854775789) i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775789) %i.lp, i64 range(i64 0, -9223372036854775789) %i.lm) ; 2 uses
  %i.lr = load i64, ptr %.sroa.645.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %i.ls = icmp sgt i64 %i.lr, -1
  call void @llvm.assume(i1 %i.ls)
  %i.lt = sub nsw i64 8, %i.lr                    ; 2 uses
  %..i277 = call noundef range(i64 0, 9) i64 @llvm.smax.i64(i64 range(i64 -9223372036854775799, 9) %i.lt, i64 0)
  %..i278 = call noundef range(i64 -9223372036854775799, 1) i64 @llvm.smin.i64(i64 range(i64 -9223372036854775799, 9) %i.lt, i64 0)
  %i.lu = add nuw i64 %..i277, %..i               ; 2 uses
  %i.lv = sub i64 %..i, %..i278                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.lw = or i64 %i.lu, %i.lv
  %or.cond657.not = icmp ult i64 %i.lw, 65536
  br i1 %or.cond657.not, label %bb.en, label %.invoke, !prof !1193

bb.en:                                            ; preds = %bb.em
  %i.lx = trunc nuw i64 %i.lu to i16
  %i.ly = trunc nuw i64 %i.lv to i16
  store ptr %i.ai, ptr %i.l, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.465.0..sroa_idx, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.q, ptr %i.lz, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.ma, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i16 %i.lx, ptr %.sroa.474.0..sroa_idx, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.o, ptr %i.mb, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr null, ptr %i.mc, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i16 %i.ly, ptr %.sroa.484.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @3638, ptr noundef nonnull %i.l)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit unwind label %bb.el

.invoke:                                          ; preds = %bb.em
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3639) #27
          to label %.cont unwind label %bb.el

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit: ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i unwind label %bb.eo

bb.eo:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body280 unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit unwind label %bb.eq

bb.eq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %.body280

.body280:                                         ; preds = %bb.eo, %bb.eq
  %eh.lpad-body281 = phi { ptr, i32 } [ %i.mf, %bb.eq ], [ %i.md, %bb.eo ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %bb.ek

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.er

bb.er:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit
  %i.mg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body274 unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit unwind label %bb.ej

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i287 unwind label %bb.et

bb.et:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit
  %i.mi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread376.thread408 unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i287: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit293 unwind label %bb.dq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit293: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i295 unwind label %bb.ev

bb.ev:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit293
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i295: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit293
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit299 unwind label %.loopexit.split-lp421

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit299: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit249, label %bb.ex

bb.ex:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit299
  %i.mm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !noundef !5
  %i.mo = add i32 %i.mn, -1                       ; 2 uses
  store i32 %i.mo, ptr %i.mm, align 4
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.ey, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit249

bb.ey:                                            ; preds = %bb.ex
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit249

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit249: ; preds = %bb.ey, %bb.ex, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit299, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit178, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit196.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit196, %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  ret void

bb.ez:                                            ; preds = %bb.cp
  unreachable

.thread376:                                       ; preds = %.body274, %bb.dq
  %.pn116.pn.pn375 = phi { ptr, i32 } [ %.pn116.pn, %.body274 ], [ %lpad.thr_comm.split-lp394, %bb.dq ] ; 2 uses
  %.sroa.040.0374 = phi i8 [ %.sroa.040.2, %.body274 ], [ %.sroa.040.1.ph, %bb.dq ]
  %cond = icmp eq i8 %.sroa.040.0374, 0
  br i1 %cond, label %.thread376.thread408, label %.thread376.thread

bb.fa:                                            ; preds = %bb.dr, %bb.ct
  %lpad.thr_comm393 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9ModuleDefEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #29
          to label %.thread376.thread unwind label %bb.an

.thread376.thread:                                ; preds = %bb.dw, %bb.fa, %bb.ea, %.thread376
  %.pn116.pn.pn375405 = phi { ptr, i32 } [ %.pn116.pn.pn375, %.thread376 ], [ %i.kc, %bb.dw ], [ %lpad.thr_comm393, %bb.fa ], [ %i.kt, %bb.ea ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #29
          to label %bb.fb unwind label %bb.an

bb.fb:                                            ; preds = %.thread376.thread
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ih) #29
          to label %.thread376.thread408 unwind label %bb.an

bb.fc:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.mq = load i32, ptr %i.co, align 8, !noundef !5
  %i.mr = add i32 %i.mq, -1                       ; 2 uses
  store i32 %i.mr, ptr %i.co, align 8
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %bb.fd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECslLuZgPVt6hg_3ide.exit

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0486) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECslLuZgPVt6hg_3ide.exit unwind label %.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECslLuZgPVt6hg_3ide.exit: ; preds = %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.fe

bb.fe:                                            ; preds = %.thread353, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECslLuZgPVt6hg_3ide.exit
  %i.mt = load i32, ptr %i.co, align 8, !noundef !5
  %i.mu = add i32 %i.mt, -1                       ; 2 uses
  store i32 %i.mu, ptr %i.co, align 8
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %bb.ff, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit305
end_hunk_1
begin_hunk_2_@_RNvNtNtCslLuZgPVt6hg_3ide5hover6render9type_info:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ag, ptr %i.af, align 8
  invoke void @_RNvNtCslLuZgPVt6hg_3ide5hover16walk_and_push_ty(ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3640)
          to label %bb.e unwind label %.thread21

bb.c:                                             ; preds = %bb.a, %bb.bu
  ret void

.thread21:                                        ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i114, %bb.u, %bb.o, %bb.h, %bb.f, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread8

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread17

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %.not67 = icmp eq i32 %.sroa.4.0.copyload, -1
  br i1 %.not67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %.sroa.0.0.copyload, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx2, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false)
  invoke void @_RNvNtCslLuZgPVt6hg_3ide5hover16walk_and_push_ty(ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3640)
          to label %bb.h unwind label %.thread21

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.ak, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr @15, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.ai, ptr %i.ar, align 8
  store i64 0, ptr %i.o, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i8 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.av, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  store i8 3, ptr %i.aw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.462.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @38, ptr noundef nonnull %i.n)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit unwind label %.thread21

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvNtCslLuZgPVt6hg_3ide5hover14notable_traits(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.i unwind label %.thread21

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  invoke fastcc void @_RNvNtNtCslLuZgPVt6hg_3ide5hover6render20render_notable_trait(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ay, i64 noundef %i.ba, i8 noundef %3, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.f)
          to label %bb.k unwind label %bb.j

.body87:                                          ; preds = %bb.r, %bb.j, %bb.q
  %.pn73 = phi { ptr, i32 } [ %i.bf, %bb.q ], [ %i.bb, %bb.j ], [ %i.bg, %bb.r ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #29
          to label %.thread8 unwind label %bb.ab

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i, %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bc = load i64, ptr %i.ab, align 8, !range !28, !noundef !5
  %.not72 = icmp eq i64 %i.bc, -1
  br i1 %.not72, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.z, ptr %i.x, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @3641, ptr noundef nonnull %i.x)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit86 unwind label %bb.q

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtCs8Xq8PKFYOms_3hir5TraitIBw_TINtNtCshzWfHUSfYae_4core6option6OptionNtBI_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1g_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs8Xq8PKFYOms_3hir5TraitINtNtB7_3vec3VecTINtNtCshzWfHUSfYae_4core6option6OptionNtBP_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1z_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.thread8 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs8Xq8PKFYOms_3hir5TraitINtNtB7_3vec3VecTINtNtCshzWfHUSfYae_4core6option6OptionNtBP_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1z_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide.exit unwind label %.thread21

bb.p:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.q:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #29
          to label %.body87 unwind label %bb.ab

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit86: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit86
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body87 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit86
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit unwind label %bb.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtCs8Xq8PKFYOms_3hir5TraitIBw_TINtNtCshzWfHUSfYae_4core6option6OptionNtBI_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1g_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs8Xq8PKFYOms_3hir5TraitINtNtB7_3vec3VecTINtNtCshzWfHUSfYae_4core6option6OptionNtBP_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1z_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.thread8 unwind label %bb.v

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs8Xq8PKFYOms_3hir5TraitINtNtB7_3vec3VecTINtNtCshzWfHUSfYae_4core6option6OptionNtBP_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1z_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide.exit93 unwind label %.thread21

bb.v:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide.exit93: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ak, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @15, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.ai, ptr %i.bm, align 8
  store i64 0, ptr %i.v, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store i8 0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.bo, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  store i8 3, ptr %i.br, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1194
  store i64 0, ptr %i.e, align 8, !noalias !1194
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1194
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1194
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.bs, align 8, !noalias !1194
  store ptr %i.e, ptr %i.d, align 8, !noalias !1194
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @1, ptr %i.bt, align 8, !noalias !1194
  %i.bu = invoke noundef zeroext i1 @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.y unwind label %bb.x, !noalias !1198

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #29
          to label %.body94 unwind label %bb.aa, !noalias !1198

bb.y:                                             ; preds = %bb.w
  br i1 %i.bu, label %bb.z, label %bb.ad, !prof !23

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc.i unwind label %bb.x, !noalias !1198

.noexc.i:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !1198
  unreachable

bb.ab:                                            ; preds = %.thread8, %.thread17, %bb.bf, %.body129, %.body122, %bb.aj, %.body99, %.body94, %bb.q, %.body87
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.ac, align 8
  %.sroa.312.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.312.0..sroa_idx13, align 8
  %.sroa.415.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %.sroa.415.0..sroa_idx16, align 8
  br label %bb.w

.body94:                                          ; preds = %bb.ap, %bb.x, %bb.ac, %.body99
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %.body99 ], [ %i.bv, %bb.x ], [ %i.by, %bb.ac ], [ %i.de, %bb.ap ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #29
          to label %.thread8 unwind label %bb.ab

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i109
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.ak, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @15, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.ad, ptr %i.cb, align 8
  store i64 0, ptr %i.t, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i8 0, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 84
  store i8 3, ptr %i.cg, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1200
  store i64 0, ptr %i.c, align 8, !noalias !1200
  %.sroa.4.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i96, align 8, !noalias !1200
  %.sroa.5.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i97, align 8, !noalias !1200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1200
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.ch, align 8, !noalias !1200
  store ptr %i.c, ptr %i.b, align 8, !noalias !1200
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1, ptr %i.ci, align 8, !noalias !1200
  %i.cj = invoke noundef zeroext i1 @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.af unwind label %bb.ae, !noalias !1204

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body99 unwind label %bb.ah, !noalias !1204

bb.af:                                            ; preds = %bb.ad
  br i1 %i.cj, label %bb.ag, label %bb.ak, !prof !23

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc.i98 unwind label %bb.ae, !noalias !1204

.noexc.i98:                                       ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !1204
  unreachable

.body99:                                          ; preds = %bb.an, %bb.ae, %bb.ai, %bb.aj
  %.pn76 = phi { ptr, i32 } [ %i.cn, %bb.aj ], [ %i.ck, %bb.ae ], [ %i.cm, %bb.ai ], [ %i.dc, %bb.an ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #29
          to label %.body94 unwind label %bb.ab

bb.ai:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i104
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.aj:                                            ; preds = %bb.am, %bb.al
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #29
          to label %.body99 unwind label %bb.ab

bb.ak:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !5 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !5 ; 3 uses
  %i.ct = icmp sgt i64 %i.cs, -1
  call void @llvm.assume(i1 %i.ct)
  %..i = call noundef range(i64 0, -9223372036854775789) i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775789) %i.cs, i64 range(i64 0, -9223372036854775789) %i.cp) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cu = icmp samesign ugt i64 %..i, 65529
  br i1 %i.cu, label %bb.al, label %bb.am, !prof !23

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3643) #27
          to label %bb.aw unwind label %bb.aj

bb.am:                                            ; preds = %bb.ak
  %i.cv = trunc nuw i64 %..i to i16
  %i.cw = add nuw i16 %i.cv, 6
  %i.cx = trunc nuw i64 %i.cs to i16
  store ptr %i.w, ptr %i.r, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr null, ptr %i.cy, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i16 %i.cw, ptr %.sroa.439.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.cz, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr null, ptr %i.da, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i16 %i.cx, ptr %.sroa.449.0..sroa_idx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.ac, ptr %i.db, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @3642, ptr noundef nonnull %i.r)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit102 unwind label %bb.aj

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit102: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i104 unwind label %bb.an

bb.an:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit102
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body99 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i104: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit102
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit107 unwind label %bb.ai

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit107: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i109 unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit107
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body94 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i109: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit107
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit112 unwind label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit112: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i114 unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit112
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.thread8 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i114: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit112
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit118 unwind label %.thread21

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit118: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.at

bb.at:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide.exit124, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit118
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body119 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit unwind label %bb.bn

bb.aw:                                            ; preds = %bb.al
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCslLuZgPVt6hg_3ide5hover14notable_traits(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.ay unwind label %bb.ax

.body122:                                         ; preds = %bb.bl, %bb.bd, %bb.ax, %.body129
  %.pn70 = phi { ptr, i32 } [ %.pn, %.body129 ], [ %i.dr, %bb.bd ], [ %i.dk, %bb.ax ], [ %i.en, %bb.bl ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #29
          to label %.thread8 unwind label %bb.ab

bb.ax:                                            ; preds = %.invoke, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body122

bb.ay:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !5, !noundef !5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !5
  invoke fastcc void @_RNvNtNtCslLuZgPVt6hg_3ide5hover6render20render_notable_trait(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dm, i64 noundef %i.do, i8 noundef %3, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %4)
          to label %bb.ba unwind label %bb.az

.body129:                                         ; preds = %bb.bj, %bb.az, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.bf ], [ %i.dp, %bb.az ], [ %i.el, %bb.bj ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #29
          to label %.body122 unwind label %bb.ab

bb.az:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i128, %bb.ay
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body129

bb.ba:                                            ; preds = %bb.ay
  %i.dq = load i64, ptr %i.m, align 8, !range !28, !noundef !5
  %.not68 = icmp eq i64 %i.dq, -1
  br i1 %.not68, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 5)
          to label %bb.bg unwind label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtCs8Xq8PKFYOms_3hir5TraitIBw_TINtNtCshzWfHUSfYae_4core6option6OptionNtBI_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1g_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.invoke unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs8Xq8PKFYOms_3hir5TraitINtNtB7_3vec3VecTINtNtCshzWfHUSfYae_4core6option6OptionNtBP_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1z_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body122 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bf:                                            ; preds = %bb.bg, %bb.bb
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #29
          to label %.body129 unwind label %bb.ab

bb.bg:                                            ; preds = %bb.bb
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !1206, !noundef !5 ; 2 uses
  %i.dw = icmp sgt i64 %i.dv, -1
  call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !1206, !nonnull !5, !noundef !5
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dz, ptr noundef nonnull align 1 dereferenceable(5) @3644, i64 5, i1 false)
  %.pre.i = load i64, ptr %i.du, align 8, !alias.scope !1206
  %i.ea = add i64 %.pre.i, 5
  store i64 %i.ea, ptr %i.du, align 8, !alias.scope !1206
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !5, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ee)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %bb.bg
  %i.ef = load i64, ptr %i.du, align 8, !alias.scope !1209, !noundef !5 ; 3 uses
  %i.eg = icmp sgt i64 %i.ef, -1
  call void @llvm.assume(i1 %i.eg)
  %.not.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.noexc
  %i.eh = load ptr, ptr %i.dx, align 8, !alias.scope !1209, !nonnull !5, !noundef !5
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr nonnull readonly align 1 %i.ec, i64 %i.ee, i1 false)
  %.pre.i125 = load i64, ptr %i.du, align 8, !alias.scope !1209
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.noexc
  %i.ej = phi i64 [ %.pre.i125, %bb.bh ], [ %i.ef, %.noexc ]
  %i.ek = add i64 %i.ej, %i.ee
  store i64 %i.ek, ptr %i.du, align 8, !alias.scope !1209
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i128 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body129 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i128: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit132 unwind label %bb.az

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit132: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtCs8Xq8PKFYOms_3hir5TraitIBw_TINtNtCshzWfHUSfYae_4core6option6OptionNtBI_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1g_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.invoke unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit132
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs8Xq8PKFYOms_3hir5TraitINtNtB7_3vec3VecTINtNtCshzWfHUSfYae_4core6option6OptionNtBP_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1z_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body122 unwind label %bb.bm

.invoke:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit132, %bb.bc
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs8Xq8PKFYOms_3hir5TraitINtNtB7_3vec3VecTINtNtCshzWfHUSfYae_4core6option6OptionNtBP_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEENtNtNtB1z_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide.exit124 unwind label %bb.ax

bb.bm:                                            ; preds = %bb.bl
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs8Xq8PKFYOms_3hir5TraitIBC_TINtNtB4_6option6OptionNtB1b_4TypeENtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECslLuZgPVt6hg_3ide.exit124: ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.at

bb.bn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body119

.body119:                                         ; preds = %bb.au, %bb.bn
  %eh.lpad-body120 = phi { ptr, i32 } [ %i.ep, %bb.bn ], [ %i.di, %bb.au ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br label %.thread8

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  invoke void @_RNvMNtCslLuZgPVt6hg_3ide5hoverNtB2_11HoverAction22goto_type_from_targets(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.j, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, i8 noundef %3)
          to label %bb.bo unwind label %bb.d

bb.bo:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide6markup6MarkupEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.eq = load i64, ptr %i.j, align 8, !range !675, !noundef !5
  %.not75 = icmp eq i64 %i.eq, -1
  br i1 %.not75, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.h, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false)
  %i.er = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !1212, !noalias !1215, !noundef !5 ; 3 uses
  %i.es = load i64, ptr %i.am, align 8, !range !172, !alias.scope !1212, !noalias !1215, !noundef !5
  %i.et = icmp eq i64 %i.er, %i.es
  br i1 %i.et, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.bt unwind label %bb.br, !noalias !1215

bb.br:                                            ; preds = %bb.bq
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide5hover11HoverActionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.h) #29
          to label %.thread17 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bt:                                            ; preds = %bb.bq, %bb.bp
  %i.ew = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !1212, !noalias !1215, !nonnull !5, !noundef !5
  %i.ex = getelementptr inbounds nuw [152 x i8], ptr %i.ew, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ex, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false)
  %i.ey = add i64 %i.er, 1
  store i64 %i.ey, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !1212, !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bo, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.c

.thread17:                                        ; preds = %bb.br, %bb.d, %.thread8
  %.pn76.pn.pn6 = phi { ptr, i32 } [ %.pn76.pn.pn7, %.thread8 ], [ %lpad.thr_comm.split-lp, %bb.d ], [ %i.eu, %bb.br ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide5hover11HoverResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ah) #29
          to label %bb.bv unwind label %bb.ab

.thread8:                                         ; preds = %.body122, %.body87, %.body119, %.body94, %bb.ar, %bb.t, %bb.n, %.thread21
  %.pn76.pn.pn7 = phi { ptr, i32 } [ %i.dg, %bb.ar ], [ %lpad.thr_comm, %.thread21 ], [ %i.bi, %bb.t ], [ %i.bd, %bb.n ], [ %.pn70, %.body122 ], [ %.pn73, %.body87 ], [ %eh.lpad-body120, %.body119 ], [ %.pn76.pn, %.body94 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9ModuleDefEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #29
          to label %.thread17 unwind label %bb.ab

bb.bv:                                            ; preds = %.thread17
  resume { ptr, i32 } %.pn76.pn.pn6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3645, i64 16, i1 false)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @3646, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions3_00INtB7_5FnMutTRRTNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCs8Xq8PKFYOms_3hir4TypeEEE8call_mutBY_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !166, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8 ; 2 uses
  %i.c = icmp ne i32 %.sroa.0.0.copyload.i, 27
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ne i32 %.sroa.0.0.copyload.i, 30
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @15, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3648, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3647)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCshzWfHUSfYae_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3651, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3652, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3649, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3653, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3650)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.d, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1, ptr %i.e, align 8
  %i.f = invoke noundef zeroext i1 @_RNvXs_NtCs9GitHPCrz2Q_5rowan3apiINtB4_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCslLuZgPVt6hg_3ide.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtNtCshzWfHUSfYae_4core3num11float_parse15ParseFloatErrorNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.d, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1, ptr %i.e, align 8
  %i.f = invoke noundef zeroext i1 @_RNvXs_NtNtCshzWfHUSfYae_4core3num11float_parseNtB4_15ParseFloatErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCslLuZgPVt6hg_3ide.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtNtCshzWfHUSfYae_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.d, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1, ptr %i.e, align 8
  %i.f = invoke noundef zeroext i1 @_RNvXs4_NtNtCshzWfHUSfYae_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCslLuZgPVt6hg_3ide.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3654, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3656) #33
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3657, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1217, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1217, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1217, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1217
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1220
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1223, !noalias !1220, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1223, !noalias !1220, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1223, !noalias !1220
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1223, !noalias !1220
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i64, ptr %i.d, align 8, !range !1227, !noundef !5
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.e, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXsmZ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtBa_7AstNode4cast(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !5
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit unwind label %bb.aq

bb.d:                                             ; preds = %bb.a
  switch i16 %i.b, label %bb.e [
    i16 160, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4
    i16 165, label %bb.g
    i16 177, label %bb.h
    i16 178, label %bb.i
    i16 179, label %bb.j
    i16 180, label %bb.k
    i16 182, label %bb.l
    i16 183, label %bb.m
    i16 184, label %bb.n
    i16 189, label %bb.o
    i16 194, label %bb.p
    i16 202, label %bb.q
    i16 207, label %bb.r
    i16 209, label %bb.s
    i16 214, label %bb.t
    i16 218, label %bb.u
    i16 219, label %bb.v
    i16 225, label %bb.w
    i16 230, label %bb.x
    i16 232, label %bb.y
    i16 235, label %bb.z
    i16 243, label %bb.aa
    i16 245, label %bb.ab
    i16 252, label %bb.ac
    i16 257, label %bb.ad
    i16 261, label %bb.ae
    i16 267, label %bb.af
    i16 269, label %bb.ag
    i16 271, label %bb.ah
    i16 279, label %bb.ai
    i16 284, label %bb.aj
    i16 298, label %bb.ak
    i16 299, label %bb.al
    i16 311, label %bb.am
    i16 324, label %bb.an
    i16 326, label %bb.ao
    i16 327, label %bb.ap
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !5
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.g:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.h:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.i:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.j:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.k:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.l:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.m:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.n:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.o:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.p:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.q:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.r:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.s:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.t:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.u:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.v:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.w:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.x:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.y:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.z:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.aa:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ab:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ac:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ad:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ae:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.af:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ag:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ah:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ai:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.aj:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ak:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.al:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.am:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.an:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ao:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ap:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.d, %bb.f, %bb.e
  %.sroa.0.0 = phi i64 [ -1, %bb.f ], [ -1, %bb.e ], [ 36, %bb.ap ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ 9, %bb.o ], [ 10, %bb.p ], [ 11, %bb.q ], [ 13, %bb.r ], [ 12, %bb.s ], [ 14, %bb.t ], [ 15, %bb.u ], [ 16, %bb.v ], [ 17, %bb.w ], [ 18, %bb.x ], [ 19, %bb.y ], [ 20, %bb.z ], [ 21, %bb.aa ], [ 22, %bb.ab ], [ 23, %bb.ac ], [ 24, %bb.ad ], [ 25, %bb.ae ], [ 26, %bb.af ], [ 27, %bb.ag ], [ 28, %bb.ah ], [ 29, %bb.ai ], [ 30, %bb.aj ], [ 31, %bb.ak ], [ 32, %bb.al ], [ 33, %bb.am ], [ 34, %bb.an ], [ 35, %bb.ao ], [ 0, %bb.d ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %0, 1
  ret { i64, ptr } %i.m

bb.aq:                                            ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsvx_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = load i64, ptr %0, align 8, !range !1228, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 37 uses
  switch i64 %i.al, label %default.unreachable1 [
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
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.am, ptr %i.ak, align 8
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3661, i64 noundef 9, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3660)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.am, ptr %i.aj, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3663, i64 noundef 7, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3662)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.am, ptr %i.ai, align 8
  %i.ap = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3665, i64 noundef 9, ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3664)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.am, ptr %i.ah, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3667, i64 noundef 10, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3666)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.am

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.am, ptr %i.ag, align 8
  %i.ar = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3669, i64 noundef 7, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3668)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.am

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.am, ptr %i.af, align 8
  %i.as = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3671, i64 noundef 9, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3670)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.am

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.am, ptr %i.ae, align 8
  %i.at = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3673, i64 noundef 9, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3672)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.am

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.am, ptr %i.ad, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3675, i64 noundef 8, ptr noundef nonnull %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3674)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.am

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.am, ptr %i.ac, align 8
  %i.av = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3677, i64 noundef 8, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3676)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.am

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.am, ptr %i.ab, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3679, i64 noundef 11, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3678)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.am

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.am, ptr %i.aa, align 8
  %i.ax = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3681, i64 noundef 12, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3680)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.am

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.am, ptr %i.z, align 8
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3683, i64 noundef 9, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3682)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.am

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.am, ptr %i.y, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3685, i64 noundef 7, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3684)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.am

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.am, ptr %i.x, align 8
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3687, i64 noundef 14, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3686)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.am

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.am, ptr %i.w, align 8
  %i.bb = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3689, i64 noundef 6, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3688)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.am

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.am, ptr %i.v, align 8
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3691, i64 noundef 16, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3690)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.am

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.am, ptr %i.u, align 8
  %i.bd = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3693, i64 noundef 9, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3692)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.am

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.am, ptr %i.t, align 8
  %i.be = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3695, i64 noundef 7, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3694)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.am

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.am, ptr %i.s, align 8
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3697, i64 noundef 7, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3696)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.am

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.am, ptr %i.r, align 8
  %i.bg = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3699, i64 noundef 8, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3698)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.am

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.am, ptr %i.q, align 8
  %i.bh = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3701, i64 noundef 9, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3700)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.am

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.am, ptr %i.p, align 8
  %i.bi = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3703, i64 noundef 9, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.am

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
end_hunk_2
begin_hunk_3_@llvm.smin.i64
!714 = !{!711, !708, !688, !691, !682, !685}
!715 = !{!713, !688, !691, !682, !685}
!716 = !{!717, !688, !691, !682, !685}
!717 = distinct !{!717, !718, !"_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt: argument 0"}
!718 = distinct !{!718, !"_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt"}
!719 = !{!720, !688, !691, !682, !685}
!720 = distinct !{!720, !721, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render21definition_owner_names2_0B7_: argument 0"}
!721 = distinct !{!721, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render21definition_owner_names2_0B7_"}
!722 = !{i8 0, i8 4}
!723 = !{!724, !726}
!724 = distinct !{!724, !725, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide: argument 0"}
!725 = distinct !{!725, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide"}
!726 = distinct !{!726, !727, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvNtNtCslLuZgPVt6hg_3ide5hover6render15definition_path0EBJ_: argument 0"}
!727 = distinct !{!727, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvNtNtCslLuZgPVt6hg_3ide5hover6render15definition_path0EBJ_"}
!728 = !{!729, !731}
!729 = distinct !{!729, !730, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir5MacroENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!730 = distinct !{!730, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir5MacroENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!731 = distinct !{!731, !730, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir5MacroENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!732 = !{!729}
!733 = !{!734, !736}
!734 = distinct !{!734, !735, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir8FunctionENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!735 = distinct !{!735, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir8FunctionENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!736 = distinct !{!736, !735, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir8FunctionENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!737 = !{!734}
!738 = !{!739, !741}
!739 = distinct !{!739, !740, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir11EnumVariantENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!740 = distinct !{!740, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir11EnumVariantENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!741 = distinct !{!741, !740, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir11EnumVariantENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!742 = !{!739}
!743 = !{!744, !746}
!744 = distinct !{!744, !745, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir5TraitENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!745 = distinct !{!745, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir5TraitENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!746 = distinct !{!746, !745, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir5TraitENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!747 = !{!744}
!748 = !{!731}
!749 = !{!736}
!750 = !{!751, !753}
!751 = distinct !{!751, !752, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir3AdtENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!752 = distinct !{!752, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir3AdtENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!753 = distinct !{!753, !752, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir3AdtENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!754 = !{!751}
!755 = !{!756, !758}
!756 = distinct !{!756, !757, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir3AdtENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!757 = distinct !{!757, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir3AdtENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!758 = distinct !{!758, !757, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir3AdtENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!759 = !{!756}
!760 = !{!753}
!761 = !{!758}
!762 = !{!741}
!763 = !{!746}
!764 = !{!765}
!765 = distinct !{!765, !766, !"_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt: argument 0"}
!766 = distinct !{!766, !"_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt"}
!767 = !{!768, !770}
!768 = distinct !{!768, !769, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir3AdtENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!769 = distinct !{!769, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir3AdtENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!770 = distinct !{!770, !769, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir3AdtENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!771 = !{!768}
!772 = !{!773, !775}
!773 = distinct !{!773, !774, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!774 = distinct !{!774, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!775 = distinct !{!775, !774, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!776 = !{!773}
!777 = !{!775}
!778 = !{!770}
!779 = !{!780}
!780 = distinct !{!780, !781, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!781 = distinct !{!781, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!782 = !{!783}
!783 = distinct !{!783, !784, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!784 = distinct !{!784, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!787 = distinct !{!787, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!788 = !{!789}
!789 = distinct !{!789, !790, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions2_0B7_: argument 0"}
!790 = distinct !{!790, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions2_0B7_"}
!791 = !{!792, !794, !789}
!792 = distinct !{!792, !793, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCs8Xq8PKFYOms_3hir8VarianceNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!793 = distinct !{!793, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCs8Xq8PKFYOms_3hir8VarianceNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!794 = distinct !{!794, !793, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCs8Xq8PKFYOms_3hir8VarianceNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!795 = !{!792, !789}
!796 = !{!797}
!797 = distinct !{!797, !798, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!798 = distinct !{!798, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!799 = !{!800}
!800 = distinct !{!800, !801, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!801 = distinct !{!801, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!802 = !{!803}
!803 = distinct !{!803, !804, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!804 = distinct !{!804, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!805 = !{!806}
!806 = distinct !{!806, !807, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!807 = distinct !{!807, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!808 = !{!809}
!809 = distinct !{!809, !810, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!810 = distinct !{!810, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!811 = !{!812}
!812 = distinct !{!812, !813, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!813 = distinct !{!813, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!814 = !{!815}
!815 = distinct !{!815, !816, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions1_0B7_: argument 0"}
!816 = distinct !{!816, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions1_0B7_"}
!817 = !{!818}
!818 = distinct !{!818, !819, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render24render_dyn_compatibility: argument 0"}
!819 = distinct !{!819, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render24render_dyn_compatibility"}
!820 = !{!821}
!821 = distinct !{!821, !819, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render24render_dyn_compatibility: argument 1"}
!822 = !{i8 -1, i8 6}
!823 = !{!818, !815}
!824 = !{!825, !818}
!825 = distinct !{!825, !826, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!826 = distinct !{!826, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!827 = !{!821, !815}
!828 = !{!829, !818}
!829 = distinct !{!829, !830, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!830 = distinct !{!830, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!831 = !{!832, !818}
!832 = distinct !{!832, !833, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!833 = distinct !{!833, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!834 = !{!835, !818}
!835 = distinct !{!835, !836, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!836 = distinct !{!836, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!837 = !{!818, !821, !815}
!838 = !{!839, !818}
!839 = distinct !{!839, !840, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!840 = distinct !{!840, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!841 = !{!842, !818}
!842 = distinct !{!842, !843, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!843 = distinct !{!843, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!844 = !{!845}
!845 = distinct !{!845, !846, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!846 = distinct !{!846, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!847 = !{!848}
!848 = distinct !{!848, !849, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!849 = distinct !{!849, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!850 = !{!851}
!851 = distinct !{!851, !852, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!852 = distinct !{!852, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!853 = !{!854}
!854 = distinct !{!854, !855, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!855 = distinct !{!855, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!856 = !{!857, !859}
!857 = distinct !{!857, !858, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definition0B7_: argument 0"}
!858 = distinct !{!858, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definition0B7_"}
!859 = distinct !{!859, !858, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definition0B7_: argument 1"}
!860 = !{i32 -2, i32 16}
!861 = !{!859}
!862 = !{!863, !857, !859}
!863 = distinct !{!863, !864, !"_RNCNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definition00B9_: argument 0"}
!864 = distinct !{!864, !"_RNCNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definition00B9_"}
!865 = !{!866}
!866 = distinct !{!866, !867, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorECslLuZgPVt6hg_3ide: argument 0"}
!867 = distinct !{!867, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorECslLuZgPVt6hg_3ide"}
!868 = !{!869}
!869 = distinct !{!869, !870, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide: argument 0"}
!870 = distinct !{!870, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide"}
!871 = !{!872}
!872 = distinct !{!872, !873, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorECslLuZgPVt6hg_3ide: argument 0"}
!873 = distinct !{!873, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorECslLuZgPVt6hg_3ide"}
!874 = !{!875}
!875 = distinct !{!875, !876, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorECslLuZgPVt6hg_3ide: argument 0"}
!876 = distinct !{!876, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorECslLuZgPVt6hg_3ide"}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!879 = distinct !{!879, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!880 = !{!881}
!881 = distinct !{!881, !882, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!882 = distinct !{!882, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!883 = !{i64 0, i64 3}
!884 = !{!885, !887}
!885 = distinct !{!885, !886, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions3_0B7_: argument 0"}
!886 = distinct !{!886, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions3_0B7_"}
!887 = distinct !{!887, !886, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions3_0B7_: argument 1"}
!888 = !{!889, !885, !887}
!889 = distinct !{!889, !890, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools6format10FormatWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtNtB1t_5slice4iter4IterTNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions3_00ENCB3M_s_0ENtB5_12SpecToString14spec_to_stringB3U_: argument 0"}
!890 = distinct !{!890, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools6format10FormatWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtNtB1t_5slice4iter4IterTNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCslLuZgPVt6hg_3ide5hover6render10definitions3_00ENCB3M_s_0ENtB5_12SpecToString14spec_to_stringB3U_"}
!891 = !{!892, !894}
!892 = distinct !{!892, !893, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!893 = distinct !{!893, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!894 = distinct !{!894, !893, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!895 = !{!892}
!896 = !{!897, !899}
!897 = distinct !{!897, !898, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!898 = distinct !{!898, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!899 = distinct !{!899, !898, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!900 = !{!897}
!901 = !{!899}
!902 = !{!903, !905}
!903 = distinct !{!903, !904, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!904 = distinct !{!904, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!905 = distinct !{!905, !904, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!906 = !{!903}
!907 = !{!905}
!908 = !{!909, !911}
!909 = distinct !{!909, !910, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!910 = distinct !{!910, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!911 = distinct !{!911, !910, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!912 = !{!909}
!913 = !{!911}
!914 = !{!"branch_weights", i32 4001, i32 4000000}
!915 = !{!894}
!916 = !{!917, !919}
!917 = distinct !{!917, !918, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!918 = distinct !{!918, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!919 = distinct !{!919, !918, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!920 = !{!917}
!921 = !{!919}
!922 = !{!923}
!923 = distinct !{!923, !924, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_: argument 0"}
!924 = distinct !{!924, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_"}
!925 = !{!926}
!926 = distinct !{!926, !924, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_: argument 1"}
!927 = !{i8 -1, i8 26}
!928 = !{!929}
!929 = distinct !{!929, !930, !"_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db9generated5lints4Lint20binary_search_by_keyReNCNvNtNtCslLuZgPVt6hg_3ide5hover6render12try_for_lints3_0EB1N_: argument 0"}
!930 = distinct !{!930, !"_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db9generated5lints4Lint20binary_search_by_keyReNCNvNtNtCslLuZgPVt6hg_3ide5hover6render12try_for_lints3_0EB1N_"}
!931 = !{!932}
!932 = distinct !{!932, !933, !"_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db9generated5lints4Lint16binary_search_byNCINvB2_20binary_search_by_keyReNCNvNtNtCslLuZgPVt6hg_3ide5hover6render12try_for_lints3_0E0EB2d_: argument 0"}
!933 = distinct !{!933, !"_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db9generated5lints4Lint16binary_search_byNCINvB2_20binary_search_by_keyReNCNvNtNtCslLuZgPVt6hg_3ide5hover6render12try_for_lints3_0E0EB2d_"}
!934 = !{!932, !929}
!935 = !{!936}
!936 = distinct !{!936, !933, !"_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db9generated5lints4Lint16binary_search_byNCINvB2_20binary_search_by_keyReNCNvNtNtCslLuZgPVt6hg_3ide5hover6render12try_for_lints3_0E0EB2d_: argument 1"}
!937 = !{!938, !940}
!938 = distinct !{!938, !939, !"_RNvXNtNtCshzWfHUSfYae_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!939 = distinct !{!939, !"_RNvXNtNtCshzWfHUSfYae_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!940 = distinct !{!940, !939, !"_RNvXNtNtCshzWfHUSfYae_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!941 = !{!932, !936, !929}
!942 = !{!943, !945}
!943 = distinct !{!943, !944, !"_RNvXNtNtCshzWfHUSfYae_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!944 = distinct !{!944, !"_RNvXNtNtCshzWfHUSfYae_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!945 = distinct !{!945, !944, !"_RNvXNtNtCshzWfHUSfYae_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!946 = !{!947}
!947 = distinct !{!947, !948, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslLuZgPVt6hg_3ide: argument 0"}
!948 = distinct !{!948, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslLuZgPVt6hg_3ide"}
!949 = !{!950}
!950 = distinct !{!950, !951, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECslLuZgPVt6hg_3ide: argument 0"}
!951 = distinct !{!951, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECslLuZgPVt6hg_3ide"}
!952 = !{!950, !947}
!953 = !{!954}
!954 = distinct !{!954, !955, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECslLuZgPVt6hg_3ide: argument 0"}
!955 = distinct !{!955, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECslLuZgPVt6hg_3ide"}
!956 = !{!957}
!957 = distinct !{!957, !958, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide: argument 0"}
!958 = distinct !{!958, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide"}
!959 = !{!957, !954, !950, !947}
!960 = !{!961}
!961 = distinct !{!961, !962, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslLuZgPVt6hg_3ide: argument 0"}
!962 = distinct !{!962, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslLuZgPVt6hg_3ide"}
!963 = !{!964}
!964 = distinct !{!964, !965, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECslLuZgPVt6hg_3ide: argument 0"}
!965 = distinct !{!965, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECslLuZgPVt6hg_3ide"}
!966 = !{!964, !961}
!967 = !{!968}
!968 = distinct !{!968, !969, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECslLuZgPVt6hg_3ide: argument 0"}
!969 = distinct !{!969, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECslLuZgPVt6hg_3ide"}
!970 = !{!971}
!971 = distinct !{!971, !972, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide: argument 0"}
!972 = distinct !{!972, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide"}
!973 = !{!971, !968, !964, !961}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslLuZgPVt6hg_3ide: argument 0"}
!976 = distinct !{!976, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslLuZgPVt6hg_3ide"}
!977 = !{!978}
!978 = distinct !{!978, !979, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECslLuZgPVt6hg_3ide: argument 0"}
!979 = distinct !{!979, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECslLuZgPVt6hg_3ide"}
!980 = !{!978, !975}
!981 = !{!982}
!982 = distinct !{!982, !983, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECslLuZgPVt6hg_3ide: argument 0"}
!983 = distinct !{!983, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECslLuZgPVt6hg_3ide"}
!984 = !{!985}
!985 = distinct !{!985, !986, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide: argument 0"}
!986 = distinct !{!986, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide"}
!987 = !{!985, !982, !978, !975}
!988 = !{!989}
!989 = distinct !{!989, !990, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEECslLuZgPVt6hg_3ide: argument 0"}
!990 = distinct !{!990, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEECslLuZgPVt6hg_3ide"}
!991 = !{!992, !994}
!992 = distinct !{!992, !993, !"_RNvXs_NtCslLuZgPVt6hg_3ide6markupNtB4_6MarkupINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from: argument 0"}
!993 = distinct !{!993, !"_RNvXs_NtCslLuZgPVt6hg_3ide6markupNtB4_6MarkupINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from"}
!994 = distinct !{!994, !993, !"_RNvXs_NtCslLuZgPVt6hg_3ide6markupNtB4_6MarkupINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from: argument 1"}
!995 = !{!996}
!996 = distinct !{!996, !997, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEECslLuZgPVt6hg_3ide: argument 0"}
!997 = distinct !{!997, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEECslLuZgPVt6hg_3ide"}
!998 = !{!999, !1001}
!999 = distinct !{!999, !1000, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir5FieldENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!1000 = distinct !{!1000, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir5FieldENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!1001 = distinct !{!1001, !1000, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir5FieldENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!1002 = !{!999}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1005, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8truncate: argument 0"}
!1005 = distinct !{!1005, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8truncate"}
!1006 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1007 = !{!1001}
!1008 = !{!1009}
!1009 = distinct !{!1009, !1010, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!1010 = distinct !{!1010, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!1011 = !{!1012}
!1012 = distinct !{!1012, !1013, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!1013 = distinct !{!1013, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!1014 = !{!1015}
!1015 = distinct !{!1015, !1016, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_: argument 0"}
!1016 = distinct !{!1016, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_"}
!1017 = !{!1018}
!1018 = distinct !{!1018, !1016, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_: argument 1"}
!1019 = !{!1020}
!1020 = distinct !{!1020, !1021, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!1021 = distinct !{!1021, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1024, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!1024 = distinct !{!1024, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!1027 = distinct !{!1027, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!1028 = distinct !{!1028, !1029}
!1029 = !{!"llvm.loop.peeled.count", i32 1}
!1030 = !{!1031}
!1031 = distinct !{!1031, !1032, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!1032 = distinct !{!1032, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!1033 = !{!1034, !1036}
!1034 = distinct !{!1034, !1035, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtCsgIpRO4v45SJ_7base_db5input16CrateDisplayNameNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!1035 = distinct !{!1035, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtCsgIpRO4v45SJ_7base_db5input16CrateDisplayNameNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!1036 = distinct !{!1036, !1035, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtCsgIpRO4v45SJ_7base_db5input16CrateDisplayNameNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!1037 = !{!1034}
!1038 = !{!1039, !1041}
!1039 = distinct !{!1039, !1040, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_3rev3RevINtNtNtB1n_3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleEENCNvMs4_B3w_B3u_13path_segments0ENCNvNtNtCslLuZgPVt6hg_3ide5hover6render4paths_0EENtNtNtBa_6traits8iterator8Iterator5chainINtBY_6OptionB1j_EEB4C_: argument 0"}
!1040 = distinct !{!1040, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_3rev3RevINtNtNtB1n_3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleEENCNvMs4_B3w_B3u_13path_segments0ENCNvNtNtCslLuZgPVt6hg_3ide5hover6render4paths_0EENtNtNtBa_6traits8iterator8Iterator5chainINtBY_6OptionB1j_EEB4C_"}
!1041 = distinct !{!1041, !1040, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_3rev3RevINtNtNtB1n_3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleEENCNvMs4_B3w_B3u_13path_segments0ENCNvNtNtCslLuZgPVt6hg_3ide5hover6render4paths_0EENtNtNtBa_6traits8iterator8Iterator5chainINtBY_6OptionB1j_EEB4C_: argument 1"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1040, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_3rev3RevINtNtNtB1n_3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleEENCNvMs4_B3w_B3u_13path_segments0ENCNvNtNtCslLuZgPVt6hg_3ide5hover6render4paths_0EENtNtNtBa_6traits8iterator8Iterator5chainINtBY_6OptionB1j_EEB4C_: argument 2"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1046, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!1046 = distinct !{!1046, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!1049 = distinct !{!1049, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1052, !"_RNvXs9_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB5_4DocsNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!1052 = distinct !{!1052, !"_RNvXs9_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB5_4DocsNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!1053 = !{!1054, !1051}
!1054 = distinct !{!1054, !1052, !"_RNvXs9_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB5_4DocsNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!1055 = !{!1054}
!1056 = !{i32 0, i32 2}
!1057 = !{!1058, !1060, !1062}
!1058 = distinct !{!1058, !1059, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslLuZgPVt6hg_3ide: argument 0"}
!1059 = distinct !{!1059, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslLuZgPVt6hg_3ide"}
!1060 = distinct !{!1060, !1061, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationECslLuZgPVt6hg_3ide: argument 0"}
!1061 = distinct !{!1061, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationECslLuZgPVt6hg_3ide"}
!1062 = distinct !{!1062, !1063, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsENtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationEECslLuZgPVt6hg_3ide: argument 0"}
!1063 = distinct !{!1063, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsENtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationEECslLuZgPVt6hg_3ide"}
!1064 = !{!1065, !1067}
!1065 = distinct !{!1065, !1066, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render13keyword_hints: argument 0"}
!1066 = distinct !{!1066, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render13keyword_hints"}
!1067 = distinct !{!1067, !1066, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render13keyword_hints: argument 2"}
!1068 = !{!1065, !1069, !1067}
!1069 = distinct !{!1069, !1066, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render13keyword_hints: argument 1"}
!1070 = !{!1069, !1067}
!1071 = !{!1072, !1065, !1069, !1067}
!1072 = distinct !{!1072, !1073, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render13keyword_hints0B7_: argument 0"}
!1073 = distinct !{!1073, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render13keyword_hints0B7_"}
!1074 = !{!1072, !1065, !1067}
!1075 = !{!1065, !1069}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1078, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render14process_markup: argument 2"}
!1078 = distinct !{!1078, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render14process_markup"}
!1079 = !{!1080}
!1080 = distinct !{!1080, !1078, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render14process_markup: argument 3"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1078, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render14process_markup: argument 4"}
!1083 = !{!1084, !1085, !1080, !1082}
!1084 = distinct !{!1084, !1078, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render14process_markup: argument 0"}
!1085 = distinct !{!1085, !1078, !"_RNvNtNtCslLuZgPVt6hg_3ide5hover6render14process_markup: argument 1"}
!1086 = !{!1084, !1085, !1077, !1080}
!1087 = !{!1088, !1080}
!1088 = distinct !{!1088, !1089, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEECslLuZgPVt6hg_3ide: argument 0"}
!1089 = distinct !{!1089, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEECslLuZgPVt6hg_3ide"}
!1090 = !{!1084, !1085, !1077, !1082}
!1091 = !{!1084, !1085, !1077, !1080, !1082}
!1092 = !{!1084, !1077, !1082}
!1093 = !{!1094, !1096}
!1094 = distinct !{!1094, !1095, !"_RNvXs_NtCslLuZgPVt6hg_3ide6markupNtB4_6MarkupINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from: argument 0"}
!1095 = distinct !{!1095, !"_RNvXs_NtCslLuZgPVt6hg_3ide6markupNtB4_6MarkupINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from"}
!1096 = distinct !{!1096, !1095, !"_RNvXs_NtCslLuZgPVt6hg_3ide6markupNtB4_6MarkupINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from: argument 1"}
!1097 = !{!1085, !1077, !1080, !1082}
!1098 = !{!1099, !1080}
!1099 = distinct !{!1099, !1100, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEECslLuZgPVt6hg_3ide: argument 0"}
!1100 = distinct !{!1100, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def5attrs4docs4DocsEECslLuZgPVt6hg_3ide"}
!1101 = !{!1102, !1104}
!1102 = distinct !{!1102, !1103, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals0_0B7_: argument 0"}
!1103 = distinct !{!1103, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals0_0B7_"}
!1104 = distinct !{!1104, !1103, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals0_0B7_: argument 1"}
!1105 = !{!1106}
!1106 = distinct !{!1106, !1107, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweENtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEECslLuZgPVt6hg_3ide: argument 0"}
!1107 = distinct !{!1107, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweENtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEECslLuZgPVt6hg_3ide"}
!1108 = !{!1109, !1111}
!1109 = distinct !{!1109, !1110, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals1_0B7_: argument 0"}
!1110 = distinct !{!1110, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals1_0B7_"}
!1111 = distinct !{!1111, !1110, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals1_0B7_: argument 1"}
!1112 = !{!1113, !1115}
!1113 = distinct !{!1113, !1114, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals2_0B7_: argument 0"}
!1114 = distinct !{!1114, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals2_0B7_"}
!1115 = distinct !{!1115, !1114, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals2_0B7_: argument 1"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1118, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc6borrow3CowShENtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEECslLuZgPVt6hg_3ide: argument 0"}
!1118 = distinct !{!1118, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc6borrow3CowShENtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEECslLuZgPVt6hg_3ide"}
!1119 = !{!1120, !1122}
!1120 = distinct !{!1120, !1121, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals3_0B7_: argument 0"}
!1121 = distinct !{!1121, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals3_0B7_"}
!1122 = distinct !{!1122, !1121, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals3_0B7_: argument 1"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1125, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc6borrow3CowShENtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEECslLuZgPVt6hg_3ide: argument 0"}
!1125 = distinct !{!1125, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc6borrow3CowShENtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEECslLuZgPVt6hg_3ide"}
!1126 = !{!1127, !1129}
!1127 = distinct !{!1127, !1128, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals5_0B7_: argument 0"}
!1128 = distinct !{!1128, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals5_0B7_"}
!1129 = distinct !{!1129, !1128, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals5_0B7_: argument 1"}
!1130 = !{!1131, !1133}
!1131 = distinct !{!1131, !1132, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals6_0B7_: argument 0"}
!1132 = distinct !{!1132, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals6_0B7_"}
!1133 = distinct !{!1133, !1132, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals6_0B7_: argument 1"}
!1134 = !{!1135, !1137}
!1135 = distinct !{!1135, !1136, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals7_0B7_: argument 0"}
!1136 = distinct !{!1136, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals7_0B7_"}
!1137 = distinct !{!1137, !1136, !"_RNCNvNtNtCslLuZgPVt6hg_3ide5hover6render7literals7_0B7_: argument 1"}
!1138 = !{i8 0, i8 3}
!1139 = !{i8 0, i8 6}
!1140 = !{!1141, !1143}
!1141 = distinct !{!1141, !1142, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!1142 = distinct !{!1142, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!1143 = distinct !{!1143, !1144, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!1144 = distinct !{!1144, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!1145 = !{!1146, !1148}
!1146 = distinct !{!1146, !1147, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!1147 = distinct !{!1147, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!1148 = distinct !{!1148, !1149, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!1149 = distinct !{!1149, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!1150 = !{!1151, !1153}
!1151 = distinct !{!1151, !1152, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!1152 = distinct !{!1152, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!1153 = distinct !{!1153, !1154, !"_RINvMNtCshzWfHUSfYae_4core3stre4findcECslLuZgPVt6hg_3ide: argument 0"}
!1154 = distinct !{!1154, !"_RINvMNtCshzWfHUSfYae_4core3stre4findcECslLuZgPVt6hg_3ide"}
!1155 = !{!1156, !1158}
!1156 = distinct !{!1156, !1157, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!1157 = distinct !{!1157, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!1158 = distinct !{!1158, !1157, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!1159 = !{!1153}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1162, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1162 = distinct !{!1162, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1165, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1a_B18_6parentENtNtNtB6_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide: argument 0"}
!1165 = distinct !{!1165, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1a_B18_6parentENtNtNtB6_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide"}
!1166 = !{!1167}
!1167 = distinct !{!1167, !1168, !"_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt: argument 0"}
!1168 = distinct !{!1168, !"_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1171, !"_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt: argument 0"}
!1171 = distinct !{!1171, !"_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt"}
!1172 = !{i32 -1, i32 3}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1175, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!1175 = distinct !{!1175, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1178, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_: argument 0"}
!1178 = distinct !{!1178, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1178, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_: argument 1"}
!1181 = !{!1182, !1184}
!1182 = distinct !{!1182, !1183, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!1183 = distinct !{!1183, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!1184 = distinct !{!1184, !1183, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!1185 = !{!1182}
!1186 = !{!1184}
!1187 = !{!1188, !1190}
!1188 = distinct !{!1188, !1189, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!1189 = distinct !{!1189, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!1190 = distinct !{!1190, !1189, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!1191 = !{!1188}
!1192 = !{!1190}
!1193 = !{!"branch_weights", i32 4000000, i32 4001}
!1194 = !{!1195, !1197}
!1195 = distinct !{!1195, !1196, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!1196 = distinct !{!1196, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!1197 = distinct !{!1197, !1196, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!1198 = !{!1195}
!1199 = !{!1197}
!1200 = !{!1201, !1203}
!1201 = distinct !{!1201, !1202, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 0"}
!1202 = distinct !{!1202, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide"}
!1203 = distinct !{!1203, !1202, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide: argument 1"}
!1204 = !{!1201}
!1205 = !{!1203}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1208, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!1208 = distinct !{!1208, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1211, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!1211 = distinct !{!1211, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1214, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_: argument 0"}
!1214 = distinct !{!1214, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_"}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1214, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide5hover11HoverActionE8push_mutBJ_: argument 1"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1219, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!1219 = distinct !{!1219, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1222, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 1"}
!1222 = distinct !{!1222, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str"}
!1223 = !{!1224, !1226}
!1224 = distinct !{!1224, !1225, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide: argument 0"}
!1225 = distinct !{!1225, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide"}
!1226 = distinct !{!1226, !1222, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 0"}
!1227 = !{i64 1, i64 0}
!1228 = !{i64 0, i64 37}
end_hunk_3

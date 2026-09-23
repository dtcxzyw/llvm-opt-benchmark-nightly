Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.09?download=true
inline.NumInlined: 1867
inline.NumDeleted: 1127
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB5_17MarkLookupBuilder5build:bb.a
  invoke void @_RINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6_7HashSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtNtB1K_11collections4hash3map8IntoKeysBO_INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagIB4i_B4P_EEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.gt)
          to label %bb.et unwind label %bb.eq, !noalias !2002

bb.eq:                                            ; preds = %bb.ep
  %i.ys = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gu)
          to label %.body.i308 unwind label %bb.er, !noalias !2002

bb.er:                                            ; preds = %bb.es, %bb.eq
  %i.yt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !2005
  unreachable

bb.es:                                            ; preds = %bb.eo, %_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshxhuDJfZv4T_6fontbe.exit.i.i.i
  %i.yu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagIB1K_B2h_EEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.hm)
          to label %.body.i308 unwind label %bb.er, !noalias !2005

bb.et:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt), !noalias !2000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hn, ptr noundef nonnull align 8 dereferenceable(48) %i.gu, i64 48, i1 false), !noalias !2006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu), !noalias !2000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm), !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk), !noalias !1991
  %i.yv = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.yw = load i64, ptr %i.yv, align 8, !noalias !1991, !noundef !4 ; 2 uses
  %.not.i310 = icmp eq i64 %i.yw, 0
  br i1 %.not.i310, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  store ptr null, ptr %i.hk, align 8, !noalias !1991
  br label %bb.ez

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs), !noalias !1991
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.yy = load i64, ptr %i.yx, align 8, !alias.scope !2007, !noalias !2008, !noundef !4
  %.not.i.i.i = icmp ugt i64 %i.yy, %i.yw         ; 2 uses
  %..i.i = select i1 %.not.i.i.i, ptr %i.hn, ptr %i.ho
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(48) %i.gs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i.i)
          to label %.noexc.i311 unwind label %bb.fa, !noalias !1999

.noexc.i311:                                      ; preds = %bb.ev
  %.1.i.i = select i1 %.not.i.i.i, ptr %i.ho, ptr %i.hn
  %i.yz = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  store ptr %.1.i.i, ptr %i.yz, align 8, !noalias !2009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr), !noalias !2010
  %i.za = load i8, ptr %i.qn, align 8, !range !5, !noalias !2011, !noundef !4
  %i.zb = trunc nuw i8 %i.za to i1
  br i1 %i.zb, label %_RNvXs3_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_11RandomStateNtNtCsf3Ta7LF998c_4core7default7Default7default.exit.i.i65.i, label %_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshxhuDJfZv4T_6fontbe.exit.i.i.i64.i, !prof !6

_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshxhuDJfZv4T_6fontbe.exit.i.i.i64.i: ; preds = %.noexc.i311
  %i.zc = invoke noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshxhuDJfZv4T_6fontbe(ptr noundef nonnull align 8 %i.qm, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null)
          to label %.noexc70.i unwind label %bb.fa, !noalias !1999 ; 2 uses

.noexc70.i:                                       ; preds = %_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshxhuDJfZv4T_6fontbe.exit.i.i.i64.i
  %i.zd = icmp eq ptr %i.zc, null
  br i1 %i.zd, label %bb.ew, label %_RNvXs3_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_11RandomStateNtNtCsf3Ta7LF998c_4core7default7Default7default.exit.i.i65.i

bb.ew:                                            ; preds = %.noexc70.i
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29
          to label %.noexc71.i unwind label %bb.fa, !noalias !1999

.noexc71.i:                                       ; preds = %bb.ew
  unreachable

_RNvXs3_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_11RandomStateNtNtCsf3Ta7LF998c_4core7default7Default7default.exit.i.i65.i: ; preds = %.noexc70.i, %.noexc.i311
  %.sroa.0.0.i.i.i2.i.i.i66.i = phi ptr [ %i.zc, %.noexc70.i ], [ %i.qm, %.noexc.i311 ] ; 3 uses
  %.sroa.43.0..sroa_idx.i.i67.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.ze = load <2 x i64>, ptr %.sroa.0.0.i.i.i2.i.i.i66.i, align 8, !noalias !2012
  %i.zf = load i64, ptr %.sroa.0.0.i.i.i2.i.i.i66.i, align 8, !noalias !2012, !noundef !4
  %i.zg = add i64 %i.zf, 1
  store i64 %i.zg, ptr %.sroa.0.0.i.i.i2.i.i.i66.i, align 8, !noalias !2012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gr, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false), !noalias !2010
  store <2 x i64> %i.ze, ptr %.sroa.43.0..sroa_idx.i.i67.i, align 8, !noalias !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !noalias !2010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gq, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.gs, i64 48, i1 false), !noalias !2009
  invoke void @_RINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6_7HashSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2z_8adapters6copied6CopiedINtNtNtNtB1K_11collections4hash3set12IntersectionBO_B1E_EEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.gq)
          to label %bb.fb unwind label %bb.ex, !noalias !2013

bb.ex:                                            ; preds = %_RNvXs3_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_11RandomStateNtNtCsf3Ta7LF998c_4core7default7Default7default.exit.i.i65.i
  %i.zh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gr)
          to label %.body72.i unwind label %bb.ey, !noalias !2013

bb.ey:                                            ; preds = %bb.ex
  %i.zi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !2013
  unreachable

bb.ez:                                            ; preds = %bb.fb, %bb.eu
  %.not52.i = phi ptr [ %i.zo, %bb.fb ], [ %i.ho, %bb.eu ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.zk = load i64, ptr %i.zj, align 8, !noalias !1991, !noundef !4
  %i.zl = icmp eq i64 %i.zk, 0
  br i1 %i.zl, label %bb.fd, label %bb.fc

.body72.i:                                        ; preds = %bb.fe, %.loopexit.split-lp.i313, %bb.fa, %bb.ex
  %.pn57.i = phi { ptr, i32 } [ %i.zh, %bb.ex ], [ %i.zm, %bb.fa ], [ %.pn55.i, %bb.fe ], [ %.pn55.i, %.loopexit.split-lp.i313 ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hn)
          to label %.body.i308 unwind label %bb.fu, !noalias !1999

bb.fa:                                            ; preds = %.invoke.i, %bb.ew, %_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshxhuDJfZv4T_6fontbe.exit.i.i.i64.i, %bb.ev
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i

bb.fb:                                            ; preds = %_RNvXs3_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_11RandomStateNtNtCsf3Ta7LF998c_4core7default7Default7default.exit.i.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !noalias !2010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hk, ptr noundef nonnull align 8 dereferenceable(48) %i.gr, i64 48, i1 false), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !noalias !2010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !noalias !1991
  %.pre.i = load ptr, ptr %i.hk, align 8, !noalias !1991
  %i.zn = icmp eq ptr %.pre.i, null
  %i.zo = select i1 %i.zn, ptr %i.ho, ptr %i.hk
  br label %bb.ez

bb.fc:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj), !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx), !noalias !1991
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.gx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zp)
          to label %bb.ff unwind label %.loopexit.split-lp.loopexit.split-lp.i312, !noalias !1999

bb.fd:                                            ; preds = %.loopexit102.i, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6766)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi), !noalias !1991
  %.sroa.419.sroa.0.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false), !noalias !1991
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.sroa.0.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx.i, align 8, !noalias !1991
  %.sroa.419.sroa.0.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %.sroa.419.sroa.0.sroa.6.sroa.4.0..sroa.419.sroa.0.sroa.6.0..sroa.419.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.sroa.0.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1991
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.419.sroa.0.sroa.6.sroa.4.0..sroa.419.sroa.0.sroa.6.0..sroa.419.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !1991
  %.sroa.419.sroa.0.sroa.6.sroa.5.0..sroa.419.sroa.0.sroa.6.0..sroa.419.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.sroa.0.sroa.6.sroa.5.0..sroa.419.sroa.0.sroa.6.0..sroa.419.0..sroa_idx.sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1991
  store i64 -1, ptr %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i, align 8, !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh), !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg), !noalias !1991
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.zr = load ptr, ptr %i.zq, align 8, !alias.scope !1990, !noalias !1999, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zt = load ptr, ptr %i.zs, align 8, !noalias !1999, !nonnull !4, !noundef !4 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.zv = load i64, ptr %i.zu, align 8, !noalias !1999, !noundef !4
  %i.zw = getelementptr inbounds nuw [32 x i8], ptr %i.zt, i64 %i.zv
  store ptr %i.zt, ptr %i.hg, align 8, !noalias !1991
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %i.zw, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1991
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i64 0, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !1991
  invoke void @_RINvXs3_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB6_6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB23_8adapters3map3MapIB3c_INtNtB3g_9enumerate9EnumerateINtNtNtCsbeZck1VjBmm_8indexmap3set4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB5N_10GlyphOrder4iter0ENCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB6K_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss2_0EEB6O_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.hh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.hg)
          to label %bb.ga unwind label %bb.fz, !noalias !1999

.loopexit.split-lp.i313:                          ; preds = %bb.fz, %bb.fo, %.loopexit.split-lp.loopexit.split-lp.i312, %.loopexit.split-lp.loopexit.i314, %.loopexit.i315
  %.pn55.i = phi { ptr, i32 } [ %i.abl, %bb.fz ], [ %.pn.i319, %bb.fo ], [ %lpad.loopexit.i316, %.loopexit.i315 ], [ %lpad.loopexit99.i, %.loopexit.split-lp.loopexit.i314 ], [ %lpad.loopexit.split-lp100.i, %.loopexit.split-lp.loopexit.split-lp.i312 ] ; 2 uses
  %i.zx = load ptr, ptr %i.hk, align 8, !alias.scope !2014, !noalias !1991, !noundef !4
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %.body72.i, label %bb.fe

bb.fe:                                            ; preds = %.loopexit.split-lp.i313
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hk)
          to label %.body72.i unwind label %bb.fu, !noalias !1999

.loopexit.i315:                                   ; preds = %bb.fh, %_RINvXs8_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCsgeZ8ebHI9QV_7zerovec7zerovec5slice13ZeroSliceIterNtNtCs6ycZ7hHN0vs_14icu_properties5props6ScriptENvNtNtCshxhuDJfZv4T_6fontbe8features10properties21get_script_short_nameEEINtB6_8FuseImplBZ_E8try_folduNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCINvNvNtNtNtBa_6traits8iterator8Iterator8find_map5checkB5w_B5w_QNCNvB2Z_25unicode_script_extensions0E0E0B6o_EB33_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %lpad.loopexit.i316 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i313

.loopexit.split-lp.loopexit.i314:                 ; preds = %.backedge.i.i, %bb.fg
  %lpad.loopexit99.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i313

.loopexit.split-lp.loopexit.split-lp.i312:        ; preds = %bb.fv, %bb.fl, %bb.ff, %bb.fc
  %lpad.loopexit.split-lp100.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i313

bb.ff:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hj, ptr noundef nonnull align 8 dereferenceable(40) %i.gx, i64 40, i1 false), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !noalias !1991
  %i.zz = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4ItermNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.hj)
          to label %.noexc77.i unwind label %.loopexit.split-lp.loopexit.split-lp.i312, !noalias !1999

.noexc77.i:                                       ; preds = %bb.ff
  %i.aaa = extractvalue { ptr, ptr } %i.zz, 0     ; 2 uses
  %.not6.not.i.i = icmp eq ptr %i.aaa, null
  br i1 %.not6.not.i.i, label %.loopexit102.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc77.i
  %i.aab = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  br label %bb.fg

bb.fg:                                            ; preds = %.noexc79.i, %.lr.ph.i.i
  %i.aac = phi ptr [ %i.aaa, %.lr.ph.i.i ], [ %3, %.noexc79.i ]
  %.val5.i.i = load i32, ptr %i.aac, align 4, !noalias !1999, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp), !noalias !2015
  invoke void @_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties25unicode_script_extensions(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gp, i32 noundef %.val5.i.i)
          to label %.noexc78.i unwind label %.loopexit.split-lp.loopexit.i314, !noalias !1999

.noexc78.i:                                       ; preds = %bb.fg
  %i.aad = load ptr, ptr %i.gp, align 8, !alias.scope !2016, !noalias !2015, !noundef !4
  %.not.i6.i.i.i.i.i.i = icmp eq ptr %i.aad, null
  br i1 %.not.i6.i.i.i.i.i.i, label %.backedge.sink.split.i.i, label %.lr.ph.i.i.i.i.i.i

.backedge.sink.split.i.i:                         ; preds = %_RNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB7_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0Bb_.exit.thread.i.i.i.i.i, %.noexc78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !noalias !2015
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %_RNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB7_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0Bb_.exit.i.i.i.i.i, %_RNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB7_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0Bb_.exit.i.i.i.i.i, %.backedge.sink.split.i.i
  %2 = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4ItermNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.hj)
          to label %.noexc79.i unwind label %.loopexit.split-lp.loopexit.i314, !noalias !1999

.noexc79.i:                                       ; preds = %.backedge.i.i
  %3 = extractvalue { ptr, ptr } %2, 0            ; 2 uses
  %.not.not.i.i = icmp eq ptr %3, null
  br i1 %.not.not.i.i, label %.loopexit102.i, label %bb.fg

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc78.i, %.noexc82.i.a
  %.sroa.01.07.i.i.i.i.i.i = phi i8 [ %5, %.noexc82.i.a ], [ 0, %.noexc78.i ] ; 2 uses
  %i.aae = invoke i32 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgeZ8ebHI9QV_7zerovec7zerovec5slice13ZeroSliceIterNtNtCs6ycZ7hHN0vs_14icu_properties5props6ScriptENvNtNtCshxhuDJfZv4T_6fontbe8features10properties21get_script_short_nameENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEuINtNtNtBc_3ops12control_flow11ControlFlowB5s_ENCINvNvB3P_8find_map5checkB5s_B5s_QNCNvB2H_25unicode_script_extensions0E0E0B6k_EB2L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull %i.aab)
          to label %.noexc80.i.a unwind label %.loopexit.i315, !noalias !1999 ; 2 uses

.noexc80.i.a:                                     ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aaf = and i32 %i.aae, 255
  %.not19.i.i.i.i.i.i.i = icmp eq i32 %i.aaf, 255
  br i1 %.not19.i.i.i.i.i.i.i, label %_RNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB7_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0Bb_.exit.i.i.i.i.i, label %_RINvXs8_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCsgeZ8ebHI9QV_7zerovec7zerovec5slice13ZeroSliceIterNtNtCs6ycZ7hHN0vs_14icu_properties5props6ScriptENvNtNtCshxhuDJfZv4T_6fontbe8features10properties21get_script_short_nameEEINtB6_8FuseImplBZ_E8try_folduNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCINvNvNtNtNtBa_6traits8iterator8Iterator8find_map5checkB5w_B5w_QNCNvB2Z_25unicode_script_extensions0E0E0B6o_EB33_.exit.i.i.i.i.i.i

_RINvXs8_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCsgeZ8ebHI9QV_7zerovec7zerovec5slice13ZeroSliceIterNtNtCs6ycZ7hHN0vs_14icu_properties5props6ScriptENvNtNtCshxhuDJfZv4T_6fontbe8features10properties21get_script_short_nameEEINtB6_8FuseImplBZ_E8try_folduNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCINvNvNtNtNtBa_6traits8iterator8Iterator8find_map5checkB5w_B5w_QNCNvB2Z_25unicode_script_extensions0E0E0B6o_EB33_.exit.i.i.i.i.i.i: ; preds = %.noexc80.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go), !noalias !2015
  store i32 %i.aae, ptr %i.go, align 4, !noalias !2015
  %i.aag = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs2sOuOmxaxiH_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef nonnull %i.go, ptr noundef nonnull @34, i64 noundef 4)
          to label %.noexc81.i.a unwind label %.loopexit.i315, !noalias !1999

.noexc81.i.a:                                     ; preds = %_RINvXs8_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCsgeZ8ebHI9QV_7zerovec7zerovec5slice13ZeroSliceIterNtNtCs6ycZ7hHN0vs_14icu_properties5props6ScriptENvNtNtCshxhuDJfZv4T_6fontbe8features10properties21get_script_short_nameEEINtB6_8FuseImplBZ_E8try_folduNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCINvNvNtNtNtBa_6traits8iterator8Iterator8find_map5checkB5w_B5w_QNCNvB2Z_25unicode_script_extensions0E0E0B6o_EB33_.exit.i.i.i.i.i.i
  br i1 %i.aag, label %_RNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB7_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0Bb_.exit.thread.i.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %.noexc81.i.a
  %i.aah = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyBO_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.not52.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.go)
          to label %.noexc82.i.a unwind label %.loopexit.i315, !noalias !1999

.noexc82.i.a:                                     ; preds = %bb.fh
  %4 = zext i1 %i.aah to i8
  %5 = or i8 %.sroa.01.07.i.i.i.i.i.i, %4         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !noalias !2015
  %i.aai = load ptr, ptr %i.gp, align 8, !alias.scope !2016, !noalias !2015, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aai, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB7_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0Bb_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB7_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0Bb_.exit.thread.i.i.i.i.i: ; preds = %.noexc81.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !noalias !2015
  br label %.backedge.sink.split.i.i

_RNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB7_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0Bb_.exit.i.i.i.i.i: ; preds = %.noexc82.i.a, %.noexc80.i.a
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %5, %.noexc82.i.a ], [ %.sroa.01.07.i.i.i.i.i.i, %.noexc80.i.a ]
  %.sroa.0.0.i.fr.i.i.i.i.i = freeze i8 %.sroa.0.0.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !noalias !2015
  switch i8 %.sroa.0.0.i.fr.i.i.i.i.i, label %bb.fi [
    i8 2, label %.backedge.i.i
    i8 0, label %.backedge.i.i
  ]

.loopexit102.i:                                   ; preds = %.noexc79.i, %.noexc77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj), !noalias !1991
  br label %bb.fd

bb.fi:                                            ; preds = %_RNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB7_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0Bb_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj), !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf), !noalias !1991
  %i.aaj = load i64, ptr %i.yi, align 8, !range !7, !alias.scope !2017, !noalias !1999, !noundef !4
  %.not.i.i = icmp eq i64 %i.aaj, -1
  br i1 %.not.i.i, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aak = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.aal = load i64, ptr %i.aak, align 8, !alias.scope !2017, !noalias !1999, !noundef !4 ; 2 uses
  %i.aam = icmp ult i64 %i.aal, 10
  br i1 %i.aam, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aan = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8, !alias.scope !2017, !noalias !1999, !nonnull !4, !noundef !4
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.fi ], [ %i.aal, %bb.fk ], [ undef, %bb.fj ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.fi ], [ %i.aao, %bb.fk ], [ null, %bb.fj ] ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.hf, align 8, !noalias !1991
  %i.aap = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 %.sroa.4.0.i.i, ptr %i.aap, align 8, !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he), !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd), !noalias !1991
  %.not53.i = icmp eq ptr %.sroa.0.0.i.i, null
  %.61.i = select i1 %.not53.i, ptr null, ptr %i.hf ; 2 uses
  invoke void @_RINvNtNtCshxhuDJfZv4T_6fontbe8features10properties25glyphs_matching_predicateINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvMs2_NtB4_5marksNtB35_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss_0EB6_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.hd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zp, ptr noundef nonnull align 8 %.not52.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.61.i)
          to label %bb.fm unwind label %.loopexit.split-lp.loopexit.split-lp.i312, !noalias !1999

bb.fm:                                            ; preds = %bb.fl
  %i.aaq = load i64, ptr %i.hd, align 8, !range !15, !noalias !1991, !noundef !4 ; 2 uses
  %i.aar = icmp eq i64 %i.aaq, 2
  %i.aas = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aas, i64 24, i1 false), !noalias !1991
  br i1 %i.aar, label %bb.fx, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %.sroa.5.0..sroa_idx.i317 = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i317, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.538.0..sroa_idx.i, i64 40, i1 false), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !noalias !1991
  %.sroa.4.0..sroa_idx.i318 = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i318, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1991
  store i64 %i.aaq, ptr %i.he, align 8, !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb), !noalias !1991
  invoke void @_RINvNtNtCshxhuDJfZv4T_6fontbe8features10properties25glyphs_matching_predicateINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvMs2_NtB4_5marksNtB35_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss0_0EB6_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.hb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zp, ptr noundef nonnull align 8 %i.ho, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.61.i)
          to label %bb.fq unwind label %bb.fp, !noalias !1999

bb.fo:                                            ; preds = %bb.fs, %bb.fp
  %.pn.i319 = phi { ptr, i32 } [ %i.aat, %bb.fp ], [ %i.abf, %bb.fs ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(72) %i.he) #30
          to label %.loopexit.split-lp.i313 unwind label %bb.fu, !noalias !1999

bb.fp:                                            ; preds = %bb.fn
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fq:                                            ; preds = %bb.fn
  %i.aau = load i64, ptr %i.hb, align 8, !range !15, !noalias !1991, !noundef !4 ; 2 uses
  %i.aav = icmp eq i64 %i.aau, 2
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aaw, i64 24, i1 false), !noalias !1991
  br i1 %i.aav, label %bb.fv, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.517.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.541.0..sroa_idx.i, i64 40, i1 false), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !1991
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.i, i64 24, i1 false), !noalias !1991
  store i64 %i.aau, ptr %i.hc, align 8, !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !noalias !1991
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.aay = load ptr, ptr %i.aax, align 8, !alias.scope !1990, !noalias !1999, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !noalias !1999, !nonnull !4, !noundef !4 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %i.abc = load i64, ptr %i.abb, align 8, !noalias !1999, !noundef !4
  %i.abd = getelementptr inbounds nuw [32 x i8], ptr %i.aba, i64 %i.abc
  store ptr %i.aba, ptr %i.ha, align 8, !noalias !1991
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %i.abd, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !1991
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i64 0, ptr %.sroa.550.0..sroa_idx.i, align 8, !noalias !1991
  %i.abe = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %i.he, ptr %i.abe, align 8, !noalias !1991
  invoke void @_RINvXs4_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB6_6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendB18_E6extendINtNtNtB23_8adapters6filter6FilterINtNtB36_3map3MapIB3A_INtNtB36_9enumerate9EnumerateINtNtNtCsbeZck1VjBmm_8indexmap3set4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB60_10GlyphOrder4iter0ENCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB6X_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss3_0ENCB6R_s4_0EEB71_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.hc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ha)
          to label %bb.ft unwind label %bb.fs, !noalias !1999

bb.fs:                                            ; preds = %bb.fr
  %i.abf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(72) %i.hc) #30
          to label %bb.fo unwind label %bb.fu, !noalias !1999

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6770)
  %.sroa.0767.0.copyload = load i64, ptr %i.he, align 8, !noalias !1991 ; 2 uses
  %.sroa.4768.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i318, align 8, !noalias !1991 ; 2 uses
  %.sroa.5769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5769.0..sroa_idx, i64 24, i1 false), !noalias !1990
  %.sroa.6770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6770, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6770.0..sroa_idx, i64 32, i1 false), !noalias !1991
  %.sroa.6770.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6770, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6770.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.hc, i64 72, i1 false), !noalias !1991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6770, i64 104, i1 false), !noalias !1990
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6770)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !noalias !1991
  %i.abg = load ptr, ptr %i.hk, align 8, !alias.scope !2018, !noalias !1991, !noundef !4
  %i.abh = icmp eq ptr %i.abg, null
  br i1 %i.abh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEEECshxhuDJfZv4T_6fontbe.exit88.invoke.i, label %.invoke.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEECshxhuDJfZv4T_6fontbe.exit90.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEEECshxhuDJfZv4T_6fontbe.exit88.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !noalias !1991
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ho)
          to label %bb.gc unwind label %bb.gb

bb.fu:                                            ; preds = %bb.fz, %bb.fs, %bb.fo, %bb.fe, %.body72.i, %.body.i308
  %i.abi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !noalias !1999
  unreachable

bb.fv:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !1991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.i, i64 24, i1 false), !noalias !1990
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !noalias !1991
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(72) %i.he)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.i312, !noalias !1999

bb.fw:                                            ; preds = %bb.fx, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !noalias !1991
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !noalias !1991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1990
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.fw

bb.fy:                                            ; preds = %bb.ga, %bb.fw
  %.sroa.9.0 = phi i64 [ 0, %bb.ga ], [ 17, %bb.fw ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.ga ], [ 2, %bb.fw ] ; 2 uses
  %i.abj = load ptr, ptr %i.hk, align 8, !alias.scope !2019, !noalias !1991, !noundef !4
  %i.abk = icmp eq ptr %i.abj, null
  br i1 %i.abk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEEECshxhuDJfZv4T_6fontbe.exit88.invoke.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.fy, %bb.ft
  %.sroa.9.1 = phi i64 [ %.sroa.9.0, %bb.fy ], [ %.sroa.4768.0.copyload, %bb.ft ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.fy ], [ %.sroa.0767.0.copyload, %bb.ft ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hk)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEEECshxhuDJfZv4T_6fontbe.exit88.invoke.i unwind label %bb.fa, !noalias !1999

bb.fz:                                            ; preds = %bb.fd
  %i.abl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(72) %i.hi) #30
          to label %.loopexit.split-lp.i313 unwind label %bb.fu, !noalias !1999

bb.ga:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg), !noalias !1991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.sroa.0.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !1990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6766, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.419.sroa.0.sroa.6.sroa.4.0..sroa.419.sroa.0.sroa.6.0..sroa.419.0..sroa_idx.sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !1991
  %.sroa.6766.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6766, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6766.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.hh, i64 72, i1 false), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi), !noalias !1991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6766, i64 104, i1 false), !noalias !1990
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6766)
  br label %bb.fy

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEEECshxhuDJfZv4T_6fontbe.exit88.invoke.i: ; preds = %.invoke.i, %bb.fy, %bb.ft
  %.sroa.9.2 = phi i64 [ %.sroa.9.0, %bb.fy ], [ %.sroa.9.1, %.invoke.i ], [ %.sroa.4768.0.copyload, %bb.ft ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.fy ], [ %.sroa.0.1, %.invoke.i ], [ %.sroa.0767.0.copyload, %bb.ft ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk), !noalias !1991
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hn)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEECshxhuDJfZv4T_6fontbe.exit90.i unwind label %bb.el, !noalias !1999

.body321:                                         ; preds = %bb.gb, %.body.i308, %bb.ej, %bb.alf
  %.pn241 = phi { ptr, i32 } [ %.pn239, %bb.alf ], [ %i.abm, %bb.gb ], [ %i.yf, %bb.ej ], [ %.pn59.i, %.body.i308 ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtNtCshxhuDJfZv4T_6fontbe8features5marks9MarkGroupENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jr)
          to label %.body303 unwind label %bb.aku

end_hunk_0

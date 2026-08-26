Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_net-03aeade8086e102f.hickory_net.434d7c29dbe80863-cgu.00?download=true
inline.NumInlined: 384
inline.NumDeleted: 217
begin_hunk_0_@_RNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0B5_:bb.a
  call void @llvm.assume(i1 %i.ea)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.eb = getelementptr i8, ptr %.val.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !alias.scope !563, !noalias !562
  store i8 3, ptr %i.v, align 8, !alias.scope !563, !noalias !562
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ec)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i unwind label %bb.al

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !562
  br label %bb.ba

bb.aj:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !572, !noalias !553, !noundef !5
  %i.eg = load ptr, ptr %i.ed, align 8, !alias.scope !572, !noalias !553, !nonnull !5, !align !141, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !573, !nonnull !5, !noundef !5
  %i.ej = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !572, !noalias !553, !noundef !5
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !572, !noalias !553, !noundef !5
  invoke void %i.ei(ptr noundef %i.ef, ptr noundef %i.ek, i64 noundef %i.em)
          to label %bb.ba unwind label %bb.al, !inline_history !574

bb.ak:                                            ; preds = %bb.af
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !553
  unreachable

.body203:                                         ; preds = %bb.al, %bb.af, %bb.ac
  %.pn21 = phi { ptr, i32 } [ %i.do, %bb.ac ], [ %i.eo, %bb.al ], [ %i.ds, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.bc

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body203

bb.am:                                            ; preds = %bb.ad
  %.sroa.7390.sroa.10.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.sroa.7390.sroa.10.7.copyload = load i64, ptr %.sroa.7390.sroa.10.7..sroa_idx, align 8, !alias.scope !547
  %.sroa.7390.sroa.12.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.sroa.7390.sroa.12.7.copyload = load ptr, ptr %.sroa.7390.sroa.12.7..sroa_idx, align 8, !alias.scope !547
  %.sroa.7390.sroa.14.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8383.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7390.sroa.14.7..sroa_idx, i64 16, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.eq = load <2 x i64>, ptr %i.dr, align 8, !alias.scope !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i8 1, ptr %i.ep, align 8
  store <2 x i64> %i.eq, ptr %i.bh, align 16
  %.sroa.3707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %.sroa.7390.sroa.10.7.copyload, ptr %.sroa.3707.0..sroa_idx, align 16
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  store ptr %.sroa.7390.sroa.12.7.copyload, ptr %i.er, align 8
  %.sroa.6709.24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6709.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8383.sroa.12, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 0, ptr %i.es, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvMs_NtCs4okMlIQ9Z13_2h25shareINtB4_10SendStreamNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE9send_dataCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.er, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bd, i1 noundef zeroext true)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %.body217

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.eu = load i8, ptr %i.be, align 8, !range !578, !alias.scope !575, !noalias !579, !noundef !5
  %.not.i207 = icmp eq i8 %i.eu, -1
  br i1 %.not.i207, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.be, i64 40, i1 false), !noalias !579
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !585
  store ptr %i.u, ptr %i.s, align 8, !noalias !585
  %.sroa.42.0..sroa_idx.i.i208 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs3_NtCs4okMlIQ9Z13_2h25errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i208, align 8, !noalias !585
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @2, ptr noundef nonnull %i.s)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i209 unwind label %bb.aq, !noalias !587

bb.aq:                                            ; preds = %bb.ap
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u) #18
          to label %.body217 unwind label %bb.av, !noalias !587

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i209: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !585
  %i.ew = load <2 x i64>, ptr %i.t, align 16, !noalias !588
  %.sroa.4.i206.sroa.6.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4.i206.sroa.6.7.copyload = load i64, ptr %.sroa.4.i206.sroa.6.7..sroa_idx, align 16, !noalias !588
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.ex = load i8, ptr %i.u, align 8, !range !289, !alias.scope !595, !noalias !587, !noundef !5
  switch i8 %i.ex, label %bb.ar [
    i8 0, label %bb.ay
    i8 1, label %bb.au
    i8 2, label %bb.ay
    i8 3, label %bb.ay
  ]

bb.ar:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i209
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i.i.i.i212 = load ptr, ptr %i.ey, align 8, !alias.scope !595, !noalias !587, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !596
  %i.ez = ptrtoint ptr %.val.i.i.i.i212 to i64    ; 2 uses
  %i.fa = and i64 %i.ez, 3
  switch i64 %i.fa, label %default.unreachable994 [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i213
    i64 3, label %bb.as
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i213
    i64 1, label %bb.at
  ], !prof !290

bb.as:                                            ; preds = %bb.ar
  %i.fb = icmp ult ptr %.val.i.i.i.i212, inttoptr (i64 188978561024 to ptr)
  %i.fc = and i64 %i.ez, 1095216660480
  %i.fd = icmp ne i64 %i.fc, 1095216660480
  call void @llvm.assume(i1 %i.fb)
  call void @llvm.assume(i1 %i.fd)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i213

bb.at:                                            ; preds = %bb.ar
  %i.fe = getelementptr i8, ptr %.val.i.i.i.i212, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.fe, ptr %i.ff, align 8, !alias.scope !597, !noalias !596
  store i8 3, ptr %i.r, align 8, !alias.scope !597, !noalias !596
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i213 unwind label %bb.aw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i213: ; preds = %bb.at, %bb.as, %bb.ar, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !596
  br label %bb.ay

bb.au:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i209
  %i.fg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !606, !noalias !587, !noundef !5
  %i.fj = load ptr, ptr %i.fg, align 8, !alias.scope !606, !noalias !587, !nonnull !5, !align !141, !noundef !5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !607, !nonnull !5, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !606, !noalias !587, !noundef !5
  %i.fo = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !606, !noalias !587, !noundef !5
  invoke void %i.fl(ptr noundef %i.fi, ptr noundef %i.fn, i64 noundef %i.fp)
          to label %bb.ay unwind label %bb.aw, !inline_history !608

bb.av:                                            ; preds = %bb.aq
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !587
  unreachable

.body217:                                         ; preds = %bb.aw, %bb.aq, %bb.an
  %.pn26 = phi { ptr, i32 } [ %i.et, %bb.an ], [ %i.fr, %bb.aw ], [ %i.ev, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %.body233

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body217

bb.ax:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  store i8 0, ptr %i.ep, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 16 dereferenceable(24) %i.bh, i64 24, i1 false)
  br label %bb.bt

bb.ay:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i209, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i209, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i209, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i213, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.az

bb.az:                                            ; preds = %bb.dl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit, %bb.ay
  %.sroa.53.0 = phi ptr [ undef, %bb.dl ], [ %.sroa.53.4, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit ], [ undef, %bb.ay ]
  %.sroa.49.0 = phi i64 [ %.sroa.4.i235.sroa.6.7.copyload, %bb.dl ], [ %.sroa.49.4, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit ], [ %.sroa.4.i206.sroa.6.7.copyload, %bb.ay ]
  %.sroa.15.0 = phi i8 [ 5, %bb.dl ], [ %.sroa.15.4, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit ], [ 5, %bb.ay ]
  %i.fs = phi <2 x i64> [ %i.hy, %bb.dl ], [ %i.le, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit ], [ %i.ew, %bb.ay ]
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h25share10SendStreamNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ft)
          to label %bb.gr unwind label %bb.gq

.body233:                                         ; preds = %bb.bu, %bb.cd, %bb.by, %bb.bz, %bb.cf, %bb.go, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305, %.body217
  %.pn124.pn = phi { ptr, i32 } [ %.pn26, %.body217 ], [ %.pn116.pn.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305 ], [ %i.qw, %bb.go ], [ %i.hk, %bb.bu ], [ %i.hn, %bb.by ], [ %i.hn, %bb.bz ], [ %i.hv, %bb.cd ], [ %i.hx, %bb.cf ]
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h25share10SendStreamNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fu) #18
          to label %bb.gp unwind label %bb.bq

bb.ba:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit350, %bb.bd, %bb.ba
  %.sroa.53.1 = phi ptr [ undef, %bb.bd ], [ %.sroa.53.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit350 ], [ undef, %bb.ba ]
  %.sroa.49.1 = phi i64 [ %.sroa.4.i.sroa.6.7.copyload, %bb.bd ], [ %.sroa.49.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit350 ], [ %.sroa.4.i197.sroa.6.7.copyload, %bb.ba ]
  %.sroa.15.1 = phi i8 [ 5, %bb.bd ], [ %.sroa.15.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit350 ], [ 5, %bb.ba ]
  %i.fv = phi <2 x i64> [ %i.cv, %bb.bd ], [ %i.fs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit350 ], [ %i.dt, %bb.ba ]
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 394
  store i8 0, ptr %i.fw, align 2
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client11SendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fx)
          to label %bb.bo unwind label %bb.gz

bb.bc:                                            ; preds = %bb.v, %bb.x, %bb.ab, %.body348, %.body203
  %.pn131.pn = phi { ptr, i32 } [ %.pn21, %.body203 ], [ %.pn129, %.body348 ], [ %i.dn, %bb.ab ], [ %i.dg, %bb.x ], [ %i.de, %bb.v ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 394
  %i.fz = load i8, ptr %i.fy, align 2, !range !271, !noundef !5
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.hd, label %bb.be

bb.bd:                                            ; preds = %_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send00B7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.bb

bb.be:                                            ; preds = %bb.hd, %.body, %bb.bc
  %.pn134.pn = phi { ptr, i32 } [ %.pn13, %.body ], [ %.pn131.pn, %bb.hd ], [ %.pn131.pn, %bb.bc ]
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 394
  store i8 0, ptr %i.gb, align 2
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client11SendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(32) %i.gc) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229 unwind label %bb.bq

bb.bf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i8 %i.cg, ptr %i.bp, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3, i64 39, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store ptr %i.bp, ptr %i.bn, align 8
  %.sroa.5356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXs3_NtCs4okMlIQ9Z13_2h25errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.5356.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bo, ptr noundef nonnull @5, ptr noundef nonnull %i.bn)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bp) #18
          to label %bb.bm unwind label %bb.bq

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.ge = load <2 x i64>, ptr %i.bo, align 16, !alias.scope !609
  %.sroa.6701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.6701.0.copyload = load i64, ptr %.sroa.6701.0..sroa_idx, align 16, !alias.scope !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.gf = load i8, ptr %i.bp, align 8, !range !289, !alias.scope !619, !noundef !5
  switch i8 %i.gf, label %bb.bi [
    i8 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit
    i8 1, label %bb.bl
    i8 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit
    i8 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val.i.i = load ptr, ptr %i.gg, align 8, !alias.scope !619, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !619
  %i.gh = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.gi = and i64 %i.gh, 3
  switch i64 %i.gi, label %default.unreachable994 [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i
    i64 3, label %bb.bj
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i
    i64 1, label %bb.bk
  ], !prof !290

bb.bj:                                            ; preds = %bb.bi
  %i.gj = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.gk = and i64 %i.gh, 1095216660480
  %i.gl = icmp ne i64 %i.gk, 1095216660480
  call void @llvm.assume(i1 %i.gj)
  call void @llvm.assume(i1 %i.gl)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.gm = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gm) ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.gm, ptr %i.gn, align 8, !alias.scope !620, !noalias !619
  store i8 3, ptr %i.q, align 8, !alias.scope !620, !noalias !619
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gn)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i unwind label %bb.bn

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i: ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !619
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit

bb.bl:                                            ; preds = %bb.bh
  %i.go = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !629, !noundef !5
  %i.gr = load ptr, ptr %i.go, align 8, !alias.scope !629, !nonnull !5, !align !141, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !629, !nonnull !5, !noundef !5
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !629, !noundef !5
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !629, !noundef !5
  invoke void %i.gt(ptr noundef %i.gq, ptr noundef %i.gv, i64 noundef %i.gx)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit unwind label %bb.bn, !inline_history !630

bb.bm:                                            ; preds = %bb.bn, %bb.bg
  %.pn143 = phi { ptr, i32 } [ %i.gy, %bb.bn ], [ %i.gd, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i, %bb.bh, %bb.bh, %bb.bh, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit, %bb.bb
  %.sroa.53.2 = phi ptr [ %.sroa.53.1, %bb.bb ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit ]
  %.sroa.49.2 = phi i64 [ %.sroa.49.1, %bb.bb ], [ %.sroa.6701.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit ]
  %.sroa.15.2 = phi i8 [ %.sroa.15.1, %bb.bb ], [ 5, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit ]
  %i.gz = phi <2 x i64> [ %i.fv, %bb.bb ], [ %i.ge, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net.exit ]
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !637, !nonnull !5, !noundef !5
  %i.hc = atomicrmw sub ptr %i.hb, i64 1 release, align 8, !noalias !637
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %bb.bp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ha) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit unwind label %bb.gg

bb.bq:                                            ; preds = %bb.he, %bb.fr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit, %bb.er, %bb.bs, %bb.br, %bb.hd, %bb.hc, %bb.ga, %bb.fx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit340, %bb.fc, %bb.bu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305, %bb.bg, %bb.be, %.body233
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.br:                                            ; preds = %bb.g
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client11SendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229 unwind label %bb.bq

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229: ; preds = %bb.l, %bb.bm, %bb.br, %bb.g, %bb.ga, %bb.gd, %bb.gz, %bb.be
  %.pn143.pn.pn = phi { ptr, i32 } [ %.pn88, %bb.ga ], [ %i.ro, %bb.gz ], [ %.pn134.pn, %bb.be ], [ %i.qd, %bb.gd ], [ %.pn143, %bb.bm ], [ %i.ck, %bb.l ], [ %i.cd, %bb.g ], [ %i.cd, %bb.br ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !644, !nonnull !5, !noundef !5
  %i.hh = atomicrmw sub ptr %i.hg, i64 1 release, align 8, !noalias !644
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit231

bb.bs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hf) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit231 unwind label %bb.bq

bb.bt:                                            ; preds = %bb.b, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 7 uses
  invoke void @_RNvXs7_NtCs4okMlIQ9Z13_2h26clientNtB5_14ResponseFutureNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hj) #18
          to label %.body233 unwind label %bb.bq

bb.bv:                                            ; preds = %bb.bt
  %i.hl = load i64, ptr %i.bc, align 8, !range !645, !noundef !5 ; 3 uses
  %i.hm = icmp eq i64 %i.hl, -2
  br i1 %i.hm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %common.ret

bb.bx:                                            ; preds = %bb.bv
  %.sroa.3417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.3417.0.copyload = load i8, ptr %.sroa.3417.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5418.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5418.0..sroa_idx, i64 7, i1 false)
  %.sroa.5418.sroa.3.0..sroa.5418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.5418.sroa.3.0.copyload = load i64, ptr %.sroa.5418.sroa.3.0..sroa.5418.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5418.sroa.4.0..sroa.5418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.5418.sroa.4.0.copyload = load i64, ptr %.sroa.5418.sroa.4.0..sroa.5418.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5418.sroa.5.0..sroa.5418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.sroa.5418.sroa.5.0.copyload = load i64, ptr %.sroa.5418.sroa.5.0..sroa.5418.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %.sroa.6419.sroa.0.0.copyload = load ptr, ptr %.sroa.6419.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6419.sroa.3.0..sroa.6419.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419.sroa.3.0..sroa.6419.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.6419.sroa.4.0..sroa.6419.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6419.sroa.4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6419.sroa.4.0..sroa.6419.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke void @_RNvXsa_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hj)
          to label %bb.ca unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.ho = load ptr, ptr %i.hj, align 8, !alias.scope !652, !nonnull !5, !noundef !5
  %i.hp = atomicrmw sub ptr %i.ho, i64 1 release, align 8, !noalias !657
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %bb.bz, label %.body233

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hj) #21
          to label %.body233 unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.hr = load ptr, ptr %i.hj, align 8, !alias.scope !664, !nonnull !5, !noundef !5
  %i.hs = atomicrmw sub ptr %i.hr, i64 1 release, align 8, !noalias !665
  %i.ht = icmp eq i64 %i.hs, 1
  br i1 %i.ht, label %bb.cb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hj) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit unwind label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cd:                                            ; preds = %bb.cj, %bb.ci, %bb.cb
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body233

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit: ; preds = %bb.ca, %bb.cb
  %i.hw = icmp eq i64 %i.hl, -1
  br i1 %i.hw, label %bb.ce, label %.noexc162

bb.ce:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !666
  store i8 %.sroa.3417.0.copyload, ptr %i.p, align 8, !noalias !670
  %.sroa.5418.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5418.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5418.sroa.0, i64 7, i1 false)
  %.sroa.5418.sroa.3.0..sroa.5418.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store i64 %.sroa.5418.sroa.3.0.copyload, ptr %.sroa.5418.sroa.3.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !noalias !670
  %.sroa.5418.sroa.4.0..sroa.5418.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 %.sroa.5418.sroa.4.0.copyload, ptr %.sroa.5418.sroa.4.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !noalias !670
  %.sroa.5418.sroa.5.0..sroa.5418.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store i64 %.sroa.5418.sroa.5.0.copyload, ptr %.sroa.5418.sroa.5.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !noalias !670
  %.sroa.6419.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %.sroa.6419.sroa.0.0.copyload, ptr %.sroa.6419.8..sroa_idx, align 8, !noalias !670
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !674
  store ptr %i.p, ptr %i.n, align 8, !noalias !674
  %.sroa.42.0..sroa_idx.i.i236 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs3_NtCs4okMlIQ9Z13_2h25errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i236, align 8, !noalias !674
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @3, ptr noundef nonnull %i.n)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237 unwind label %bb.cf, !noalias !676

bb.cf:                                            ; preds = %bb.ce
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #18
          to label %.body233 unwind label %bb.ck, !noalias !676

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !674
  %i.hy = load <2 x i64>, ptr %i.o, align 16, !noalias !677
  %.sroa.4.i235.sroa.6.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4.i235.sroa.6.7.copyload = load i64, ptr %.sroa.4.i235.sroa.6.7..sroa_idx, align 16, !noalias !677
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.hz = load i8, ptr %i.p, align 8, !range !289, !alias.scope !684, !noalias !676, !noundef !5
  switch i8 %i.hz, label %bb.cg [
    i8 0, label %bb.dl
    i8 1, label %bb.cj
    i8 2, label %bb.dl
    i8 3, label %bb.dl
  ]

bb.cg:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237
  %.val.i.i.i.i240 = load ptr, ptr %.sroa.5418.sroa.3.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !alias.scope !684, !noalias !676, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !685
  %i.ia = ptrtoint ptr %.val.i.i.i.i240 to i64    ; 2 uses
  %i.ib = and i64 %i.ia, 3
  switch i64 %i.ib, label %default.unreachable994 [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241
    i64 3, label %bb.ch
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241
    i64 1, label %bb.ci
  ], !prof !290

bb.ch:                                            ; preds = %bb.cg
  %i.ic = icmp ult ptr %.val.i.i.i.i240, inttoptr (i64 188978561024 to ptr)
  %i.id = and i64 %i.ia, 1095216660480
  %i.ie = icmp ne i64 %i.id, 1095216660480
  call void @llvm.assume(i1 %i.ic)
  call void @llvm.assume(i1 %i.ie)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241

bb.ci:                                            ; preds = %bb.cg
  %i.if = getelementptr i8, ptr %.val.i.i.i.i240, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.if) ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.if, ptr %i.ig, align 8, !alias.scope !686, !noalias !685
  store i8 3, ptr %i.m, align 8, !alias.scope !686, !noalias !685
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ig)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241 unwind label %bb.cd

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241: ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cg
end_hunk_0
begin_hunk_1_@_RNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0B5_:bb.a
bb.cq:                                            ; preds = %bb.co
  %i.iw = load ptr, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE, align 8, !nonnull !5, !align !141, !noundef !5
  %i.ix = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iw, i8 noundef %.sroa.0.0.i247)
          to label %bb.cr unwind label %bb.cp

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.ix, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.iy = load ptr, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE, align 8, !nonnull !5, !align !141, !noundef !5 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.io, ptr %i.ay, align 8
  %.sroa.5435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1_NtCsjSDXC2TkEdJ_4http8responseINtB5_8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs5MfxasYgTEl_11hickory_net, ptr %.sroa.5435.0..sroa_idx, align 8
  store ptr @12, ptr %i.az, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ay, ptr %i.ja, align 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @11, ptr %i.jb, align 8
  store i64 1, ptr %i.bb, align 8
  %.sroa.6431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %.sroa.6431.0..sroa_idx, align 8
  %.sroa.7432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 1, ptr %.sroa.7432.0..sroa_idx, align 8
  %.sroa.8433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.iz, ptr %.sroa.8433.0..sroa_idx, align 8
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb)
          to label %_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s8_0B7_.exit unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s8_0B7_.exit: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.cu

bb.cu:                                            ; preds = %.noexc162, %bb.cr, %_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s8_0B7_.exit, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false)
  %i.jd = invoke noundef align 8 ptr @_RINvMs0_NtNtCsjSDXC2TkEdJ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.io, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ad)
          to label %bb.cw unwind label %bb.cv     ; 3 uses

bb.cv:                                            ; preds = %bb.cu
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.not.i254 = icmp eq ptr %i.jd, null
  br i1 %.not.i254, label %.loopexit964, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jf = getelementptr i8, ptr %i.jd, i64 8
  %.val.i = load ptr, ptr %i.jf, align 8, !noalias !698, !nonnull !5, !noundef !5 ; 4 uses
  %i.jg = getelementptr i8, ptr %i.jd, i64 16
  %.val2.i = load i64, ptr %i.jg, align 8, !noalias !698, !noundef !5 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val2.i
  %i.ji = icmp samesign eq i64 %.val2.i, 0
  br i1 %i.ji, label %.loopexit, label %.lr.ph.i.i.i

bb.cy:                                            ; preds = %.lr.ph.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i, i64 1 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.jh
  br i1 %i.jk, label %bb.db, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cx, %bb.cy
  %.sroa.02.01.i.i.i = phi ptr [ %i.jj, %bb.cy ], [ %.val.i, %bb.cx ] ; 2 uses
  %i.jl = load i8, ptr %.sroa.02.01.i.i.i, align 1, !noalias !698, !noundef !5 ; 2 uses
  %i.jm = add i8 %i.jl, -32
  %or.cond.i.i.i = icmp ult i8 %i.jm, 95
  %i.jn = icmp eq i8 %i.jl, 9
  %or.cond1.i.i.i = or i1 %i.jn, %or.cond.i.i.i
  br i1 %or.cond1.i.i.i, label %bb.cy, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !705
  store ptr %i.a, ptr %i.k, align 8, !noalias !705
  %.sroa.42.0..sroa_idx.i.i255 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsc_NtNtCsjSDXC2TkEdJ_4http6header5valueNtB5_10ToStrErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i255, align 8, !noalias !705
  %i.jo = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jo, ptr noundef nonnull @4, ptr noundef nonnull %i.k)
          to label %bb.dk unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

bb.db:                                            ; preds = %bb.cy
  %cond = icmp eq i64 %.val2.i, 1
  %i.jq = load i8, ptr %.val.i, align 1, !alias.scope !708, !noalias !717 ; 2 uses
  br i1 %cond, label %bb.dc, label %thread-pre-split.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  switch i8 %i.jq, label %thread-pre-split.i.i.i.i [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.db, %bb.dc
  %cond.i.i.i.i = icmp eq i8 %i.jq, 43            ; 2 uses
  %i.jr = sext i1 %cond.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i = add nsw i64 %.val2.i, %i.jr ; 4 uses
  %.sroa.0.0.idx.i.i.i.i = zext i1 %cond.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.idx.i.i.i.i ; 2 uses
  %i.js = icmp samesign ult i64 %.sroa.15.0.i.i.i.i, 17
  br i1 %i.js, label %.preheader.i.i.i.i, label %.preheader56.i.i.i.i.preheader

.preheader.i.i.i.i:                               ; preds = %thread-pre-split.i.i.i.i
  %.not5366.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i, label %.loopexit964, label %.lr.ph.i.i.i.i

.preheader56.i.i.i.i:                             ; preds = %bb.df
  %.not52.i.i.i.i = icmp eq i64 %i.ju, 0
  br i1 %.not52.i.i.i.i, label %.loopexit964, label %.preheader56.i.i.i.i.preheader

.preheader56.i.i.i.i.preheader:                   ; preds = %thread-pre-split.i.i.i.i, %.preheader56.i.i.i.i
  %.sroa.0.1.i.i.i.i1010 = phi ptr [ %i.jt, %.preheader56.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %thread-pre-split.i.i.i.i ] ; 2 uses
  %.sroa.15.1.i.i.i.i1009 = phi i64 [ %i.ju, %.preheader56.i.i.i.i ], [ %.sroa.15.0.i.i.i.i, %thread-pre-split.i.i.i.i ]
  %.sroa.042.0.i.i.i.i1008 = phi i64 [ %i.kf, %.preheader56.i.i.i.i ], [ 0, %thread-pre-split.i.i.i.i ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i1010, i64 1
  %i.ju = add nsw i64 %.sroa.15.1.i.i.i.i1009, -1 ; 2 uses
  %i.jv = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i1008, i64 10) ; 2 uses
  %i.jw = extractvalue { i64, i1 } %i.jv, 0       ; 2 uses
  %i.jx = extractvalue { i64, i1 } %i.jv, 1
  %i.jy = load i8, ptr %.sroa.0.1.i.i.i.i1010, align 1, !alias.scope !708, !noalias !717, !noundef !5 ; 2 uses
  br i1 %i.jx, label %bb.de, label %bb.dd, !prof !722

bb.dd:                                            ; preds = %.preheader56.i.i.i.i.preheader
  %i.jz = zext i8 %i.jy to i32
  %i.ka = add nsw i32 %i.jz, -48                  ; 2 uses
  %i.kb = icmp ult i32 %i.ka, 10
  br i1 %i.kb, label %bb.df, label %.loopexit

bb.de:                                            ; preds = %.preheader56.i.i.i.i.preheader
  %i.kc = add i8 %i.jy, -48
  %i.kd = icmp ult i8 %i.kc, 10
  %spec.select.i = select i1 %i.kd, i8 2, i8 1
  br label %.loopexit

bb.df:                                            ; preds = %bb.dd
  %i.ke = zext nneg i32 %i.ka to i64
  %i.kf = add i64 %i.jw, %i.ke                    ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %i.jw
  br i1 %i.kg, label %.loopexit, label %.preheader56.i.i.i.i, !prof !722

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.dg
  %.sroa.0.269.i.i.i.i = phi ptr [ %i.kn, %bb.dg ], [ %.sroa.0.0.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i = phi i64 [ %i.km, %bb.dg ], [ %.sroa.15.0.i.i.i.i, %.preheader.i.i.i.i ]
  %.sroa.042.267.i.i.i.i = phi i64 [ %i.kp, %bb.dg ], [ 0, %.preheader.i.i.i.i ]
  %i.kh = load i8, ptr %.sroa.0.269.i.i.i.i, align 1, !alias.scope !708, !noalias !717, !noundef !5
  %i.ki = zext i8 %i.kh to i32
  %i.kj = add nsw i32 %i.ki, -48                  ; 2 uses
  %i.kk = icmp ult i32 %i.kj, 10
  br i1 %i.kk, label %bb.dg, label %.loopexit

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kl = mul i64 %.sroa.042.267.i.i.i.i, 10
  %i.km = add nsw i64 %.sroa.15.268.i.i.i.i, -1   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i, i64 1
  %i.ko = zext nneg i32 %i.kj to i64
  %i.kp = add i64 %i.kl, %i.ko                    ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.km, 0
  br i1 %.not53.i.i.i.i, label %.loopexit964, label %.lr.ph.i.i.i.i

.loopexit:                                        ; preds = %bb.dd, %bb.df, %.lr.ph.i.i.i.i, %bb.cx, %bb.dc, %bb.dc, %bb.de
  %.sroa.8455.0.ph = phi i8 [ 1, %.lr.ph.i.i.i.i ], [ 1, %bb.dc ], [ %spec.select.i, %bb.de ], [ 0, %bb.cx ], [ 1, %bb.dc ], [ 1, %bb.dd ], [ 2, %bb.df ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !723
  store i8 %.sroa.8455.0.ph, ptr %i.i, align 1, !noalias !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !727
  store ptr %i.i, ptr %i.h, align 8, !noalias !727
  %.sroa.42.0..sroa_idx.i.i260 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i260, align 8, !noalias !727
  %i.kq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.kq, ptr noundef nonnull @4, ptr noundef nonnull %i.h)
          to label %bb.dj unwind label %bb.dh

bb.dh:                                            ; preds = %.loopexit
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

.loopexit964:                                     ; preds = %.preheader56.i.i.i.i, %bb.dg, %bb.cw, %.preheader.i.i.i.i
  %.sroa.9452.0.ph = phi i64 [ %i.kp, %bb.dg ], [ 0, %.preheader.i.i.i.i ], [ undef, %bb.cw ], [ %i.kf, %.preheader56.i.i.i.i ] ; 2 uses
  %.sroa.0451.0.ph = phi i64 [ 1, %bb.dg ], [ 1, %.preheader.i.i.i.i ], [ 0, %bb.cw ], [ 1, %.preheader56.i.i.i.i ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i64 %.sroa.0451.0.ph, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i64 %.sroa.9452.0.ph, ptr %i.kt, align 8
  %i.ku = trunc nuw i64 %.sroa.0451.0.ph to i1
  %i.kv = call i64 @llvm.umax.i64(i64 %.sroa.9452.0.ph, i64 512)
  %i.kw = call range(i64 512, 4097) i64 @llvm.umin.i64(i64 %i.kv, i64 4096)
  %.sroa.0.0.i263 = select i1 %i.ku, i64 %i.kw, i64 512
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 440
  invoke fastcc void @_RNvMs_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB4_8BytesMut13with_capacity(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.kx, i64 noundef %.sroa.0.0.i263)
          to label %.thread unwind label %bb.di

bb.di:                                            ; preds = %.loopexit964
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305: ; preds = %bb.dh, %bb.da, %bb.cv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit, %bb.cn, %bb.cp, %bb.ct, %bb.di, %bb.gn
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jc, %bb.ct ], [ %i.qv, %bb.gn ], [ %i.it, %bb.cn ], [ %i.ky, %bb.di ], [ %i.iv, %bb.cp ], [ %.pn111.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit ], [ %i.kr, %bb.dh ], [ %i.je, %bb.cv ], [ %i.jp, %bb.da ]
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjSDXC2TkEdJ_4http8response8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(128) %i.kz) #18
          to label %.body233 unwind label %bb.bq

bb.dj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !723
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, i64 7, i1 false)
  %i.la = load <2 x i64>, ptr %i.kq, align 8, !noalias !730
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.16.sroa.0.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !730
  %.sroa.16.sroa.7.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.16.sroa.7.0.copyload = load ptr, ptr %.sroa.16.sroa.7.0..sroa.16.0..sroa_idx.sroa_idx, align 8, !noalias !730
  %.sroa.16.sroa.8.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.sroa.8.0..sroa.16.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !723
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit

bb.dk:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !705
  %.sroa.7471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7471.0..sroa_idx, i64 7, i1 false)
  %.sroa.8472.0.copyload = load ptr, ptr %i.jo, align 8, !noalias !731
  %.sroa.11473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.11473.0.copyload = load i64, ptr %.sroa.11473.0..sroa_idx, align 8, !noalias !731
  %.sroa.14474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.14474.sroa.0.0.copyload = load i64, ptr %.sroa.14474.0..sroa_idx, align 8, !noalias !731
  %.sroa.14474.sroa.5.0..sroa.14474.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.14474.sroa.5.0.copyload = load ptr, ptr %.sroa.14474.sroa.5.0..sroa.14474.0..sroa_idx.sroa_idx, align 8, !noalias !731
  %.sroa.14474.sroa.6.0..sroa.14474.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14474.sroa.6.0..sroa.14474.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !701
  %i.lb = ptrtoint ptr %.sroa.8472.0.copyload to i64
  %i.lc = insertelement <2 x i64> poison, i64 %i.lb, i64 0
  %i.ld = insertelement <2 x i64> %i.lc, i64 %.sroa.11473.0.copyload, i64 1
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit: ; preds = %bb.dj, %bb.dk, %bb.et
  %.sroa.53.4 = phi ptr [ %.sroa.53.5, %bb.et ], [ %.sroa.16.sroa.7.0.copyload, %bb.dj ], [ %.sroa.14474.sroa.5.0.copyload, %bb.dk ]
  %.sroa.49.4 = phi i64 [ %.sroa.49.5, %bb.et ], [ %.sroa.16.sroa.0.0.copyload, %bb.dj ], [ %.sroa.14474.sroa.0.0.copyload, %bb.dk ]
  %.sroa.15.4 = phi i8 [ %.sroa.15.5, %bb.et ], [ 5, %bb.dj ], [ 5, %bb.dk ]
  %i.le = phi <2 x i64> [ %i.nm, %bb.et ], [ %i.la, %bb.dj ], [ %i.ld, %bb.dk ]
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjSDXC2TkEdJ_4http8response8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(128) %i.lf)
          to label %bb.az unwind label %bb.go

bb.dl:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !666
  br label %bb.az

bb.dm:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !732, !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  switch i8 %.pre, label %default.unreachable994 [
    i8 0, label %bb.dn
    i8 1, label %bb.do
    i8 2, label %bb.dp
    i8 3, label %bb.dq
  ]

bb.dn:                                            ; preds = %.thread, %bb.dm
  %i.lh = phi ptr [ %i.ni, %.thread ], [ %i.lg, %bb.dm ]
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !733, !nonnull !5, !align !141, !noundef !5
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.lj, ptr %i.lk, align 8, !noalias !733
  br label %bb.dq

bb.do:                                            ; preds = %bb.dm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc265 unwind label %bb.ds

.noexc265:                                        ; preds = %bb.do
  unreachable

bb.dp:                                            ; preds = %bb.dm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc266 unwind label %bb.ds

.noexc266:                                        ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.dn, %bb.dm
  %i.ll = phi ptr [ %i.lh, %bb.dn ], [ %i.lg, %bb.dm ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke void @_RNvXs_Cs4okMlIQ9Z13_2h2INtB4_6PollFnNCNCNvMs1_NtB4_5shareNtBI_10RecvStream4data00ENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dt unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ln = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.ll, align 8, !noalias !733
  br label %.body267

bb.ds:                                            ; preds = %bb.dp, %bb.do
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body267

bb.dt:                                            ; preds = %bb.dq
  %i.lp = load i8, ptr %i.ax, align 8, !range !738, !alias.scope !737, !noalias !739, !noundef !5 ; 3 uses
  %i.lq = icmp eq i8 %i.lp, -3                    ; 2 uses
  %spec.select.i264 = select i1 %i.lq, i8 3, i8 1
  store i8 %spec.select.i264, ptr %i.ll, align 8, !noalias !733
  br i1 %i.lq, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %common.ret

bb.dv:                                            ; preds = %bb.dt
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.37.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.37.0..sroa_idx, i64 7, i1 false)
  %.sroa.37.sroa.2.0..sroa.37.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.37.sroa.2.0.copyload = load ptr, ptr %.sroa.37.sroa.2.0..sroa.37.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.37.sroa.3.0..sroa.37.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.37.sroa.3.0.copyload = load ptr, ptr %.sroa.37.sroa.3.0..sroa.37.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.37.sroa.4.0..sroa.37.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.37.sroa.4.0.copyload = load i64, ptr %.sroa.37.sroa.4.0..sroa.37.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.37.sroa.5.0..sroa.37.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.37.sroa.5.0.copyload = load ptr, ptr %.sroa.37.sroa.5.0..sroa.37.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  switch i8 %i.lp, label %bb.dw [
    i8 -2, label %bb.ed
    i8 -1, label %.noexc
  ]

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !740
  store i8 %i.lp, ptr %i.g, align 8, !noalias !744
  %.sroa.8500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8500.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.37.sroa.0, i64 7, i1 false)
  %.sroa.8500.sroa.7.0..sroa.8500.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %.sroa.37.sroa.2.0.copyload, ptr %.sroa.8500.sroa.7.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !noalias !744
  %.sroa.8500.sroa.8.0..sroa.8500.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %.sroa.37.sroa.3.0.copyload, ptr %.sroa.8500.sroa.8.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !noalias !744
  %.sroa.8500.sroa.9.0..sroa.8500.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i64 %.sroa.37.sroa.4.0.copyload, ptr %.sroa.8500.sroa.9.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !noalias !744
  %.sroa.8500.sroa.10.0..sroa.8500.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %.sroa.37.sroa.5.0.copyload, ptr %.sroa.8500.sroa.10.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !noalias !744
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !748
  store ptr %i.g, ptr %i.e, align 8, !noalias !748
  %.sroa.42.0..sroa_idx.i.i271 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtCs4okMlIQ9Z13_2h25errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i271, align 8, !noalias !748
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @1, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272 unwind label %bb.dx, !noalias !750

bb.dx:                                            ; preds = %bb.dw
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit unwind label %bb.ec, !noalias !750

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272: ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !748
  %i.ls = load <2 x ptr>, ptr %i.f, align 16, !noalias !751
  %.sroa.4.i269.sroa.6.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.i269.sroa.6.7.copyload = load i64, ptr %.sroa.4.i269.sroa.6.7..sroa_idx, align 16, !noalias !751
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.lt = load i8, ptr %i.g, align 8, !range !289, !alias.scope !758, !noalias !750, !noundef !5
  switch i8 %i.lt, label %bb.dy [
    i8 0, label %bb.es
    i8 1, label %bb.eb
    i8 2, label %bb.es
    i8 3, label %bb.es
  ]

bb.dy:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272
  %.val.i.i.i.i275 = load ptr, ptr %.sroa.8500.sroa.7.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !alias.scope !758, !noalias !750, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !759
  %i.lu = ptrtoint ptr %.val.i.i.i.i275 to i64    ; 2 uses
  %i.lv = and i64 %i.lu, 3
  switch i64 %i.lv, label %default.unreachable994 [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i276
    i64 3, label %bb.dz
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i276
    i64 1, label %bb.ea
  ], !prof !290

bb.dz:                                            ; preds = %bb.dy
  %i.lw = icmp ult ptr %.val.i.i.i.i275, inttoptr (i64 188978561024 to ptr)
  %i.lx = and i64 %i.lu, 1095216660480
  %i.ly = icmp ne i64 %i.lx, 1095216660480
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.assume(i1 %i.ly)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i276

bb.ea:                                            ; preds = %bb.dy
  %i.lz = getelementptr i8, ptr %.val.i.i.i.i275, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lz) ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.lz, ptr %i.ma, align 8, !alias.scope !760, !noalias !759
  store i8 3, ptr %i.d, align 8, !alias.scope !760, !noalias !759
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ma)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i276 unwind label %bb.ee

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i276: ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !759
  br label %bb.es

bb.eb:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272
  call void @llvm.experimental.noalias.scope.decl(metadata !763)
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.mb = load ptr, ptr %.sroa.8500.sroa.10.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !alias.scope !769, !noalias !750, !noundef !5
  %i.mc = load ptr, ptr %.sroa.8500.sroa.7.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !alias.scope !769, !noalias !750, !nonnull !5, !align !141, !noundef !5
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %i.me = load ptr, ptr %i.md, align 8, !noalias !770, !nonnull !5, !noundef !5
  %i.mf = load ptr, ptr %.sroa.8500.sroa.8.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !alias.scope !769, !noalias !750, !noundef !5
  %i.mg = load i64, ptr %.sroa.8500.sroa.9.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !alias.scope !769, !noalias !750, !noundef !5
  invoke void %i.me(ptr noundef %i.mb, ptr noundef %i.mf, i64 noundef %i.mg)
          to label %bb.es unwind label %bb.ee, !inline_history !771

bb.ec:                                            ; preds = %bb.dx
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !750
  unreachable

bb.ed:                                            ; preds = %bb.dv
  %.phi.trans.insert978 = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.pre979 = load i64, ptr %.phi.trans.insert978, align 8, !range !546
  %i.mi = trunc nuw i64 %.pre979 to i1
  br i1 %i.mi, label %.thread995, label %bb.ey

bb.ee:                                            ; preds = %bb.eb, %bb.ea
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit

.noexc:                                           ; preds = %bb.dv
  %i.mk = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off962 = add i64 %i.mk, -2
  %switch963 = icmp ult i64 %.off962, 4
  br i1 %switch963, label %.critedge158, label %bb.ef

bb.ef:                                            ; preds = %.noexc
  %i.ml = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s0_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.mm = icmp ult i8 %i.ml, 3
  br i1 %i.mm, label %bb.ei, label %bb.eg, !prof !540

bb.eg:                                            ; preds = %bb.ef
  %i.mn = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s0_10___CALLSITE) #21
          to label %bb.ei unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.ei:                                            ; preds = %bb.eg, %bb.ef
  %.sroa.0.0.i283 = phi i8 [ %i.ml, %bb.ef ], [ %i.mn, %bb.eg ] ; 2 uses
  %i.mp = icmp eq i8 %.sroa.0.0.i283, 0
  br i1 %i.mp, label %.critedge158, label %bb.ek

bb.ej:                                            ; preds = %bb.ek
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.ek:                                            ; preds = %bb.ei
  %i.mr = load ptr, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s0_10___CALLSITE, align 8, !nonnull !5, !align !141, !noundef !5
  %i.ms = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mr, i8 noundef %.sroa.0.0.i283)
          to label %bb.el unwind label %bb.ej

bb.el:                                            ; preds = %bb.ek
  br i1 %i.ms, label %bb.em, label %.critedge158

.critedge158:                                     ; preds = %.noexc, %bb.ei, %_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s9_0B7_.exit, %bb.el
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %.sroa.37.sroa.2.0.copyload, ptr %i.ar, align 8
  %.sroa.8503.0..sroa_idx504 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.37.sroa.3.0.copyload, ptr %.sroa.8503.0..sroa_idx504, align 8
  %.sroa.9506.0..sroa_idx507 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.37.sroa.4.0.copyload, ptr %.sroa.9506.0..sroa_idx507, align 8
  %.sroa.11509.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %.sroa.37.sroa.5.0.copyload, ptr %.sroa.11509.0..sroa_idx510, align 8
  invoke void @_RINvXsm_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB6_8BytesMutINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendNtNtB8_5bytes5BytesECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mt, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ar)
          to label %bb.ep unwind label %bb.eo

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.mu = load ptr, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s0_10___CALLSITE, align 8, !nonnull !5, !align !141, !noundef !5 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 %.sroa.37.sroa.4.0.copyload, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.at, ptr %i.as, align 8
  %.sroa.5546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5546.0..sroa_idx, align 8
  store ptr @14, ptr %i.au, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.as, ptr %i.mw, align 8
  store ptr %i.au, ptr %i.av, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @11, ptr %i.mx, align 8
  store i64 1, ptr %i.aw, align 8
  %.sroa.7542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %.sroa.7542.0..sroa_idx, align 8
  %.sroa.8543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 1, ptr %.sroa.8543.0..sroa_idx, align 8
  %.sroa.9544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.mv, ptr %.sroa.9544.0..sroa_idx, align 8
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s9_0B7_.exit unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.er

_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s9_0B7_.exit: ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %.critedge158

bb.eo:                                            ; preds = %.critedge158
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit

bb.ep:                                            ; preds = %.critedge158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.nb = load i64, ptr %i.na, align 8, !range !546, !noundef !5
  %i.nc = trunc nuw i64 %i.nb to i1
  br i1 %i.nc, label %bb.eq, label %.thread

bb.eq:                                            ; preds = %bb.ep
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ne = load i64, ptr %i.nd, align 8, !noundef !5
  %i.nf = getelementptr i8, ptr %1, i64 448
  %.val179 = load i64, ptr %i.nf, align 8, !noundef !5
  %.not60 = icmp ult i64 %.val179, %i.ne
  br i1 %.not60, label %.thread, label %.thread995

.thread:                                          ; preds = %bb.ep, %bb.eq, %.loopexit964
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr %i.ng, ptr %i.nh, align 8
  %.sroa.10497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 0, ptr %.sroa.10497.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 416
  br label %bb.dn

bb.er:                                            ; preds = %bb.en, %bb.ej, %bb.eh
  %.pn58.ph = phi { ptr, i32 } [ %i.mo, %bb.eh ], [ %i.my, %bb.en ], [ %i.mq, %bb.ej ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.37.sroa.2.0.copyload) ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.37.sroa.2.0.copyload, i64 32
  %i.nk = load ptr, ptr %i.nj, align 8, !noalias !772, !nonnull !5, !noundef !5
  invoke void %i.nk(ptr noundef %.sroa.37.sroa.5.0.copyload, ptr noundef %.sroa.37.sroa.3.0.copyload, i64 noundef %.sroa.37.sroa.4.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit unwind label %bb.bq, !inline_history !235

bb.es:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i276, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !740
  %i.nl = ptrtoint <2 x ptr> %i.ls to <2 x i64>
  br label %bb.et

bb.et:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECs5MfxasYgTEl_11hickory_net.exit, %bb.gk, %bb.ex, %bb.es
  %.sroa.53.5 = phi ptr [ %.sroa.53.7, %bb.gk ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECs5MfxasYgTEl_11hickory_net.exit ], [ undef, %bb.ex ], [ undef, %bb.es ]
  %.sroa.49.5 = phi i64 [ %.sroa.49.7, %bb.gk ], [ %.sroa.6696.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECs5MfxasYgTEl_11hickory_net.exit ], [ %.sroa.6699.0.copyload, %bb.ex ], [ %.sroa.4.i269.sroa.6.7.copyload, %bb.es ]
  %.sroa.15.5 = phi i8 [ %.sroa.15.7, %bb.gk ], [ 5, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECs5MfxasYgTEl_11hickory_net.exit ], [ 5, %bb.ex ], [ 5, %bb.es ]
  %i.nm = phi <2 x i64> [ %i.qr, %bb.gk ], [ %i.od, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECs5MfxasYgTEl_11hickory_net.exit ], [ %i.nt, %bb.ex ], [ %i.nl, %bb.es ]
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 440
  invoke void @_RNvXs0_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.nn)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit unwind label %bb.gn

.thread995:                                       ; preds = %bb.eq, %bb.ed
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.np = load i64, ptr %i.no, align 8, !noundef !5 ; 2 uses
  store i64 %i.np, ptr %i.aq, align 8
  %i.nq = getelementptr i8, ptr %1, i64 448
  %.val178 = load i64, ptr %i.nq, align 8, !noundef !5 ; 2 uses
  %.not61 = icmp eq i64 %.val178, %i.np
  br i1 %.not61, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %.thread995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ey

bb.ev:                                            ; preds = %.thread995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 %.val178, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.aq, ptr %i.an, align 8
  %.sroa.5551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5551.0..sroa_idx, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ao, ptr %i.nr, align 8
  %.sroa.5553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5553.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noundef nonnull @15, ptr noundef nonnull %i.an)
          to label %bb.ex unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.nt = load <2 x i64>, ptr %i.ap, align 16, !alias.scope !777
  %.sroa.6699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.6699.0.copyload = load i64, ptr %.sroa.6699.0..sroa_idx, align 16, !alias.scope !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.et

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit: ; preds = %bb.eo, %bb.er, %bb.dx, %bb.ee, %.body267, %.body318, %bb.gl, %bb.ew
  %.pn111.pn.pn.pn = phi { ptr, i32 } [ %.pn73, %.body318 ], [ %i.ns, %bb.ew ], [ %.pn98.pn, %bb.gl ], [ %.pn49, %.body267 ], [ %.pn58.ph, %bb.er ], [ %i.mz, %bb.eo ], [ %i.mj, %bb.ee ], [ %i.lr, %bb.dx ]
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 440
  invoke void @_RNvXs0_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.nu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305 unwind label %bb.bq

bb.ey:                                            ; preds = %bb.eu, %bb.ed
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 3 uses
  %i.nw = getelementptr i8, ptr %1, i64 576       ; 2 uses
  %.val181 = load i16, ptr %i.nw, align 8, !range !781, !noundef !5
  %i.nx = add i16 %.val181, -200
  %spec.select.i.i = icmp ult i16 %i.nx, 100
  br i1 %spec.select.i.i, label %bb.fi, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 440
  %.val183 = load ptr, ptr %i.ny, align 8, !nonnull !5, !noundef !5
  %i.nz = getelementptr i8, ptr %1, i64 448
  %.val184 = load i64, ptr %i.nz, align 8, !noundef !5
  invoke void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val183, i64 noundef %.val184)
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %.body318

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %.val180 = load i16, ptr %i.nw, align 8, !range !781, !noundef !5
  store i16 %.val180, ptr %i.ak, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.ak, ptr %i.aj, align 8
  %.sroa.5559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXs0_NtCsjSDXC2TkEdJ_4http6statusNtB5_10StatusCodeNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.5559.0..sroa_idx, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.am, ptr %i.ob, align 8
  %.sroa.5561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr @_RNvXsb_NtCs4wP2HXfJTCR_5alloc6borrowINtB5_3CoweENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtCs5MfxasYgTEl_11hickory_net, ptr %.sroa.5561.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull @16, ptr noundef nonnull %i.aj)
          to label %bb.fd unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #18
          to label %.body318 unwind label %bb.bq

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.od = load <2 x i64>, ptr %i.al, align 16, !alias.scope !782
  %.sroa.6696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.6696.0.copyload = load i64, ptr %.sroa.6696.0..sroa_idx, align 16, !alias.scope !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.oe = load i64, ptr %i.am, align 8, !range !4, !alias.scope !786, !noundef !5
  %i.of = icmp eq i64 %i.oe, -1
  br i1 %i.of, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECs5MfxasYgTEl_11hickory_net.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs5MfxasYgTEl_11hickory_net.exit.i unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body318 unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs5MfxasYgTEl_11hickory_net.exit.i: ; preds = %bb.fe
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECs5MfxasYgTEl_11hickory_net.exit unwind label %bb.fh

.body318:                                         ; preds = %bb.fh, %bb.ff, %bb.fa, %bb.fc
  %.pn73 = phi { ptr, i32 } [ %i.og, %bb.ff ], [ %i.oc, %bb.fc ], [ %i.oa, %bb.fa ], [ %i.oi, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit

bb.fh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs5MfxasYgTEl_11hickory_net.exit.i
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body318

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECs5MfxasYgTEl_11hickory_net.exit: ; preds = %bb.fd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs5MfxasYgTEl_11hickory_net.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.et

bb.fi:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8576)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13584.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false)
  %i.oj = invoke noundef align 8 ptr @_RINvMs0_NtNtCsjSDXC2TkEdJ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.nv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ac)
          to label %bb.fk unwind label %bb.fj     ; 3 uses

bb.fj:                                            ; preds = %bb.fi
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ol = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.not.i321 = icmp eq ptr %i.oj, null
  br i1 %.not.i321, label %.thread954, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.on = getelementptr i8, ptr %i.oj, i64 8
  %.val.i322 = load ptr, ptr %i.on, align 8, !noalias !789, !nonnull !5, !noundef !5 ; 4 uses
  %i.oo = getelementptr i8, ptr %i.oj, i64 16
  %.val2.i323 = load i64, ptr %i.oo, align 8, !noalias !789, !noundef !5 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.val.i322, i64 %.val2.i323
  %i.oq = icmp samesign eq i64 %.val2.i323, 0
  br i1 %i.oq, label %_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionINtNtB4_6result6ResultReNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9unwrap_orB19_.exit, label %.lr.ph.i.i.i324

bb.fm:                                            ; preds = %.lr.ph.i.i.i324
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i325, i64 1 ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.op
  br i1 %i.os, label %_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionINtNtB4_6result6ResultReNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9unwrap_orB19_.exit, label %.lr.ph.i.i.i324

.lr.ph.i.i.i324:                                  ; preds = %bb.fl, %bb.fm
  %.sroa.02.01.i.i.i325 = phi ptr [ %i.or, %bb.fm ], [ %.val.i322, %bb.fl ] ; 2 uses
  %i.ot = load i8, ptr %.sroa.02.01.i.i.i325, align 1, !noalias !792, !noundef !5 ; 2 uses
  %i.ou = add i8 %i.ot, -32
  %or.cond.i.i.i326 = icmp ult i8 %i.ou, 95
  %i.ov = icmp eq i8 %i.ot, 9
  %or.cond1.i.i.i327 = or i1 %i.ov, %or.cond.i.i.i326
  br i1 %or.cond1.i.i.i327, label %bb.fm, label %_RNvMNtNtCsjSDXC2TkEdJ_4http6header5valueNtB2_11HeaderValue6to_str.exit.thread.i.i

_RNvMNtNtCsjSDXC2TkEdJ_4http6header5valueNtB2_11HeaderValue6to_str.exit.thread.i.i: ; preds = %.lr.ph.i.i.i324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !795
  store ptr %i.a, ptr %i.b, align 8, !noalias !795
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsc_NtNtCsjSDXC2TkEdJ_4http6header5valueNtB5_10ToStrErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !795
  %i.ow = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ow, ptr noundef nonnull @0, ptr noundef nonnull %i.b)
          to label %.noexc330 unwind label %bb.fo

.noexc330:                                        ; preds = %_RNvMNtNtCsjSDXC2TkEdJ_4http6header5valueNtB2_11HeaderValue6to_str.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !795
  %.sroa.55.0.copyload7.i = load ptr, ptr %i.ow, align 8, !noalias !789
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload9.i = load i64, ptr %.sroa.6.0..sroa_idx8.i, align 8, !noalias !789
  br label %_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionINtNtB4_6result6ResultReNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9unwrap_orB19_.exit

bb.fn:                                            ; preds = %bb.fo, %bb.fj
  %.pn75 = phi { ptr, i32 } [ %i.ox, %bb.fo ], [ %i.ok, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8576)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13584.sroa.8)
  br label %bb.gl

bb.fo:                                            ; preds = %_RNvMNtNtCsjSDXC2TkEdJ_4http6header5valueNtB2_11HeaderValue6to_str.exit.thread.i.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

.thread954:                                       ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8576)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13584.sroa.8)
  store ptr @18, ptr %i.ai, align 8, !captures !798
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 23, ptr %i.oy, align 8
  br label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit

_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionINtNtB4_6result6ResultReNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9unwrap_orB19_.exit: ; preds = %bb.fm, %bb.fl, %.noexc330
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload9.i, %.noexc330 ], [ 0, %bb.fl ], [ %.val2.i323, %bb.fm ] ; 3 uses
  %.sroa.55.0.i = phi ptr [ %.sroa.55.0.copyload7.i, %.noexc330 ], [ %.val.i322, %bb.fl ], [ %.val.i322, %bb.fm ] ; 4 uses
  %.not.i333 = phi i1 [ false, %.noexc330 ], [ true, %bb.fl ], [ true, %bb.fm ]
  %.sroa.0.0.i328 = phi i8 [ 5, %.noexc330 ], [ -1, %bb.fl ], [ -1, %bb.fm ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8576, ptr noundef nonnull align 1 dereferenceable(7) %i.ol, i64 7, i1 false)
  %.sroa.14591.sroa.0.0.copyload = load i64, ptr %i.om, align 8
  %.sroa.14591.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.14591.sroa.6.0.copyload = load ptr, ptr %.sroa.14591.sroa.6.0..sroa_idx, align 8
  %.sroa.14591.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13584.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14591.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not.i333, label %bb.fp, label %bb.gm

bb.fp:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionINtNtB4_6result6ResultReNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9unwrap_orB19_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8576)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13584.sroa.8)
  store ptr %.sroa.55.0.i, ptr %i.ai, align 8, !captures !798
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.sroa.6.0.i, ptr %i.oz, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.i) ]
  %i.pa = icmp eq i64 %.sroa.6.0.i, 23
  br i1 %i.pa, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit.thread

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit: ; preds = %bb.fp, %.thread954
  %.sroa.9578.0944957 = phi ptr [ @18, %.thread954 ], [ %.sroa.55.0.i, %bb.fp ] ; 2 uses
  %i.pb = load i128, ptr %.sroa.9578.0944957, align 1
  %i.pc = xor i128 %i.pb, 60414612951604675997867365337498939489
  %i.pd = getelementptr i8, ptr %.sroa.9578.0944957, i64 7
  %i.pe = load i128, ptr %i.pd, align 1
  %i.pf = xor i128 %i.pe, 134788810691389226975056672626085685620
  %i.pg = or i128 %i.pc, %i.pf
  %i.ph = icmp ne i128 %i.pg, 0
  %i.pi = zext i1 %i.ph to i32
  %.not959 = icmp eq i32 %i.pi, 0
  br i1 %.not959, label %bb.fq, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit.thread

bb.fq:                                            ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  %.val187 = load ptr, ptr %i.pj, align 8, !nonnull !5, !noundef !5
  %i.pk = getelementptr i8, ptr %1, i64 448
  %.val188 = load i64, ptr %i.pk, align 8, !noundef !5
  invoke fastcc void @_RNvMNtCs4wP2HXfJTCR_5alloc5sliceSh6to_vecCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val187, i64 noundef %.val188)
          to label %bb.fs unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fs, %bb.fq
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvXs0_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.pj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit340 unwind label %bb.bq

bb.fs:                                            ; preds = %bb.fq
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_responseNtB2_11DnsResponse11from_buffer(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae)
          to label %bb.ft unwind label %bb.fr

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.pm = load i64, ptr %i.af, align 8, !range !4, !alias.scope !802, !noalias !799, !noundef !5 ; 2 uses
  %i.pn = icmp eq i64 %i.pm, -1
  %i.po = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br i1 %i.pn, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.pp = load <2 x i64>, ptr %i.po, align 8, !noalias !799
  %.sroa.4.i336.sroa.6.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.4.i336.sroa.6.7.copyload = load i64, ptr %.sroa.4.i336.sroa.6.7..sroa_idx, align 8, !noalias !799
  %.sroa.4.i336.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.4.i336.sroa.7.7.copyload = load ptr, ptr %.sroa.4.i336.sroa.7.7..sroa_idx, align 8, !noalias !799
  %.sroa.4.i336.sroa.8.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i336.sroa.8.7..sroa_idx, i64 16, i1 false), !noalias !5
  br label %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtBO_5error10ProtoErrorE7map_errNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorNvYB2j_INtNtB5_7convert4FromB1L_E4fromEB2n_.exit

bb.fv:                                            ; preds = %bb.ft
  %.sroa.15.0.copyload607 = load i8, ptr %i.po, align 8, !alias.scope !804
  %.sroa.28.0..sroa_idx608 = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28.0..sroa_idx608, i64 7, i1 false), !alias.scope !804
  %.sroa.41.0..sroa_idx609 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.pq = load <2 x i64>, ptr %.sroa.41.0..sroa_idx609, align 8, !alias.scope !804
  %.sroa.49.0..sroa_idx629 = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.49.0.copyload630 = load i64, ptr %.sroa.49.0..sroa_idx629, align 8, !alias.scope !804
  %.sroa.53.0..sroa_idx641 = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.53.0.copyload642 = load ptr, ptr %.sroa.53.0..sroa_idx641, align 8, !alias.scope !804
  %.sroa.60.0..sroa_idx652 = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60.0..sroa_idx652, i64 32, i1 false), !alias.scope !804
  %.sroa.62.0..sroa_idx653 = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.62, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.62.0..sroa_idx653, i64 96, i1 false), !alias.scope !804
  br label %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtBO_5error10ProtoErrorE7map_errNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorNvYB2j_INtNtB5_7convert4FromB1L_E4fromEB2n_.exit

_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtBO_5error10ProtoErrorE7map_errNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorNvYB2j_INtNtB5_7convert4FromB1L_E4fromEB2n_.exit: ; preds = %bb.fv, %bb.fu
  %.sroa.53.8 = phi ptr [ %.sroa.4.i336.sroa.7.7.copyload, %bb.fu ], [ %.sroa.53.0.copyload642, %bb.fv ]
  %.sroa.49.8 = phi i64 [ %.sroa.4.i336.sroa.6.7.copyload, %bb.fu ], [ %.sroa.49.0.copyload630, %bb.fv ]
  %.sroa.15.8 = phi i8 [ 8, %bb.fu ], [ %.sroa.15.0.copyload607, %bb.fv ]
  %i.pr = phi <2 x i64> [ %i.pp, %bb.fu ], [ %i.pq, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvXs0_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.pj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit342 unwind label %bb.fw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit340: ; preds = %bb.fr, %bb.fw
  %.pn84 = phi { ptr, i32 } [ %i.ps, %bb.fw ], [ %i.pl, %bb.fr ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjSDXC2TkEdJ_4http8response8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(128) %i.nv) #18
          to label %bb.fx unwind label %bb.bq

bb.fw:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtBO_5error10ProtoErrorE7map_errNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorNvYB2j_INtNtB5_7convert4FromB1L_E4fromEB2n_.exit
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit340

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit342: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtBO_5error10ProtoErrorE7map_errNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorNvYB2j_INtNtB5_7convert4FromB1L_E4fromEB2n_.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjSDXC2TkEdJ_4http8response8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(128) %i.nv)
          to label %bb.fz unwind label %bb.fy

bb.fx:                                            ; preds = %bb.fy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit340
  %.pn86 = phi { ptr, i32 } [ %i.pu, %bb.fy ], [ %.pn84, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit340 ]
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h25share10SendStreamNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pt) #18
          to label %bb.ga unwind label %bb.bq

bb.fy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit342
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit342
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h25share10SendStreamNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pv)
          to label %bb.gc unwind label %bb.gb

bb.ga:                                            ; preds = %bb.gb, %bb.fx
  %.pn88 = phi { ptr, i32 } [ %i.pz, %bb.gb ], [ %.pn86, %bb.fx ]
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 0, ptr %i.pw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 394
  store i8 0, ptr %i.px, align 2
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client11SendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(32) %i.py) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229 unwind label %bb.bq

bb.gb:                                            ; preds = %bb.fz
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.gc:                                            ; preds = %bb.fz
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 0, ptr %i.qa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 394
  store i8 0, ptr %i.qb, align 2
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client11SendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(32) %i.qc)
          to label %bb.ge unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229

bb.ge:                                            ; preds = %bb.gc
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.qf = load ptr, ptr %i.qe, align 8, !alias.scope !811, !nonnull !5, !noundef !5
  %i.qg = atomicrmw sub ptr %i.qf, i64 1 release, align 8, !noalias !811
  %i.qh = icmp eq i64 %i.qg, 1
  br i1 %i.qh, label %bb.gf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit344

bb.gf:                                            ; preds = %bb.ge
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qe) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit344 unwind label %bb.gg

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit231: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229, %bb.bs, %bb.gg
  %.pn147 = phi { ptr, i32 } [ %i.ql, %bb.gg ], [ %.pn143.pn.pn, %bb.bs ], [ %.pn143.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229 ] ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 393
  %i.qj = load i8, ptr %i.qi, align 1, !range !271, !noundef !5
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %bb.he, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit354

bb.gg:                                            ; preds = %bb.gf, %bb.bp
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit231

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit344: ; preds = %bb.ge, %bb.gf
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 0, ptr %i.qm, align 1
  br label %bb.gh

bb.gh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit352, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit344
  %.sroa.53.6 = phi ptr [ %.sroa.53.2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit352 ], [ %.sroa.53.8, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit344 ]
  %.sroa.49.6.a = phi i64 [ %.sroa.49.2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit352 ], [ %.sroa.49.8, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit344 ]
  %.sroa.15.6 = phi i8 [ %.sroa.15.2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit352 ], [ %.sroa.15.8, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit344 ]
  %.sroa.0604.6 = phi i64 [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit352 ], [ %i.pm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit344 ]
  %i.qn = phi <2 x i64> [ %i.gz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit352 ], [ %i.pr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit344 ]
  store i64 %.sroa.0604.6, ptr %0, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.15.6, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, i64 7, i1 false)
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.qn, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.49.6.a, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.53.6, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60, i64 32, i1 false)
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.62.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.62, i64 96, i1 false)
  br label %common.ret

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit.thread: ; preds = %bb.fp, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr @19, ptr %i.ag, align 8
  %.sroa.5601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs5MfxasYgTEl_11hickory_net, ptr %.sroa.5601.0..sroa_idx, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ai, ptr %i.qo, align 8
  %.sroa.5603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs5MfxasYgTEl_11hickory_net, ptr %.sroa.5603.0..sroa_idx, align 8
  invoke fastcc void @_RNvNtCs4wP2HXfJTCR_5alloc3fmt6format(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noundef nonnull @20, ptr noundef nonnull %i.ag)
          to label %bb.gj unwind label %bb.gi

bb.gi:                                            ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit.thread
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.gl

bb.gj:                                            ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2neCs5MfxasYgTEl_11hickory_net.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.qq = load <2 x i64>, ptr %i.ah, align 16, !alias.scope !812
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 16, !alias.scope !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gm, %bb.gj
  %.sroa.53.7 = phi ptr [ undef, %bb.gj ], [ %.sroa.14591.sroa.6.0.copyload, %bb.gm ]
  %.sroa.49.7 = phi i64 [ %.sroa.6.0.copyload, %bb.gj ], [ %.sroa.14591.sroa.0.0.copyload, %bb.gm ]
  %.sroa.15.7 = phi i8 [ 5, %bb.gj ], [ %.sroa.0.0.i328, %bb.gm ]
  %i.qr = phi <2 x i64> [ %i.qq, %bb.gj ], [ %i.qu, %bb.gm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.et

bb.gl:                                            ; preds = %bb.gi, %bb.fn
  %.pn98.pn = phi { ptr, i32 } [ %.pn75, %bb.fn ], [ %i.qp, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit

bb.gm:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionINtNtB4_6result6ResultReNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9unwrap_orB19_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8576, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13584.sroa.8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8576)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13584.sroa.8)
  %i.qs = ptrtoint ptr %.sroa.55.0.i to i64
  %i.qt = insertelement <2 x i64> poison, i64 %i.qs, i64 0
  %i.qu = insertelement <2 x i64> %i.qt, i64 %.sroa.6.0.i, i64 1
  br label %bb.gk

bb.gn:                                            ; preds = %bb.et
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

bb.go:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %.body233

bb.gp:                                            ; preds = %bb.gq, %.body233
  %.pn127 = phi { ptr, i32 } [ %i.ra, %bb.gq ], [ %.pn124.pn, %.body233 ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.qy = load i8, ptr %i.qx, align 8, !range !271, !noundef !5
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.hc, label %.body348

bb.gq:                                            ; preds = %bb.az
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gr:                                            ; preds = %bb.az
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 8, !range !271, !noundef !5
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %bb.gs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit350

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit350: ; preds = %bb.gv, %bb.gw, %bb.gr
  store i8 0, ptr %i.rb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.bb

bb.gs:                                            ; preds = %bb.gr
  invoke void @_RNvXsa_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.gv unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.rf = load ptr, ptr %i.bh, align 16, !alias.scope !822, !nonnull !5, !noundef !5
  %i.rg = atomicrmw sub ptr %i.rf, i64 1 release, align 8, !noalias !827
  %i.rh = icmp eq i64 %i.rg, 1
  br i1 %i.rh, label %bb.gu, label %.body348

bb.gu:                                            ; preds = %bb.gt
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #21
          to label %.body348 unwind label %bb.gx

bb.gv:                                            ; preds = %bb.gs
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.ri = load ptr, ptr %i.bh, align 16, !alias.scope !834, !nonnull !5, !noundef !5
  %i.rj = atomicrmw sub ptr %i.ri, i64 1 release, align 8, !noalias !835
  %i.rk = icmp eq i64 %i.rj, 1
  br i1 %i.rk, label %bb.gw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit350

bb.gw:                                            ; preds = %bb.gv
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit350 unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gu
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

.body348:                                         ; preds = %bb.gy, %bb.gu, %bb.gt, %bb.hc, %bb.gp
  %.pn129 = phi { ptr, i32 } [ %.pn127, %bb.gp ], [ %.pn127, %bb.hc ], [ %i.rn, %bb.gy ], [ %i.re, %bb.gu ], [ %i.re, %bb.gt ]
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 0, ptr %i.rm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.bc

bb.gy:                                            ; preds = %bb.gw
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %.body348

bb.gz:                                            ; preds = %bb.bb
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net.exit229

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit: ; preds = %bb.bo, %bb.bp
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 393 ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !range !271, !noundef !5
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %bb.ha, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit352

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit352: ; preds = %bb.ha, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit
  store i8 0, ptr %i.rp, align 1
  br label %bb.gh

bb.ha:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rt = load ptr, ptr %i.rs, align 8, !alias.scope !842, !noundef !5
  %i.ru = load ptr, ptr %1, align 8, !alias.scope !842, !nonnull !5, !align !141, !noundef !5
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  %i.rw = load ptr, ptr %i.rv, align 8, !noalias !842, !nonnull !5, !noundef !5
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8, !alias.scope !842, !noundef !5
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sa = load i64, ptr %i.rz, align 8, !alias.scope !842, !noundef !5
  invoke void %i.rw(ptr noundef %i.rt, ptr noundef %i.ry, i64 noundef %i.sa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit352 unwind label %bb.hb, !inline_history !235

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit354: ; preds = %bb.he, %bb.hb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit231
  %.pn149 = phi { ptr, i32 } [ %i.sc, %bb.hb ], [ %.pn147, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit231 ], [ %.pn147, %bb.he ]
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 0, ptr %i.sb, align 1
  store i8 2, ptr %i.br, align 1
  resume { ptr, i32 } %.pn149

bb.hb:                                            ; preds = %bb.ha
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit354

.body267:                                         ; preds = %bb.ds, %bb.dr
  %.pn49 = phi { ptr, i32 } [ %i.ln, %bb.dr ], [ %i.lo, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit

bb.hc:                                            ; preds = %bb.gp
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #18
          to label %.body348 unwind label %bb.bq

bb.hd:                                            ; preds = %bb.bc
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjSDXC2TkEdJ_4http7request7RequestuEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(224) %i.sd) #18
          to label %bb.be unwind label %bb.bq

bb.he:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextEEB1d_.exit231
  call void @llvm.experimental.noalias.scope.decl(metadata !843)
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !alias.scope !849, !noundef !5
  %i.sg = load ptr, ptr %1, align 8, !alias.scope !849, !nonnull !5, !align !141, !noundef !5
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.si = load ptr, ptr %i.sh, align 8, !noalias !849, !nonnull !5, !noundef !5
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !alias.scope !849, !noundef !5
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sm = load i64, ptr %i.sl, align 8, !alias.scope !849, !noundef !5
  invoke void %i.si(ptr noundef %i.sf, ptr noundef %i.sk, i64 noundef %i.sm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit354 unwind label %bb.bq, !inline_history !235
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCs4wP2HXfJTCR_5alloc5sliceSh6to_vecCs5MfxasYgTEl_11hickory_net(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !853
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !853
  %i.b = load i64, ptr %i.a, align 8, !range !546, !noalias !853, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !855, !noalias !853, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5MfxasYgTEl_11hickory_net.exit.i, !prof !722

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !853
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #23, !noalias !853
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5MfxasYgTEl_11hickory_net.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !853, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !853
  store i64 %i.e, ptr %0, align 8, !alias.scope !850, !noalias !856
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 183
begin_hunk_0_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %.lr.ph.i.i.i.i.i.i
  %i.gd = load i8, ptr %i.fu, align 8
  %i.ge = trunc i8 %i.gd to i1
  br i1 %i.ge, label %bb.p, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -56
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !80
  %i.gh = load i64, ptr %i.fu, align 8
  %i.gi = and i64 %i.gh, -2
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gi) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fr, %i.fu
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %.0.i, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.m
  %i.gj = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.fr, %bb.m ] ; 2 uses
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !357
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !361
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.go) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.l
  %i.gp = load <2 x ptr>, ptr %.05.i, align 8, !tbaa !361
  store <2 x ptr> %i.gp, ptr %.0.i, align 8, !tbaa !361
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !361
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.05.i, i8 0, i64 24, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !377 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !378 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.gx
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.q, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.gy, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i ], [ %i.gx, %bb.q ] ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.gz = load i8, ptr %i.gy, align 8
  %i.ha = trunc i8 %i.gz to i1
  br i1 %i.ha, label %bb.r, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.hb = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i, i64 -8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !80
  %i.hd = load i64, ptr %i.gy, align 8
  %i.he = and i64 %i.hd, -2
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.he) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.gy
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.gt, align 8, !tbaa !377
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, %bb.q
  %i.hf = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i ], [ %i.gv, %bb.q ] ; 2 uses
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !378
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !379
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hk) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i
  %i.hl = load <2 x ptr>, ptr %i.gu, align 8, !tbaa !379
  store <2 x ptr> %i.hl, ptr %i.gt, align 8, !tbaa !379
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !379
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, i8 0, i64 24, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.hq = getelementptr inbounds nuw i8, ptr %.05.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.hp, ptr noundef nonnull align 8 dereferenceable(44) %i.hq, i64 44, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i, i64 96 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i, i64 96 ; 2 uses
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !374 ; 5 uses
  %.not.i.i.i7.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i7.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i, i64 104 ; 3 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !375 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq ptr %i.ht, %i.hv
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i
  %.0.i2.i.i.i.i.i.i.i = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.hv, %bb.s ]
  %i.hw = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i.i.i, i64 -96 ; 3 uses
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.hw) #44, !inline_history !13
  %.not.i.i.i.i.i.i8.i.i = icmp eq ptr %i.ht, %i.hw
  br i1 %.not.i.i.i.i.i.i8.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i9.i.i = load ptr, ptr %i.hr, align 8, !tbaa !374
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, %bb.s
  %i.hx = phi ptr [ %.pre.i.i.i9.i.i, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i ], [ %i.ht, %bb.s ] ; 2 uses
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !375
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !376
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ic) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i
  %i.id = load <2 x ptr>, ptr %i.hs, align 8, !tbaa !376
  store <2 x ptr> %i.id, ptr %i.hr, align 8, !tbaa !376
  %i.ie = getelementptr inbounds nuw i8, ptr %.05.i, i64 112
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !376
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i, i64 120
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ih, ptr noundef nonnull align 8 dereferenceable(136) %i.ii, i64 136, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 3 uses
  %i.ik = load i8, ptr %i.ij, align 8
  %i.il = trunc i8 %i.ik to i1
  br i1 %i.il, label %bb.t, label %_ZN3tev9ImageDataaSEOS0_.exit.i

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i, i64 272
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !80
  %i.io = load i64, ptr %i.ij, align 8
  %i.ip = and i64 %i.io, -2
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ip) #49
  br label %_ZN3tev9ImageDataaSEOS0_.exit.i

_ZN3tev9ImageDataaSEOS0_.exit.i:                  ; preds = %bb.t, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %i.iq, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %.05.i, i64 257
  store i8 0, ptr %i.ir, align 1, !tbaa !80
  %.not18.i = icmp eq ptr %.05.i, %.021
  br i1 %.not18.i, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i
  %i.is = getelementptr inbounds i8, ptr %.05.i, i64 -280
  %i.it = getelementptr inbounds i8, ptr %.05.i, i64 -24
  %i.iu = load i8, ptr %i.dy, align 16            ; 2 uses
  %i.iv = trunc i8 %i.iu to i1                    ; 2 uses
  %i.iw = load ptr, ptr %i.dz, align 16
  %i.ix = select i1 %i.iv, ptr %i.iw, ptr %i.ea
  %i.iy = load i64, ptr %i.eb, align 8
  %i.iz = lshr i8 %i.iu, 1
  %i.ja = zext nneg i8 %i.iz to i64
  %i.jb = select i1 %i.iv, i64 %i.iy, i64 %i.ja   ; 2 uses
  %i.jc = load i8, ptr %i.it, align 8             ; 2 uses
  %i.jd = trunc i8 %i.jc to i1                    ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %.05.i, i64 -8
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = getelementptr inbounds i8, ptr %.05.i, i64 -23
  %i.jh = select i1 %i.jd, ptr %i.jf, ptr %i.jg
  %i.ji = getelementptr inbounds i8, ptr %.05.i, i64 -16
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = lshr i8 %i.jc, 1
  %i.jl = zext nneg i8 %i.jk to i64
  %i.jm = select i1 %i.jd, i64 %i.jj, i64 %i.jl   ; 2 uses
  %.sroa.speculated.i.i.i.i19.i = call i64 @llvm.umin.i64(i64 %i.jm, i64 %i.jb)
  %i.jn = call noundef i32 @memcmp(ptr noundef %i.ix, ptr noundef %i.jh, i64 noundef %.sroa.speculated.i.i.i.i19.i) #44 ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.v, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i"

bb.v:                                             ; preds = %bb.u
  %i.jp = icmp ult i64 %i.jb, %i.jm
  br i1 %i.jp, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i", label %.critedge.i

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i": ; preds = %bb.v, %bb.u
  %.0.i.i.i.i20.i = phi i32 [ %i.jn, %bb.u ], [ -2147483648, %bb.v ]
  %i.jq = icmp slt i32 %.0.i.i.i.i20.i, 0
  br i1 %i.jq, label %bb.l, label %.critedge.i, !llvm.loop !2697

.critedge.i:                                      ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i", %bb.v, %_ZN3tev9ImageDataaSEOS0_.exit.i
  %.05.lcssa.i = phi ptr [ %.05.i, %bb.v ], [ %.021, %_ZN3tev9ImageDataaSEOS0_.exit.i ], [ %.05.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit21.i" ]
  %i.jr = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.05.lcssa.i, ptr noundef nonnull align 8 dereferenceable(280) %13) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %13) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i": ; preds = %.critedge.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i", %bb.k
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge15.i, i64 280 ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i, %.024.ph
  br i1 %.not.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %bb.j, !llvm.loop !2698

bb.w:                                             ; preds = %bb.h
  br i1 %i.dq, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.w
  %storemerge12.i55 = getelementptr inbounds nuw i8, ptr %.021, i64 280 ; 2 uses
  %.not13.i56 = icmp eq ptr %storemerge12.i55, %.024.ph
  br i1 %.not13.i56, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.preheader.i54
  %i.js = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.jv = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.jw = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.jx = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.jy = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.jz = getelementptr inbounds nuw i8, ptr %12, i64 256 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %12, i64 272
  %i.kb = getelementptr inbounds nuw i8, ptr %12, i64 257
  %i.kc = getelementptr inbounds nuw i8, ptr %12, i64 264
  br label %bb.x

bb.x:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62", %.lr.ph.i57
  %storemerge15.i58 = phi ptr [ %storemerge12.i55, %.lr.ph.i57 ], [ %storemerge.i63, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62" ] ; 5 uses
  %.pn14.i59 = phi ptr [ %.021, %.lr.ph.i57 ], [ %storemerge15.i58, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62" ] ; 16 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 536 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 256
  %i.kf = load i8, ptr %i.kd, align 8             ; 2 uses
  %i.kg = trunc i8 %i.kf to i1                    ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 552
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 537
  %i.kk = select i1 %i.kg, ptr %i.ki, ptr %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 544
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = lshr i8 %i.kf, 1
  %i.ko = zext nneg i8 %i.kn to i64
  %i.kp = select i1 %i.kg, i64 %i.km, i64 %i.ko   ; 2 uses
  %i.kq = load i8, ptr %i.ke, align 8             ; 2 uses
  %i.kr = trunc i8 %i.kq to i1                    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 272
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 257
  %i.kv = select i1 %i.kr, ptr %i.kt, ptr %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 264
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = lshr i8 %i.kq, 1
  %i.kz = zext nneg i8 %i.ky to i64
  %i.la = select i1 %i.kr, i64 %i.kx, i64 %i.kz   ; 2 uses
  %.sroa.speculated.i.i.i.i.i60 = call i64 @llvm.umin.i64(i64 %i.la, i64 %i.kp)
  %i.lb = call noundef i32 @memcmp(ptr noundef %i.kk, ptr noundef %i.kv, i64 noundef %.sroa.speculated.i.i.i.i.i60) #44 ; 2 uses
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.y, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i61"

bb.y:                                             ; preds = %bb.x
  %i.ld = icmp ult i64 %i.kp, %i.la
  br i1 %i.ld, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i65", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i61": ; preds = %bb.x
  %i.le = icmp slt i32 %i.lb, 0
  br i1 %i.le, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i65", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i65": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i61", %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #44
  %i.lf = load <2 x ptr>, ptr %storemerge15.i58, align 8, !tbaa !361
  store <2 x ptr> %i.lf, ptr %12, align 16, !tbaa !361
  %i.lg = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 296
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !361
  store ptr %i.lh, ptr %i.js, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %storemerge15.i58, i8 0, i64 24, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 304 ; 2 uses
  %i.lj = load <2 x ptr>, ptr %i.li, align 8, !tbaa !379
  store <2 x ptr> %i.lj, ptr %i.jt, align 8, !tbaa !379
  %i.lk = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 320
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !379
  store ptr %i.ll, ptr %i.ju, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.li, i8 0, i64 24, i1 false)
  %i.lm = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.jv, ptr noundef nonnull align 8 dereferenceable(44) %i.lm, i64 44, i1 false)
  %i.ln = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 376 ; 2 uses
  %i.lo = load <2 x ptr>, ptr %i.ln, align 8, !tbaa !376
  store <2 x ptr> %i.lo, ptr %i.jw, align 16, !tbaa !376
  %i.lp = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 392
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !376
  store ptr %i.lq, ptr %i.jx, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ln, i8 0, i64 24, i1 false)
  %i.lr = getelementptr inbounds nuw i8, ptr %.pn14.i59, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.jy, ptr noundef nonnull align 8 dereferenceable(136) %i.lr, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.jz, ptr noundef nonnull align 8 dereferenceable(24) %i.kd, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kd, i8 0, i64 24, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i65"
  %.05.i66 = phi ptr [ %.pn14.i59, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i65" ], [ %i.ot, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i" ] ; 18 uses
  %.0.i67 = phi ptr [ %storemerge15.i58, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i65" ], [ %.05.i66, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i" ] ; 18 uses
  %i.ls = load ptr, ptr %.0.i67, align 8, !tbaa !356 ; 5 uses
  %.not.i.i.i68 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i68, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i67, i64 8 ; 3 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !357 ; 2 uses
  %.not6.i.i.i.i.i.i69 = icmp eq ptr %i.ls, %i.lu
  br i1 %.not6.i.i.i.i.i.i69, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78, label %.lr.ph.i.i.i.i.i.i70

.lr.ph.i.i.i.i.i.i70:                             ; preds = %bb.aa, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74
  %.07.i.i.i.i.i.i71 = phi ptr [ %i.lv, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74 ], [ %i.lu, %bb.aa ] ; 3 uses
  %i.lv = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i71, i64 -72 ; 4 uses
  %i.lw = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i71, i64 -24
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !360 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i72 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i72, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i73, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i70
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = atomicrmw add ptr %i.ly, i64 -1 acq_rel, align 8
  %i.ma = icmp eq i64 %i.lz, 0
  br i1 %i.ma, label %bb.ac, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i73

bb.ac:                                            ; preds = %bb.ab
  %i.mb = load ptr, ptr %i.lx, align 8, !tbaa !89
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(24) %i.lx) #44, !inline_history !2699
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lx) #44
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i73

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i73: ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i.i.i.i.i70
  %i.me = load i8, ptr %i.lv, align 8
  %i.mf = trunc i8 %i.me to i1
  br i1 %i.mf, label %bb.ad, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74

bb.ad:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i73
  %i.mg = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i71, i64 -56
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !80
  %i.mi = load i64, ptr %i.lv, align 8
  %i.mj = and i64 %i.mi, -2
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mj) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74: ; preds = %bb.ad, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i73
  %.not.i.i.i.i.i.i75 = icmp eq ptr %i.ls, %i.lv
  br i1 %.not.i.i.i.i.i.i75, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76, label %.lr.ph.i.i.i.i.i.i70

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i74
  %.pre.i.i.i77 = load ptr, ptr %.0.i67, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76, %bb.aa
  %i.mk = phi ptr [ %.pre.i.i.i77, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i76 ], [ %i.ls, %bb.aa ] ; 2 uses
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !357
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i67, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !361
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = sub i64 %i.mn, %i.mo
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mp) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i78, %bb.z
  %i.mq = load <2 x ptr>, ptr %.05.i66, align 8, !tbaa !361
  store <2 x ptr> %i.mq, ptr %.0.i67, align 8, !tbaa !361
  %i.mr = getelementptr inbounds nuw i8, ptr %.05.i66, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !361
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i67, i64 16
  store ptr %i.ms, ptr %i.mt, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.05.i66, i8 0, i64 24, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i67, i64 24 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.05.i66, i64 24 ; 2 uses
  %i.mw = load ptr, ptr %i.mu, align 8, !tbaa !377 ; 5 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i.i.i80, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.i67, i64 32 ; 3 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !378 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.mw, %i.my
  br i1 %.not6.i.i.i.i.i.i.i.i81, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88, label %.lr.ph.i.i.i.i.i.i.i.i82

.lr.ph.i.i.i.i.i.i.i.i82:                         ; preds = %bb.ae, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84
  %.07.i.i.i.i.i.i.i.i83 = phi ptr [ %i.mz, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84 ], [ %i.my, %bb.ae ] ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i83, i64 -24 ; 4 uses
  %i.na = load i8, ptr %i.mz, align 8
  %i.nb = trunc i8 %i.na to i1
  br i1 %i.nb, label %bb.af, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i82
  %i.nc = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i83, i64 -8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !80
  %i.ne = load i64, ptr %i.mz, align 8
  %i.nf = and i64 %i.ne, -2
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nf) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84: ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i82
  %.not.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.mw, %i.mz
  br i1 %.not.i.i.i.i.i.i.i.i85, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86, label %.lr.ph.i.i.i.i.i.i.i.i82

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i84
  %.pre.i.i.i.i.i87 = load ptr, ptr %i.mu, align 8, !tbaa !377
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86, %bb.ae
  %i.ng = phi ptr [ %.pre.i.i.i.i.i87, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i86 ], [ %i.mw, %bb.ae ] ; 2 uses
  store ptr %i.mw, ptr %i.mx, align 8, !tbaa !378
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.i67, i64 40
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !379
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %i.ng to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nl) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i88, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i79
  %i.nm = load <2 x ptr>, ptr %i.mv, align 8, !tbaa !379
  store <2 x ptr> %i.nm, ptr %i.mu, align 8, !tbaa !379
  %i.nn = getelementptr inbounds nuw i8, ptr %.05.i66, i64 40
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !379
  %i.np = getelementptr inbounds nuw i8, ptr %.0.i67, i64 40
  store ptr %i.no, ptr %i.np, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mv, i8 0, i64 24, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i67, i64 48
  %i.nr = getelementptr inbounds nuw i8, ptr %.05.i66, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.nq, ptr noundef nonnull align 8 dereferenceable(44) %i.nr, i64 44, i1 false)
  %i.ns = getelementptr inbounds nuw i8, ptr %.0.i67, i64 96 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.05.i66, i64 96 ; 2 uses
  %i.nu = load ptr, ptr %i.ns, align 8, !tbaa !374 ; 5 uses
  %.not.i.i.i7.i.i90 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i7.i.i90, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89
  %i.nv = getelementptr inbounds nuw i8, ptr %.0.i67, i64 104 ; 3 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !375 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i91 = icmp eq ptr %i.nu, %i.nw
  br i1 %.not.i1.i.i.i.i.i.i.i91, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97, label %.lr.ph.i.i.i.i.i.i.i92

.lr.ph.i.i.i.i.i.i.i92:                           ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i.i92
  %.0.i2.i.i.i.i.i.i.i93 = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i.i.i92 ], [ %i.nw, %bb.ag ]
  %i.nx = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i.i.i93, i64 -96 ; 3 uses
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.nx) #44, !inline_history !13
  %.not.i.i.i.i.i.i8.i.i94 = icmp eq ptr %i.nu, %i.nx
  br i1 %.not.i.i.i.i.i.i8.i.i94, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95, label %.lr.ph.i.i.i.i.i.i.i92

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95: ; preds = %.lr.ph.i.i.i.i.i.i.i92
  %.pre.i.i.i9.i.i96 = load ptr, ptr %i.ns, align 8, !tbaa !374
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95, %bb.ag
  %i.ny = phi ptr [ %.pre.i.i.i9.i.i96, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i95 ], [ %i.nu, %bb.ag ] ; 2 uses
  store ptr %i.nu, ptr %i.nv, align 8, !tbaa !375
  %i.nz = getelementptr inbounds nuw i8, ptr %.0.i67, i64 112
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !376
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.ny to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.od) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i8 0, i64 16, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i97, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i89
  %i.oe = load <2 x ptr>, ptr %i.nt, align 8, !tbaa !376
  store <2 x ptr> %i.oe, ptr %i.ns, align 8, !tbaa !376
  %i.of = getelementptr inbounds nuw i8, ptr %.05.i66, i64 112
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !376
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.i67, i64 112
  store ptr %i.og, ptr %i.oh, align 8, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nt, i8 0, i64 24, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i67, i64 120
  %i.oj = getelementptr inbounds nuw i8, ptr %.05.i66, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.oi, ptr noundef nonnull align 8 dereferenceable(136) %i.oj, i64 136, i1 false)
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i67, i64 256 ; 3 uses
  %i.ol = load i8, ptr %i.ok, align 8
  %i.om = trunc i8 %i.ol to i1
  br i1 %i.om, label %bb.ah, label %_ZN3tev9ImageDataaSEOS0_.exit.i99

bb.ah:                                            ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98
  %i.on = getelementptr inbounds nuw i8, ptr %.0.i67, i64 272
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !80
  %i.op = load i64, ptr %i.ok, align 8
  %i.oq = and i64 %i.op, -2
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.oq) #49
  br label %_ZN3tev9ImageDataaSEOS0_.exit.i99

_ZN3tev9ImageDataaSEOS0_.exit.i99:                ; preds = %bb.ah, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i98
  %i.or = getelementptr inbounds nuw i8, ptr %.05.i66, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ok, ptr noundef nonnull align 8 dereferenceable(24) %i.or, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.or, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %.05.i66, i64 257
  store i8 0, ptr %i.os, align 1, !tbaa !80
  %i.ot = getelementptr inbounds i8, ptr %.05.i66, i64 -280
  %i.ou = getelementptr inbounds i8, ptr %.05.i66, i64 -24
  %i.ov = load i8, ptr %i.jz, align 16            ; 2 uses
  %i.ow = trunc i8 %i.ov to i1                    ; 2 uses
  %i.ox = load ptr, ptr %i.ka, align 16
  %i.oy = select i1 %i.ow, ptr %i.ox, ptr %i.kb
  %i.oz = load i64, ptr %i.kc, align 8
  %i.pa = lshr i8 %i.ov, 1
  %i.pb = zext nneg i8 %i.pa to i64
  %i.pc = select i1 %i.ow, i64 %i.oz, i64 %i.pb   ; 2 uses
  %i.pd = load i8, ptr %i.ou, align 8             ; 2 uses
  %i.pe = trunc i8 %i.pd to i1                    ; 2 uses
  %i.pf = getelementptr inbounds i8, ptr %.05.i66, i64 -8
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds i8, ptr %.05.i66, i64 -23
  %i.pi = select i1 %i.pe, ptr %i.pg, ptr %i.ph
  %i.pj = getelementptr inbounds i8, ptr %.05.i66, i64 -16
  %i.pk = load i64, ptr %i.pj, align 8
  %i.pl = lshr i8 %i.pd, 1
  %i.pm = zext nneg i8 %i.pl to i64
  %i.pn = select i1 %i.pe, i64 %i.pk, i64 %i.pm   ; 2 uses
  %.sroa.speculated.i.i.i.i15.i = call i64 @llvm.umin.i64(i64 %i.pn, i64 %i.pc)
  %i.po = call noundef i32 @memcmp(ptr noundef %i.oy, ptr noundef %i.pi, i64 noundef %.sroa.speculated.i.i.i.i15.i) #44 ; 2 uses
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.ai, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i"

bb.ai:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i99
  %i.pq = icmp ult i64 %i.pc, %i.pn
  br i1 %i.pq, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i": ; preds = %bb.ai, %_ZN3tev9ImageDataaSEOS0_.exit.i99
  %.0.i.i.i.i16.i = phi i32 [ %i.po, %_ZN3tev9ImageDataaSEOS0_.exit.i99 ], [ -2147483648, %bb.ai ]
  %i.pr = icmp slt i32 %.0.i.i.i.i16.i, 0
  br i1 %i.pr, label %bb.z, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i", !llvm.loop !2700

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.i", %bb.ai
  %i.ps = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.05.i66, ptr noundef nonnull align 8 dereferenceable(280) %12) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %12) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit17.thread.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i61", %bb.y
  %storemerge.i63 = getelementptr inbounds nuw i8, ptr %storemerge15.i58, i64 280 ; 2 uses
  %.not.i64 = icmp eq ptr %storemerge.i63, %.024.ph
  br i1 %.not.i64, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %bb.x, !llvm.loop !2701

bb.aj:                                            ; preds = %bb.g
  %i.pt = icmp eq i64 %.046, 0
  br i1 %i.pt, label %bb.ak, label %bb.bu

bb.ak:                                            ; preds = %bb.aj
  %i.pu = add nsw i64 %i.be, -2
  %i.pv = lshr i64 %i.pu, 1                       ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.pz = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.qd = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.qf = getelementptr inbounds nuw i8, ptr %4, i64 257
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 264
  br label %bb.al

bb.al:                                            ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", %bb.ak
  %.01.i.i.i = phi i64 [ %i.pv, %bb.ak ], [ %i.vm, %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit" ] ; 4 uses
  %i.qh = getelementptr inbounds nuw [280 x i8], ptr %.021, i64 %.01.i.i.i ; 14 uses
  %i.qi = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.qj = or disjoint i64 %i.qi, 1                ; 4 uses
  %i.qk = getelementptr inbounds [280 x i8], ptr %.021, i64 %i.qj ; 12 uses
  %i.ql = add nsw i64 %i.qi, 2                    ; 2 uses
  %i.qm = icmp slt i64 %i.ql, %i.be
  br i1 %i.qm, label %bb.am, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

bb.am:                                            ; preds = %bb.al
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 280
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 256
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 536
  %i.qq = load i8, ptr %i.qo, align 8             ; 2 uses
  %i.qr = trunc i8 %i.qq to i1                    ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qk, i64 272
  %i.qt = load ptr, ptr %i.qs, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qk, i64 257
  %i.qv = select i1 %i.qr, ptr %i.qt, ptr %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qk, i64 264
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = lshr i8 %i.qq, 1
  %i.qz = zext nneg i8 %i.qy to i64
  %i.ra = select i1 %i.qr, i64 %i.qx, i64 %i.qz   ; 2 uses
  %i.rb = load i8, ptr %i.qp, align 8             ; 2 uses
  %i.rc = trunc i8 %i.rb to i1                    ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qk, i64 552
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qk, i64 537
  %i.rg = select i1 %i.rc, ptr %i.re, ptr %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qk, i64 544
  %i.ri = load i64, ptr %i.rh, align 8
  %i.rj = lshr i8 %i.rb, 1
  %i.rk = zext nneg i8 %i.rj to i64
  %i.rl = select i1 %i.rc, i64 %i.ri, i64 %i.rk   ; 2 uses
  %.sroa.speculated.i.i.i.i.i143 = call i64 @llvm.umin.i64(i64 %i.rl, i64 %i.ra)
  %i.rm = call noundef i32 @memcmp(ptr noundef %i.qv, ptr noundef %i.rg, i64 noundef %.sroa.speculated.i.i.i.i.i143) #44 ; 2 uses
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %bb.an, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144"

bb.an:                                            ; preds = %bb.am
  %i.ro = icmp ult i64 %i.ra, %i.rl
  br i1 %i.ro, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144": ; preds = %bb.am
  %i.rp = icmp slt i32 %i.rm, 0
  br i1 %i.rp, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144", %bb.an
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144", %bb.an, %bb.al
  %.010.i = phi ptr [ %i.qn, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i" ], [ %i.qk, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144" ], [ %i.qk, %bb.al ], [ %i.qk, %bb.an ] ; 5 uses
  %.0.i140 = phi i64 [ %i.ql, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread15.i" ], [ %i.qj, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i144" ], [ %i.qj, %bb.al ], [ %i.qj, %bb.an ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.010.i, i64 256
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qh, i64 256 ; 3 uses
  %i.rs = load i8, ptr %i.rq, align 8             ; 2 uses
  %i.rt = trunc i8 %i.rs to i1                    ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.010.i, i64 272
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %.010.i, i64 257
  %i.rx = select i1 %i.rt, ptr %i.rv, ptr %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %.010.i, i64 264
  %i.rz = load i64, ptr %i.ry, align 8
  %i.sa = lshr i8 %i.rs, 1
  %i.sb = zext nneg i8 %i.sa to i64
  %i.sc = select i1 %i.rt, i64 %i.rz, i64 %i.sb   ; 2 uses
  %i.sd = load i8, ptr %i.rr, align 8             ; 2 uses
  %i.se = trunc i8 %i.sd to i1                    ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qh, i64 272
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qh, i64 257
  %i.si = select i1 %i.se, ptr %i.sg, ptr %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qh, i64 264
  %i.sk = load i64, ptr %i.sj, align 8
  %i.sl = lshr i8 %i.sd, 1
  %i.sm = zext nneg i8 %i.sl to i64
  %i.sn = select i1 %i.se, i64 %i.sk, i64 %i.sm   ; 2 uses
  %.sroa.speculated.i.i.i.i28.i = call i64 @llvm.umin.i64(i64 %i.sn, i64 %i.sc)
  %i.so = call noundef i32 @memcmp(ptr noundef %i.rx, ptr noundef %i.si, i64 noundef %.sroa.speculated.i.i.i.i28.i) #44 ; 2 uses
  %i.sp = icmp eq i32 %i.so, 0
  br i1 %i.sp, label %bb.ao, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i"

bb.ao:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"
  %i.sq = icmp ult i64 %i.sc, %i.sn
  br i1 %i.sq, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i139"
  %i.sr = icmp slt i32 %i.so, 0
  br i1 %i.sr, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i", %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.ss = load <2 x ptr>, ptr %i.qh, align 8, !tbaa !361
  store <2 x ptr> %i.ss, ptr %4, align 16, !tbaa !361
  %i.st = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !361
  store ptr %i.su, ptr %i.pw, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.qh, i8 0, i64 24, i1 false)
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qh, i64 24 ; 2 uses
  %i.sw = load <2 x ptr>, ptr %i.sv, align 8, !tbaa !379
  store <2 x ptr> %i.sw, ptr %i.px, align 8, !tbaa !379
  %i.sx = getelementptr inbounds nuw i8, ptr %i.qh, i64 40
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !379
  store ptr %i.sy, ptr %i.py, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sv, i8 0, i64 24, i1 false)
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.pz, ptr noundef nonnull align 8 dereferenceable(44) %i.sz, i64 44, i1 false)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.qh, i64 96 ; 2 uses
  %i.tb = load <2 x ptr>, ptr %i.ta, align 8, !tbaa !376
  store <2 x ptr> %i.tb, ptr %i.qa, align 16, !tbaa !376
  %i.tc = getelementptr inbounds nuw i8, ptr %i.qh, i64 112
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !376
  store ptr %i.td, ptr %i.qb, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ta, i8 0, i64 24, i1 false)
  %i.te = getelementptr inbounds nuw i8, ptr %i.qh, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.qc, ptr noundef nonnull align 8 dereferenceable(136) %i.te, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.qd, ptr noundef nonnull align 8 dereferenceable(24) %i.rr, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rr, i8 0, i64 24, i1 false)
  %i.tf = load i8, ptr %i.qd, align 16            ; 2 uses
  %i.tg = trunc i8 %i.tf to i1                    ; 2 uses
  %i.th = load ptr, ptr %i.qe, align 16
  %i.ti = select i1 %i.tg, ptr %i.th, ptr %i.qf
  %i.tj = load i64, ptr %i.qg, align 8
  %i.tk = lshr i8 %i.tf, 1
  %i.tl = zext nneg i8 %i.tk to i64
  %i.tm = select i1 %i.tg, i64 %i.tj, i64 %i.tl   ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i"
  %.013.i = phi ptr [ %i.qh, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i" ], [ %.111.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i" ]
  %.111.i = phi ptr [ %.010.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i" ], [ %.212.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i" ] ; 3 uses
  %.1.i141 = phi i64 [ %.0.i140, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.thread.i" ], [ %.2.i142, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i" ] ; 2 uses
  %i.tn = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.013.i, ptr noundef nonnull align 8 dereferenceable(280) %.111.i) #44 ; 0 uses
  %i.to = icmp slt i64 %i.pv, %.1.i141
  br i1 %i.to, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.thread.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.tp = shl nsw i64 %.1.i141, 1                 ; 2 uses
  %i.tq = or disjoint i64 %i.tp, 1                ; 4 uses
  %i.tr = getelementptr inbounds [280 x i8], ptr %.021, i64 %i.tq ; 12 uses
  %i.ts = add nsw i64 %i.tp, 2                    ; 2 uses
  %i.tt = icmp slt i64 %i.ts, %i.be
  br i1 %i.tt, label %bb.ar, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i"

bb.ar:                                            ; preds = %bb.aq
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 280
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 256
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 536
  %i.tx = load i8, ptr %i.tv, align 8             ; 2 uses
  %i.ty = trunc i8 %i.tx to i1                    ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tr, i64 272
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tr, i64 257
  %i.uc = select i1 %i.ty, ptr %i.ua, ptr %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tr, i64 264
  %i.ue = load i64, ptr %i.ud, align 8
  %i.uf = lshr i8 %i.tx, 1
  %i.ug = zext nneg i8 %i.uf to i64
  %i.uh = select i1 %i.ty, i64 %i.ue, i64 %i.ug   ; 2 uses
  %i.ui = load i8, ptr %i.tw, align 8             ; 2 uses
  %i.uj = trunc i8 %i.ui to i1                    ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tr, i64 552
  %i.ul = load ptr, ptr %i.uk, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.tr, i64 537
  %i.un = select i1 %i.uj, ptr %i.ul, ptr %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tr, i64 544
  %i.up = load i64, ptr %i.uo, align 8
  %i.uq = lshr i8 %i.ui, 1
  %i.ur = zext nneg i8 %i.uq to i64
  %i.us = select i1 %i.uj, i64 %i.up, i64 %i.ur   ; 2 uses
  %.sroa.speculated.i.i.i.i31.i = call i64 @llvm.umin.i64(i64 %i.us, i64 %i.uh)
  %i.ut = call noundef i32 @memcmp(ptr noundef %i.uc, ptr noundef %i.un, i64 noundef %.sroa.speculated.i.i.i.i31.i) #44 ; 2 uses
  %i.uu = icmp eq i32 %i.ut, 0
  br i1 %i.uu, label %bb.as, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i"

bb.as:                                            ; preds = %bb.ar
  %i.uv = icmp ult i64 %i.uh, %i.us
  br i1 %i.uv, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread23.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i": ; preds = %bb.ar
  %i.uw = icmp slt i32 %i.ut, 0
  br i1 %i.uw, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread23.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread23.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i", %bb.as
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread23.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i", %bb.as, %bb.aq
  %.212.i = phi ptr [ %i.tu, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread23.i" ], [ %i.tr, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i" ], [ %i.tr, %bb.aq ], [ %i.tr, %bb.as ] ; 5 uses
  %.2.i142 = phi i64 [ %i.ts, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread23.i" ], [ %i.tq, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.i" ], [ %i.tq, %bb.aq ], [ %i.tq, %bb.as ]
  %i.ux = getelementptr inbounds nuw i8, ptr %.212.i, i64 256
  %i.uy = load i8, ptr %i.ux, align 8             ; 2 uses
  %i.uz = trunc i8 %i.uy to i1                    ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.212.i, i64 272
  %i.vb = load ptr, ptr %i.va, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %.212.i, i64 257
  %i.vd = select i1 %i.uz, ptr %i.vb, ptr %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %.212.i, i64 264
  %i.vf = load i64, ptr %i.ve, align 8
  %i.vg = lshr i8 %i.uy, 1
  %i.vh = zext nneg i8 %i.vg to i64
  %i.vi = select i1 %i.uz, i64 %i.vf, i64 %i.vh   ; 2 uses
  %.sroa.speculated.i.i.i.i34.i = call i64 @llvm.umin.i64(i64 %i.tm, i64 %i.vi)
  %i.vj = call noundef i32 @memcmp(ptr noundef %i.vd, ptr noundef %i.ti, i64 noundef %.sroa.speculated.i.i.i.i34.i) #44 ; 2 uses
  %i.vk = icmp eq i32 %i.vj, 0
  %15 = icmp ult i64 %i.vi, %i.tm
  %or.cond.i142 = select i1 %i.vk, i1 %15, i1 false
  %16 = icmp slt i32 %i.vj, 0
  %or.cond38.i = or i1 %16, %or.cond.i142
  br i1 %or.cond38.i, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.thread.i", label %bb.ap, !llvm.loop !2702

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit33.thread.i", %bb.ap
  %i.vl = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.111.i, ptr noundef nonnull align 8 dereferenceable(280) %4) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit"

"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit": ; preds = %bb.ao, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit30.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit36.thread.i"
  %i.vm = add nsw i64 %.01.i.i.i, -1
  %.not.i.i.i108 = icmp eq i64 %.01.i.i.i, 0
  br i1 %.not.i.i.i108, label %.lr.ph.i.i.i, label %bb.al, !llvm.loop !2703

.lr.ph.i.i.i:                                     ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit"
  %i.vn = udiv exact i64 %i.bd, 280
  %i.vo = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.vp = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.vq = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.vr = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.vt = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.vu = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.vv = getelementptr inbounds nuw i8, ptr %.021, i64 48
  %i.vw = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.vx = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.vz = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.wa = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.wb = getelementptr inbounds nuw i8, ptr %.021, i64 120
  %i.wc = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.wd = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.wf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.wg = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.wh = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.wi = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.wj = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.wk = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.wl = getelementptr inbounds nuw i8, ptr %10, i64 256 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %10, i64 272
  %i.wn = getelementptr inbounds nuw i8, ptr %10, i64 257
  %i.wo = getelementptr inbounds nuw i8, ptr %10, i64 264
  br label %bb.at

bb.at:                                            ; preds = %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i", %.lr.ph.i.i.i
  %.020.i.i.i = phi i64 [ %i.vn, %.lr.ph.i.i.i ], [ %i.ahj, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i" ] ; 4 uses
  %.01319.i.i.i = phi ptr [ %.024.ph, %.lr.ph.i.i.i ], [ %i.abm, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  %i.wp = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.wp, ptr %11, align 16, !tbaa !361
  %i.wq = load ptr, ptr %i.vp, align 8, !tbaa !361
  store ptr %i.wq, ptr %i.vo, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.wr = load <2 x ptr>, ptr %i.vr, align 8, !tbaa !379
  store <2 x ptr> %i.wr, ptr %i.vq, align 8, !tbaa !379
  %i.ws = load ptr, ptr %i.vt, align 8, !tbaa !379
  store ptr %i.ws, ptr %i.vs, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vr, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.vu, ptr noundef nonnull align 8 dereferenceable(44) %i.vv, i64 44, i1 false)
  %i.wt = load <2 x ptr>, ptr %i.vx, align 8, !tbaa !376
  store <2 x ptr> %i.wt, ptr %i.vw, align 16, !tbaa !376
  %i.wu = load ptr, ptr %i.vz, align 8, !tbaa !376
  store ptr %i.wu, ptr %i.vy, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vx, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.wa, ptr noundef nonnull align 8 dereferenceable(136) %i.wb, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.wc, ptr noundef nonnull align 8 dereferenceable(24) %i.wd, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wd, i8 0, i64 24, i1 false)
  %i.wv = add nsw i64 %.020.i.i.i, -2
  %i.ww = lshr i64 %i.wv, 1
  br label %bb.au

bb.au:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit33.i.i.i, %bb.at
  %.04.i.i.i.i.i = phi ptr [ %.021, %bb.at ], [ %.15.i.i.i.i.i, %_ZN3tev9ImageDataaSEOS0_.exit33.i.i.i ] ; 20 uses
  %.0.i.i.i.i.i = phi i64 [ 0, %bb.at ], [ %.1.i.i.i.i.i, %_ZN3tev9ImageDataaSEOS0_.exit33.i.i.i ] ; 2 uses
  %i.wx = getelementptr [280 x i8], ptr %.04.i.i.i.i.i, i64 %.0.i.i.i.i.i ; 10 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 280    ; 3 uses
  %i.wz = shl nsw i64 %.0.i.i.i.i.i, 1            ; 2 uses
  %i.xa = or disjoint i64 %i.wz, 1                ; 3 uses
  %i.xb = add nsw i64 %i.wz, 2                    ; 2 uses
  %i.xc = icmp slt i64 %i.xb, %.020.i.i.i
  br i1 %i.xc, label %bb.av, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i.i.i.i.i"

bb.av:                                            ; preds = %bb.au
  %i.xd = getelementptr i8, ptr %i.wx, i64 536
  %i.xe = getelementptr i8, ptr %i.wx, i64 816
  %i.xf = load i8, ptr %i.xd, align 8             ; 2 uses
  %i.xg = trunc i8 %i.xf to i1                    ; 2 uses
  %i.xh = getelementptr i8, ptr %i.wx, i64 552
  %i.xi = load ptr, ptr %i.xh, align 8
  %i.xj = getelementptr i8, ptr %i.wx, i64 537
  %i.xk = select i1 %i.xg, ptr %i.xi, ptr %i.xj
  %i.xl = getelementptr i8, ptr %i.wx, i64 544
  %i.xm = load i64, ptr %i.xl, align 8
  %i.xn = lshr i8 %i.xf, 1
  %i.xo = zext nneg i8 %i.xn to i64
  %i.xp = select i1 %i.xg, i64 %i.xm, i64 %i.xo   ; 2 uses
  %i.xq = load i8, ptr %i.xe, align 8             ; 2 uses
  %i.xr = trunc i8 %i.xq to i1                    ; 2 uses
  %i.xs = getelementptr i8, ptr %i.wx, i64 832
  %i.xt = load ptr, ptr %i.xs, align 8
  %i.xu = getelementptr i8, ptr %i.wx, i64 817
  %i.xv = select i1 %i.xr, ptr %i.xt, ptr %i.xu
  %i.xw = getelementptr i8, ptr %i.wx, i64 824
  %i.xx = load i64, ptr %i.xw, align 8
  %i.xy = lshr i8 %i.xq, 1
  %i.xz = zext nneg i8 %i.xy to i64
  %i.ya = select i1 %i.xr, i64 %i.xx, i64 %i.xz   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ya, i64 %i.xp)
  %i.yb = call noundef i32 @memcmp(ptr noundef %i.xk, ptr noundef %i.xv, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #44 ; 2 uses
  %i.yc = icmp eq i32 %i.yb, 0
  br i1 %i.yc, label %bb.aw, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i.i.i.i.i"

bb.aw:                                            ; preds = %bb.av
  %i.yd = icmp ult i64 %i.xp, %i.ya
  br i1 %i.yd, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i.i.i.i.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i.i.i.i.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i.i.i.i.i": ; preds = %bb.av
  %i.ye = icmp slt i32 %i.yb, 0
  br i1 %i.ye, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i.i.i.i.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i.i.i.i.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i.i.i.i.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i.i.i.i.i", %bb.aw
  %i.yf = getelementptr i8, ptr %i.wx, i64 560
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i.i.i.i.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i.i.i.i.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i.i.i.i.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i.i.i.i.i", %bb.aw, %bb.au
  %.15.i.i.i.i.i = phi ptr [ %i.yf, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i.i.i.i.i" ], [ %i.wy, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i.i.i.i.i" ], [ %i.wy, %bb.au ], [ %i.wy, %bb.aw ] ; 25 uses
  %.1.i.i.i.i.i = phi i64 [ %i.xb, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread7.i.i.i.i.i" ], [ %i.xa, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i.i.i.i.i" ], [ %i.xa, %bb.au ], [ %i.xa, %bb.aw ] ; 2 uses
  %i.yg = load ptr, ptr %.04.i.i.i.i.i, align 8, !tbaa !356 ; 5 uses
  %.not.i.i34.i.i.i = icmp eq ptr %i.yg, null
  br i1 %.not.i.i34.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit45.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i.i.i.i.i"
  %i.yh = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 8 ; 2 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !357 ; 2 uses
  %.not6.i.i.i.i.i35.i.i.i = icmp eq ptr %i.yg, %i.yi
  br i1 %.not6.i.i.i.i.i35.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i44.i.i.i, label %.lr.ph.i.i.i.i.i36.i.i.i

.lr.ph.i.i.i.i.i36.i.i.i:                         ; preds = %bb.ax, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i40.i.i.i
  %.07.i.i.i.i.i37.i.i.i = phi ptr [ %i.yj, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i40.i.i.i ], [ %i.yi, %bb.ax ] ; 3 uses
  %i.yj = getelementptr inbounds i8, ptr %.07.i.i.i.i.i37.i.i.i, i64 -72 ; 4 uses
  %i.yk = getelementptr inbounds i8, ptr %.07.i.i.i.i.i37.i.i.i, i64 -24
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !360 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i38.i.i.i = icmp eq ptr %i.yl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i38.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i39.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i36.i.i.i
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = atomicrmw add ptr %i.ym, i64 -1 acq_rel, align 8
  %i.yo = icmp eq i64 %i.yn, 0
  br i1 %i.yo, label %bb.az, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i39.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.yp = load ptr, ptr %i.yl, align 8, !tbaa !89
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8
  call void %i.yr(ptr noundef nonnull align 8 dereferenceable(24) %i.yl) #44, !inline_history !2704
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yl) #44
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i39.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i39.i.i.i: ; preds = %bb.az, %bb.ay, %.lr.ph.i.i.i.i.i36.i.i.i
  %i.ys = load i8, ptr %i.yj, align 8
  %i.yt = trunc i8 %i.ys to i1
  br i1 %i.yt, label %bb.ba, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i40.i.i.i

bb.ba:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i39.i.i.i
  %i.yu = getelementptr inbounds i8, ptr %.07.i.i.i.i.i37.i.i.i, i64 -56
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !80
  %i.yw = load i64, ptr %i.yj, align 8
  %i.yx = and i64 %i.yw, -2
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.yx) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i40.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i40.i.i.i: ; preds = %bb.ba, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i39.i.i.i
  %.not.i.i.i.i.i41.i.i.i = icmp eq ptr %i.yg, %i.yj
  br i1 %.not.i.i.i.i.i41.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i42.i.i.i, label %.lr.ph.i.i.i.i.i36.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i42.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i40.i.i.i
  %.pre.i.i43.i.i.i = load ptr, ptr %.04.i.i.i.i.i, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i44.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i44.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i42.i.i.i, %bb.ax
  %i.yy = phi ptr [ %.pre.i.i43.i.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i42.i.i.i ], [ %i.yg, %bb.ax ] ; 2 uses
  store ptr %i.yg, ptr %i.yh, align 8, !tbaa !357
  %i.yz = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 16
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !361
  %i.zb = ptrtoint ptr %i.za to i64
  %i.zc = ptrtoint ptr %i.yy to i64
  %i.zd = sub i64 %i.zb, %i.zc
  call void @_ZdlPvm(ptr noundef %i.yy, i64 noundef %i.zd) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.04.i.i.i.i.i, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit45.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit45.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i44.i.i.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i.i.i.i.i"
  %i.ze = load <2 x ptr>, ptr %.15.i.i.i.i.i, align 8, !tbaa !361
  store <2 x ptr> %i.ze, ptr %.04.i.i.i.i.i, align 8, !tbaa !361
  %i.zf = getelementptr inbounds nuw i8, ptr %.15.i.i.i.i.i, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !361
  %i.zh = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 16
  store ptr %i.zg, ptr %i.zh, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.15.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.zi = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 24 ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.15.i.i.i.i.i, i64 24 ; 4 uses
  %i.zk = load ptr, ptr %i.zi, align 8, !tbaa !377 ; 5 uses
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a
  %i.adw = load ptr, ptr %i.ads, align 8, !tbaa !89
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  %i.ady = load ptr, ptr %i.adx, align 8
  call void %i.ady(ptr noundef nonnull align 8 dereferenceable(24) %i.ads) #44, !inline_history !2704
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ads) #44
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %.lr.ph.i.i.i.i.i.i.i.i103
  %i.adz = load i8, ptr %i.adq, align 8
  %i.aea = trunc i8 %i.adz to i1
  br i1 %i.aea, label %bb.bn, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aeb = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i104, i64 -56
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !80
  %i.aed = load i64, ptr %i.adq, align 8
  %i.aee = and i64 %i.aed, -2
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aee) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bn, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i105 = icmp eq ptr %i.adn, %i.adq
  br i1 %.not.i.i.i.i.i.i.i.i105, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i103

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i106 = load ptr, ptr %.07.i.i.i.i.i, align 8, !tbaa !356
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i, %bb.bk
  %i.aef = phi ptr [ %.pre.i.i.i.i.i106, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i ], [ %i.adn, %bb.bk ] ; 2 uses
  store ptr %i.adn, ptr %i.ado, align 8, !tbaa !357
  %i.aeg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !361
  %i.aei = ptrtoint ptr %i.aeh to i64
  %i.aej = ptrtoint ptr %i.aef to i64
  %i.aek = sub i64 %i.aei, %i.aej
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aek) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.07.i.i.i.i.i, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i, %bb.bj
  %i.ael = load <2 x ptr>, ptr %.06.i.i.i.i.i, align 8, !tbaa !361
  store <2 x ptr> %i.ael, ptr %.07.i.i.i.i.i, align 8, !tbaa !361
  %i.aem = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !361
  %i.aeo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  store ptr %i.aen, ptr %i.aeo, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.06.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.aep = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 24 ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.aer = load ptr, ptr %i.aep, align 8, !tbaa !377 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aer, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i
  %i.aes = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !378 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aer, %i.aet
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bo, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aeu, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aet, %bb.bo ] ; 2 uses
  %i.aeu = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.aev = load i8, ptr %i.aeu, align 8
  %i.aew = trunc i8 %i.aev to i1
  br i1 %i.aew, label %bb.bp, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aex = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !80
  %i.aez = load i64, ptr %i.aeu, align 8
  %i.afa = and i64 %i.aez, -2
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afa) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i107 = icmp eq ptr %i.aer, %i.aeu
  br i1 %.not.i.i.i.i.i.i.i.i.i.i107, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.aep, align 8, !tbaa !377
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, %bb.bo
  %i.afb = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i ], [ %i.aer, %bb.bo ] ; 2 uses
  store ptr %i.aer, ptr %i.aes, align 8, !tbaa !378
  %i.afc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 40
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !379
  %i.afe = ptrtoint ptr %i.afd to i64
  %i.aff = ptrtoint ptr %i.afb to i64
  %i.afg = sub i64 %i.afe, %i.aff
  call void @_ZdlPvm(ptr noundef %i.afb, i64 noundef %i.afg) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aep, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i.i.i
  %i.afh = load <2 x ptr>, ptr %i.aeq, align 8, !tbaa !379
  store <2 x ptr> %i.afh, ptr %i.aep, align 8, !tbaa !379
  %i.afi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !379
  %i.afk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 40
  store ptr %i.afj, ptr %i.afk, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeq, i8 0, i64 24, i1 false)
  %i.afl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 48
  %i.afm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.afl, ptr noundef nonnull align 8 dereferenceable(44) %i.afm, i64 44, i1 false)
  %i.afn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 96 ; 4 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 96 ; 2 uses
  %i.afp = load ptr, ptr %i.afn, align 8, !tbaa !374 ; 5 uses
  %.not.i.i.i7.i.i.i.i = icmp eq ptr %i.afp, null
  br i1 %.not.i.i.i7.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i
  %i.afq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 104 ; 2 uses
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !375 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afp, %i.afr
  br i1 %.not.i1.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bq, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.0.i2.i.i.i.i.i.i.i.i.i = phi ptr [ %i.afs, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.afr, %bb.bq ]
  %i.afs = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i.i.i.i.i, i64 -96 ; 3 uses
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.afs) #44, !inline_history !13
  %.not.i.i.i.i.i.i8.i.i.i.i = icmp eq ptr %i.afp, %i.afs
  br i1 %.not.i.i.i.i.i.i8.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i9.i.i.i.i = load ptr, ptr %i.afn, align 8, !tbaa !374
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i, %bb.bq
  %i.aft = phi ptr [ %.pre.i.i.i9.i.i.i.i, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i ], [ %i.afp, %bb.bq ] ; 2 uses
  store ptr %i.afp, ptr %i.afq, align 8, !tbaa !375
  %i.afu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 112
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !376
  %i.afw = ptrtoint ptr %i.afv to i64
  %i.afx = ptrtoint ptr %i.aft to i64
  %i.afy = sub i64 %i.afw, %i.afx
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afy) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afn, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit.i.i.i.i
  %i.afz = load <2 x ptr>, ptr %i.afo, align 8, !tbaa !376
  store <2 x ptr> %i.afz, ptr %i.afn, align 8, !tbaa !376
  %i.aga = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 112
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !376
  %i.agc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 112
  store ptr %i.agb, ptr %i.agc, align 8, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afo, i8 0, i64 24, i1 false)
  %i.agd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 120
  %i.age = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.agd, ptr noundef nonnull align 8 dereferenceable(136) %i.age, i64 136, i1 false)
  %i.agf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 256 ; 3 uses
  %i.agg = load i8, ptr %i.agf, align 8
  %i.agh = trunc i8 %i.agg to i1
  br i1 %i.agh, label %bb.br, label %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i

bb.br:                                            ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i
  %i.agi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 272
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !80
  %i.agk = load i64, ptr %i.agf, align 8
  %i.agl = and i64 %i.agk, -2
  call void @_ZdlPvm(ptr noundef %i.agj, i64 noundef %i.agl) #49
  br label %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i

_ZN3tev9ImageDataaSEOS0_.exit.i.i.i:              ; preds = %bb.br, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit.i.i.i.i
  %i.agm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agf, ptr noundef nonnull align 8 dereferenceable(24) %i.agm, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.agm, align 8
  %i.agn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 257
  store i8 0, ptr %i.agn, align 1, !tbaa !80
  %i.ago = icmp eq i64 %.0.i16.i.i.i.i, 0
  br i1 %i.ago, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i", label %bb.bs

bb.bs:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i
  %i.agp = add nsw i64 %.0.i16.i.i.i.i, -1
  %i.agq = lshr i64 %i.agp, 1                     ; 2 uses
  %i.agr = getelementptr inbounds nuw [280 x i8], ptr %.021, i64 %i.agq ; 5 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 256
  %i.agt = load i8, ptr %i.ags, align 8           ; 2 uses
  %i.agu = trunc i8 %i.agt to i1                  ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agr, i64 272
  %i.agw = load ptr, ptr %i.agv, align 8
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agr, i64 257
  %i.agy = select i1 %i.agu, ptr %i.agw, ptr %i.agx
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agr, i64 264
  %i.aha = load i64, ptr %i.agz, align 8
  %i.ahb = lshr i8 %i.agt, 1
  %i.ahc = zext nneg i8 %i.ahb to i64
  %i.ahd = select i1 %i.agu, i64 %i.aha, i64 %i.ahc ; 2 uses
  %.sroa.speculated.i.i.i.i12.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.adm, i64 %i.ahd)
  %i.ahe = call noundef i32 @memcmp(ptr noundef %i.agy, ptr noundef %i.adi, i64 noundef %.sroa.speculated.i.i.i.i12.i.i.i.i.i) #44 ; 2 uses
  %i.ahf = icmp eq i32 %i.ahe, 0
  br i1 %i.ahf, label %bb.bt, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i"

bb.bt:                                            ; preds = %bb.bs
  %i.ahg = icmp ult i64 %i.ahd, %i.adm
  br i1 %i.ahg, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i": ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i13.i.i.i.i.i = phi i32 [ %i.ahe, %bb.bs ], [ -2147483648, %bb.bt ]
  %i.ahh = icmp slt i32 %.0.i.i.i.i13.i.i.i.i.i, 0
  br i1 %i.ahh, label %bb.bj, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i", !llvm.loop !2706

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.i.i.i.i.i", %bb.bt, %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i
  %i.ahi = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.06.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(280) %10) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %10) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  br label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit14.thread.i.i.i.i.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i15.i.i.i.i", %bb.bi, %bb.bg, %bb.bf
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %11) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %i.ahj = add nsw i64 %.020.i.i.i, -1
  %i.ahk = icmp sgt i64 %.020.i.i.i, 2
  br i1 %i.ahk, label %bb.at, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", !llvm.loop !2707

bb.bu:                                            ; preds = %bb.aj
  %i.ahl = add nsw i64 %.046, -1                  ; 4 uses
  %i.ahm = lshr i64 %i.be, 1
  %i.ahn = icmp samesign ugt i64 %i.bd, 35840
  %i.aho = getelementptr [280 x i8], ptr %.021, i64 %i.ahm ; 7 uses
  br i1 %i.ahn, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %.021, ptr noundef %i.aho, ptr noundef nonnull %i.au)
  %i.ahp = getelementptr inbounds nuw i8, ptr %.021, i64 280
  %i.ahq = getelementptr i8, ptr %i.aho, i64 -280 ; 2 uses
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef nonnull %i.ahp, ptr noundef %i.ahq, ptr noundef nonnull %i.av)
  %i.ahr = getelementptr inbounds nuw i8, ptr %.021, i64 560
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.aho, i64 280 ; 2 uses
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef nonnull %i.ahr, ptr noundef nonnull %i.ahs, ptr noundef nonnull %i.aw)
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %i.ahq, ptr noundef %i.aho, ptr noundef nonnull %i.ahs)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  %i.aht = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.aht, ptr %9, align 16, !tbaa !361
  %i.ahu = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !361
  store ptr %i.ahv, ptr %i.b, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.ahw = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.ahx = load <2 x ptr>, ptr %i.ahw, align 8, !tbaa !379
  store <2 x ptr> %i.ahx, ptr %i.c, align 8, !tbaa !379
  %i.ahy = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !379
  store ptr %i.ahz, ptr %i.d, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahw, i8 0, i64 24, i1 false)
  %i.aia = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.e, ptr noundef nonnull align 8 dereferenceable(44) %i.aia, i64 44, i1 false)
  %i.aib = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.aic = load <2 x ptr>, ptr %i.aib, align 8, !tbaa !376
  store <2 x ptr> %i.aic, ptr %i.f, align 16, !tbaa !376
  %i.aid = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !376
  store ptr %i.aie, ptr %i.g, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aib, i8 0, i64 24, i1 false)
  %i.aif = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %i.aif, i64 136, i1 false)
  %i.aig = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aig, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aig, i8 0, i64 24, i1 false)
  %i.aih = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.021, ptr noundef nonnull align 8 dereferenceable(280) %i.aho) #44 ; 0 uses
  %i.aii = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.aho, ptr noundef nonnull align 8 dereferenceable(280) %9) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %i.aho, ptr noundef %.021, ptr noundef nonnull %i.au)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.bb, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33", label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aij = getelementptr inbounds i8, ptr %.021, i64 -24
  %i.aik = getelementptr inbounds nuw i8, ptr %.021, i64 256
  %i.ail = load i8, ptr %i.aij, align 8           ; 2 uses
  %i.aim = trunc i8 %i.ail to i1                  ; 2 uses
  %i.ain = getelementptr inbounds i8, ptr %.021, i64 -8
  %i.aio = load ptr, ptr %i.ain, align 8
  %i.aip = getelementptr inbounds i8, ptr %.021, i64 -23
  %i.aiq = select i1 %i.aim, ptr %i.aio, ptr %i.aip
  %i.air = getelementptr inbounds i8, ptr %.021, i64 -16
  %i.ais = load i64, ptr %i.air, align 8
  %i.ait = lshr i8 %i.ail, 1
  %i.aiu = zext nneg i8 %i.ait to i64
  %i.aiv = select i1 %i.aim, i64 %i.ais, i64 %i.aiu ; 2 uses
  %i.aiw = load i8, ptr %i.aik, align 8           ; 2 uses
  %i.aix = trunc i8 %i.aiw to i1                  ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %.021, i64 272
  %i.aiz = load ptr, ptr %i.aiy, align 8
  %i.aja = getelementptr inbounds nuw i8, ptr %.021, i64 257
  %i.ajb = select i1 %i.aix, ptr %i.aiz, ptr %i.aja
  %i.ajc = getelementptr inbounds nuw i8, ptr %.021, i64 264
  %i.ajd = load i64, ptr %i.ajc, align 8
  %i.aje = lshr i8 %i.aiw, 1
  %i.ajf = zext nneg i8 %i.aje to i64
  %i.ajg = select i1 %i.aix, i64 %i.ajd, i64 %i.ajf ; 2 uses
  %.sroa.speculated.i.i.i.i109 = call i64 @llvm.umin.i64(i64 %i.ajg, i64 %i.aiv)
  %i.ajh = call noundef i32 @memcmp(ptr noundef %i.aiq, ptr noundef %i.ajb, i64 noundef %.sroa.speculated.i.i.i.i109) #44 ; 2 uses
  %i.aji = icmp eq i32 %i.ajh, 0
  br i1 %i.aji, label %bb.bz, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111"

bb.bz:                                            ; preds = %bb.by
  %i.ajj = icmp ult i64 %i.aiv, %i.ajg
  br i1 %i.ajj, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111": ; preds = %bb.by
  %i.ajk = icmp slt i32 %i.ajh, 0
  br i1 %i.ajk, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread": ; preds = %bb.bz, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111"
  %i.ajl = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.ajm = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.ajm, ptr %8, align 16, !tbaa !361
  %i.ajn = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !361
  store ptr %i.ajo, ptr %i.j, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.ajp = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.ajq = load <2 x ptr>, ptr %i.ajp, align 8, !tbaa !379
  store <2 x ptr> %i.ajq, ptr %i.k, align 8, !tbaa !379
  %i.ajr = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !379
  store ptr %i.ajs, ptr %i.l, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajp, i8 0, i64 24, i1 false)
  %i.ajt = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.m, ptr noundef nonnull align 8 dereferenceable(44) %i.ajt, i64 44, i1 false)
  %i.aju = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.ajv = load <2 x ptr>, ptr %i.aju, align 8, !tbaa !376
  store <2 x ptr> %i.ajv, ptr %i.n, align 16, !tbaa !376
  %i.ajw = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !376
  store ptr %i.ajx, ptr %i.o, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aju, i8 0, i64 24, i1 false)
  %i.ajy = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.p, ptr noundef nonnull align 8 dereferenceable(136) %i.ajy, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ajl, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajl, i8 0, i64 24, i1 false)
  %i.ajz = load i8, ptr %i.q, align 16            ; 2 uses
  %i.aka = trunc i8 %i.ajz to i1                  ; 2 uses
  %i.akb = load ptr, ptr %i.r, align 16
  %i.akc = select i1 %i.aka, ptr %i.akb, ptr %i.s ; 4 uses
  %i.akd = load i64, ptr %i.t, align 8
  %i.ake = lshr i8 %i.ajz, 1
  %i.akf = zext nneg i8 %i.ake to i64
  %i.akg = select i1 %i.aka, i64 %i.akd, i64 %i.akf ; 8 uses
  %i.akh = load i8, ptr %i.ax, align 8            ; 2 uses
  %i.aki = trunc i8 %i.akh to i1                  ; 2 uses
  %i.akj = load ptr, ptr %i.ay, align 8
  %i.akk = select i1 %i.aki, ptr %i.akj, ptr %i.az
  %i.akl = load i64, ptr %i.ba, align 8
  %i.akm = lshr i8 %i.akh, 1
  %i.akn = zext nneg i8 %i.akm to i64
  %i.ako = select i1 %i.aki, i64 %i.akl, i64 %i.akn ; 2 uses
  %.sroa.speculated.i.i.i.i.i112 = call i64 @llvm.umin.i64(i64 %i.ako, i64 %i.akg)
  %i.akp = call noundef i32 @memcmp(ptr noundef %i.akc, ptr noundef %i.akk, i64 noundef %.sroa.speculated.i.i.i.i.i112) #44 ; 2 uses
  %i.akq = icmp eq i32 %i.akp, 0
  br i1 %i.akq, label %bb.ca, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113"

bb.ca:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"
  %i.akr = icmp ult i64 %i.akg, %i.ako
  br i1 %i.akr, label %.preheader34.i.preheader, label %.preheader35.i.preheader.a

.preheader35.i.preheader.a:                       ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113", %bb.ca
  br label %.preheader35.i

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread"
  %i.aks = icmp slt i32 %i.akp, 0
  br i1 %i.aks, label %.preheader34.i.preheader, label %.preheader35.i.preheader.a

.preheader34.i.preheader:                         ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i113", %bb.ca
  br label %.preheader34.i.a

.preheader34.i.a:                                 ; preds = %.preheader34.i.preheader, %.preheader34.i.a
  %.018.i = phi ptr [ %i.akt, %.preheader34.i.a ], [ %.021, %.preheader34.i.preheader ] ; 5 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %.018.i, i64 280 ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.018.i, i64 536
  %i.akv = load i8, ptr %i.aku, align 8           ; 2 uses
  %i.akw = trunc i8 %i.akv to i1                  ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %.018.i, i64 552
  %i.aky = load ptr, ptr %i.akx, align 8
  %i.akz = getelementptr inbounds nuw i8, ptr %.018.i, i64 537
  %i.ala = select i1 %i.akw, ptr %i.aky, ptr %i.akz
  %i.alb = getelementptr inbounds nuw i8, ptr %.018.i, i64 544
  %i.alc = load i64, ptr %i.alb, align 8
  %i.ald = lshr i8 %i.akv, 1
  %i.ale = zext nneg i8 %i.ald to i64
  %i.alf = select i1 %i.akw, i64 %i.alc, i64 %i.ale ; 2 uses
  %.sroa.speculated.i.i.i.i10.i = call i64 @llvm.umin.i64(i64 %i.alf, i64 %i.akg)
  %i.alg = call noundef i32 @memcmp(ptr noundef %i.akc, ptr noundef %i.ala, i64 noundef %.sroa.speculated.i.i.i.i10.i) #44 ; 2 uses
  %i.alh = icmp eq i32 %i.alg, 0
  %17 = icmp ult i64 %i.akg, %i.alf
  %or.cond76.i = and i1 %i.alh, %17
  %18 = icmp slt i32 %i.alg, 0
  %or.cond77.i = or i1 %18, %or.cond76.i
  br i1 %or.cond77.i, label %.critedge.i114, label %.preheader34.i.a, !llvm.loop !2708

.preheader35.i:                                   ; preds = %.preheader35.i.preheader.a, %bb.cb
  %.119.i = phi ptr [ %i.ali, %bb.cb ], [ %.021, %.preheader35.i.preheader.a ] ; 5 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.119.i, i64 280 ; 4 uses
  %i.alj = icmp ult ptr %i.ali, %.024.ph
  br i1 %i.alj, label %bb.cb, label %.critedge.i114

bb.cb:                                            ; preds = %.preheader35.i
  %i.alk = getelementptr inbounds nuw i8, ptr %.119.i, i64 536
  %i.all = load i8, ptr %i.alk, align 8           ; 2 uses
  %i.alm = trunc i8 %i.all to i1                  ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %.119.i, i64 552
  %i.alo = load ptr, ptr %i.aln, align 8
  %i.alp = getelementptr inbounds nuw i8, ptr %.119.i, i64 537
  %i.alq = select i1 %i.alm, ptr %i.alo, ptr %i.alp
  %i.alr = getelementptr inbounds nuw i8, ptr %.119.i, i64 544
  %i.als = load i64, ptr %i.alr, align 8
  %i.alt = lshr i8 %i.all, 1
  %i.alu = zext nneg i8 %i.alt to i64
  %i.alv = select i1 %i.alm, i64 %i.als, i64 %i.alu ; 2 uses
  %.sroa.speculated.i.i.i.i13.i = call i64 @llvm.umin.i64(i64 %i.alv, i64 %i.akg)
  %i.alw = call noundef i32 @memcmp(ptr noundef %i.akc, ptr noundef %i.alq, i64 noundef %.sroa.speculated.i.i.i.i13.i) #44 ; 2 uses
  %i.alx = icmp eq i32 %i.alw, 0
  %19 = icmp ult i64 %i.akg, %i.alv
  %or.cond.i = and i1 %i.alx, %19
  %20 = icmp slt i32 %i.alw, 0
  %or.cond74.i = or i1 %20, %or.cond.i
  br i1 %or.cond74.i, label %.critedge.i114, label %.preheader35.i, !llvm.loop !2709

.critedge.i114:                                   ; preds = %bb.cb, %.preheader35.i, %.preheader34.i.a
  %.220.i = phi ptr [ %i.akt, %.preheader34.i.a ], [ %i.ali, %.preheader35.i ], [ %i.ali, %bb.cb ] ; 4 uses
  %i.aly = icmp ult ptr %.220.i, %.024.ph
  br i1 %i.aly, label %.preheader33.i, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.thread.i"

.preheader33.i:                                   ; preds = %.critedge.i114, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.i"
  %.0.i121 = phi ptr [ %i.alz, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.i" ], [ %.024.ph, %.critedge.i114 ] ; 5 uses
  %i.alz = getelementptr inbounds i8, ptr %.0.i121, i64 -280 ; 3 uses
  %i.ama = getelementptr inbounds i8, ptr %.0.i121, i64 -24
  %i.amb = load i8, ptr %i.ama, align 8           ; 2 uses
  %i.amc = trunc i8 %i.amb to i1                  ; 2 uses
  %i.amd = getelementptr inbounds i8, ptr %.0.i121, i64 -8
  %i.ame = load ptr, ptr %i.amd, align 8
  %i.amf = getelementptr inbounds i8, ptr %.0.i121, i64 -23
  %i.amg = select i1 %i.amc, ptr %i.ame, ptr %i.amf
  %i.amh = getelementptr inbounds i8, ptr %.0.i121, i64 -16
  %i.ami = load i64, ptr %i.amh, align 8
  %i.amj = lshr i8 %i.amb, 1
  %i.amk = zext nneg i8 %i.amj to i64
  %i.aml = select i1 %i.amc, i64 %i.ami, i64 %i.amk ; 2 uses
  %.sroa.speculated.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 %i.aml, i64 %i.akg)
  %i.amm = call noundef i32 @memcmp(ptr noundef %i.akc, ptr noundef %i.amg, i64 noundef %.sroa.speculated.i.i.i.i16.i) #44 ; 2 uses
  %i.amn = icmp eq i32 %i.amm, 0
  br i1 %i.amn, label %bb.cc, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.i"

bb.cc:                                            ; preds = %.preheader33.i
  %i.amo = icmp ult i64 %i.akg, %i.aml
  br i1 %i.amo, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.i": ; preds = %bb.cc, %.preheader33.i
  %.0.i.i.i.i17.i = phi i32 [ %i.amm, %.preheader33.i ], [ -2147483648, %bb.cc ]
  %i.amp = icmp slt i32 %.0.i.i.i.i17.i, 0
  br i1 %i.amp, label %.preheader33.i, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.thread.i", !llvm.loop !2710

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.i", %bb.cc, %.critedge.i114
  %.1.i = phi ptr [ %.024.ph, %.critedge.i114 ], [ %i.alz, %bb.cc ], [ %i.alz, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.i" ] ; 2 uses
  %i.amq = icmp ult ptr %.220.i, %.1.i
  br i1 %i.amq, label %.lr.ph.i116, label %._crit_edge.i

.lr.ph.i116:                                      ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.thread.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.thread.i"
  %.244.i = phi ptr [ %i.aoe, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.thread.i" ], [ %.1.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.thread.i" ] ; 3 uses
  %.32143.i = phi ptr [ %i.anp, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.thread.i" ], [ %.220.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.thread.i" ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.amr = load <2 x ptr>, ptr %.32143.i, align 8, !tbaa !361
  store <2 x ptr> %i.amr, ptr %7, align 16, !tbaa !361
  %i.ams = getelementptr inbounds nuw i8, ptr %.32143.i, i64 16
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !361
  store ptr %i.amt, ptr %i.u, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.32143.i, i8 0, i64 24, i1 false)
  %i.amu = getelementptr inbounds nuw i8, ptr %.32143.i, i64 24 ; 2 uses
  %i.amv = load <2 x ptr>, ptr %i.amu, align 8, !tbaa !379
  store <2 x ptr> %i.amv, ptr %i.v, align 8, !tbaa !379
  %i.amw = getelementptr inbounds nuw i8, ptr %.32143.i, i64 40
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !379
  store ptr %i.amx, ptr %i.w, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amu, i8 0, i64 24, i1 false)
  %i.amy = getelementptr inbounds nuw i8, ptr %.32143.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.x, ptr noundef nonnull align 8 dereferenceable(44) %i.amy, i64 44, i1 false)
  %i.amz = getelementptr inbounds nuw i8, ptr %.32143.i, i64 96 ; 2 uses
  %i.ana = load <2 x ptr>, ptr %i.amz, align 8, !tbaa !376
  store <2 x ptr> %i.ana, ptr %i.y, align 16, !tbaa !376
  %i.anb = getelementptr inbounds nuw i8, ptr %.32143.i, i64 112
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !376
  store ptr %i.anc, ptr %i.z, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amz, i8 0, i64 24, i1 false)
  %i.and = getelementptr inbounds nuw i8, ptr %.32143.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.aa, ptr noundef nonnull align 8 dereferenceable(136) %i.and, i64 136, i1 false)
  %i.ane = getelementptr inbounds nuw i8, ptr %.32143.i, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ane, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ane, i8 0, i64 24, i1 false)
  %i.anf = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.32143.i, ptr noundef nonnull align 8 dereferenceable(280) %.244.i) #44 ; 0 uses
  %i.ang = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.244.i, ptr noundef nonnull align 8 dereferenceable(280) %7) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.anh = load i8, ptr %i.q, align 16            ; 2 uses
  %i.ani = trunc i8 %i.anh to i1                  ; 2 uses
  %i.anj = load ptr, ptr %i.r, align 16
  %i.ank = select i1 %i.ani, ptr %i.anj, ptr %i.s ; 2 uses
  %i.anl = load i64, ptr %i.t, align 8
  %i.anm = lshr i8 %i.anh, 1
  %i.ann = zext nneg i8 %i.anm to i64
  %i.ano = select i1 %i.ani, i64 %i.anl, i64 %i.ann ; 4 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.lr.ph.i116
  %.4.i = phi ptr [ %.32143.i, %.lr.ph.i116 ], [ %i.anp, %bb.cd ] ; 5 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.4.i, i64 280 ; 4 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %.4.i, i64 536
  %i.anr = load i8, ptr %i.anq, align 8           ; 2 uses
  %i.ans = trunc i8 %i.anr to i1                  ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %.4.i, i64 552
  %i.anu = load ptr, ptr %i.ant, align 8
  %i.anv = getelementptr inbounds nuw i8, ptr %.4.i, i64 537
  %i.anw = select i1 %i.ans, ptr %i.anu, ptr %i.anv
  %i.anx = getelementptr inbounds nuw i8, ptr %.4.i, i64 544
  %i.any = load i64, ptr %i.anx, align 8
  %i.anz = lshr i8 %i.anr, 1
  %i.aoa = zext nneg i8 %i.anz to i64
  %i.aob = select i1 %i.ans, i64 %i.any, i64 %i.aoa ; 2 uses
  %.sroa.speculated.i.i.i.i19.i117 = call i64 @llvm.umin.i64(i64 %i.aob, i64 %i.ano)
  %i.aoc = call noundef i32 @memcmp(ptr noundef %i.ank, ptr noundef %i.anw, i64 noundef %.sroa.speculated.i.i.i.i19.i117) #44 ; 2 uses
  %i.aod = icmp eq i32 %i.aoc, 0
  %21 = icmp ult i64 %i.ano, %i.aob
  %or.cond54 = and i1 %i.aod, %21
  %22 = icmp slt i32 %i.aoc, 0
  %or.cond55 = or i1 %22, %or.cond54
  br i1 %or.cond55, label %.preheader.i120, label %bb.cd, !llvm.loop !2711

.preheader.i120:                                  ; preds = %bb.cd, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.i"
  %.3.i = phi ptr [ %i.aoe, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.i" ], [ %.244.i, %bb.cd ] ; 5 uses
  %i.aoe = getelementptr inbounds i8, ptr %.3.i, i64 -280 ; 3 uses
  %i.aof = getelementptr inbounds i8, ptr %.3.i, i64 -24
  %i.aog = load i8, ptr %i.aof, align 8           ; 2 uses
  %i.aoh = trunc i8 %i.aog to i1                  ; 2 uses
  %i.aoi = getelementptr inbounds i8, ptr %.3.i, i64 -8
  %i.aoj = load ptr, ptr %i.aoi, align 8
  %i.aok = getelementptr inbounds i8, ptr %.3.i, i64 -23
  %i.aol = select i1 %i.aoh, ptr %i.aoj, ptr %i.aok
  %i.aom = getelementptr inbounds i8, ptr %.3.i, i64 -16
  %i.aon = load i64, ptr %i.aom, align 8
  %i.aoo = lshr i8 %i.aog, 1
  %i.aop = zext nneg i8 %i.aoo to i64
  %i.aoq = select i1 %i.aoh, i64 %i.aon, i64 %i.aop ; 2 uses
  %.sroa.speculated.i.i.i.i22.i = call i64 @llvm.umin.i64(i64 %i.aoq, i64 %i.ano)
  %i.aor = call noundef i32 @memcmp(ptr noundef %i.ank, ptr noundef %i.aol, i64 noundef %.sroa.speculated.i.i.i.i22.i) #44 ; 2 uses
  %i.aos = icmp eq i32 %i.aor, 0
  br i1 %i.aos, label %bb.ce, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.i"

bb.ce:                                            ; preds = %.preheader.i120
  %i.aot = icmp ult i64 %i.ano, %i.aoq
  br i1 %i.aot, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.i", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.thread.i"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.i": ; preds = %bb.ce, %.preheader.i120
  %.0.i.i.i.i23.i = phi i32 [ %i.aor, %.preheader.i120 ], [ -2147483648, %bb.ce ]
  %i.aou = icmp slt i32 %.0.i.i.i.i23.i, 0
  br i1 %i.aou, label %.preheader.i120, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.thread.i", !llvm.loop !2712

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.thread.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.i", %bb.ce
  %i.aov = icmp ult ptr %i.anp, %i.aoe
  br i1 %i.aov, label %.lr.ph.i116, label %._crit_edge.i, !llvm.loop !2713

._crit_edge.i:                                    ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.thread.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.thread.i"
  %.321.lcssa.i = phi ptr [ %.220.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit18.thread.i" ], [ %i.anp, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit24.thread.i" ] ; 2 uses
  %i.aow = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -280 ; 3 uses
  %.not.i115 = icmp eq ptr %.021, %i.aow
  br i1 %.not.i115, label %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EET0_SP_SP_T1_.exit", label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.i
  %i.aox = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.021, ptr noundef nonnull align 8 dereferenceable(280) %i.aow) #44 ; 0 uses
  br label %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EET0_SP_SP_T1_.exit"

"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EET0_SP_SP_T1_.exit": ; preds = %._crit_edge.i, %bb.cf
  %i.aoy = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.aow, ptr noundef nonnull align 8 dereferenceable(280) %8) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33": ; preds = %bb.bz, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111", %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.aoz = load <2 x ptr>, ptr %.021, align 8, !tbaa !361
  store <2 x ptr> %i.aoz, ptr %6, align 16, !tbaa !361
  %i.apa = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !361
  store ptr %i.apb, ptr %i.ac, align 16, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.021, i8 0, i64 24, i1 false)
  %i.apc = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.apd = load <2 x ptr>, ptr %i.apc, align 8, !tbaa !379
  store <2 x ptr> %i.apd, ptr %i.ad, align 8, !tbaa !379
  %i.ape = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !379
  store ptr %i.apf, ptr %i.ae, align 8, !tbaa !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apc, i8 0, i64 24, i1 false)
  %i.apg = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.af, ptr noundef nonnull align 8 dereferenceable(44) %i.apg, i64 44, i1 false)
  %i.aph = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.api = load <2 x ptr>, ptr %i.aph, align 8, !tbaa !376
  store <2 x ptr> %i.api, ptr %i.ag, align 16, !tbaa !376
  %i.apj = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !376
  store ptr %i.apk, ptr %i.ah, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aph, i8 0, i64 24, i1 false)
  %i.apl = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ai, ptr noundef nonnull align 8 dereferenceable(136) %i.apl, i64 136, i1 false)
  %i.apm = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.apm, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apm, i8 0, i64 24, i1 false)
  %i.apn = load i8, ptr %i.aj, align 16           ; 2 uses
  %i.apo = trunc i8 %i.apn to i1                  ; 2 uses
  %i.app = load ptr, ptr %i.ak, align 16
  %i.apq = select i1 %i.apo, ptr %i.app, ptr %i.al ; 3 uses
  %i.apr = load i64, ptr %i.am, align 8
  %i.aps = lshr i8 %i.apn, 1
  %i.apt = zext nneg i8 %i.aps to i64
  %i.apu = select i1 %i.apo, i64 %i.apr, i64 %i.apt ; 6 uses
  br label %bb.cg

bb.cg:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i124", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33"
  %.018.i122 = phi ptr [ %.021, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit111.thread33" ], [ %i.apv, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i124" ] ; 7 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.018.i122, i64 280 ; 4 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %.018.i122, i64 536
  %i.apx = load i8, ptr %i.apw, align 8           ; 2 uses
  %i.apy = trunc i8 %i.apx to i1                  ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %.018.i122, i64 552
  %i.aqa = load ptr, ptr %i.apz, align 8
  %i.aqb = getelementptr inbounds nuw i8, ptr %.018.i122, i64 537
  %i.aqc = select i1 %i.apy, ptr %i.aqa, ptr %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %.018.i122, i64 544
  %i.aqe = load i64, ptr %i.aqd, align 8
  %i.aqf = lshr i8 %i.apx, 1
  %i.aqg = zext nneg i8 %i.aqf to i64
  %i.aqh = select i1 %i.apy, i64 %i.aqe, i64 %i.aqg ; 2 uses
  %.sroa.speculated.i.i.i.i.i123 = call i64 @llvm.umin.i64(i64 %i.apu, i64 %i.aqh)
  %i.aqi = call noundef i32 @memcmp(ptr noundef %i.aqc, ptr noundef %i.apq, i64 noundef %.sroa.speculated.i.i.i.i.i123) #44 ; 2 uses
  %i.aqj = icmp eq i32 %i.aqi, 0
  br i1 %i.aqj, label %bb.ch, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i124"

bb.ch:                                            ; preds = %bb.cg
  %i.aqk = icmp ult i64 %i.aqh, %i.apu
  br i1 %i.aqk, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i124", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i124": ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i.i125 = phi i32 [ %i.aqi, %bb.cg ], [ -2147483648, %bb.ch ]
  %i.aql = icmp slt i32 %.0.i.i.i.i.i125, 0
  br i1 %i.aql, label %bb.cg, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126", !llvm.loop !2714

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i124", %bb.ch
  %i.aqm = icmp eq ptr %.021, %.018.i122
  br i1 %i.aqm, label %.preheader29.i, label %.preheader30.i

.preheader29.i:                                   ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126", %bb.ci
  %.0.i138 = phi ptr [ %i.aqo, %bb.ci ], [ %.024.ph, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126" ] ; 7 uses
  %i.aqn = icmp ult ptr %i.apv, %.0.i138
  br i1 %i.aqn, label %bb.ci, label %.critedge.i131

bb.ci:                                            ; preds = %.preheader29.i
  %i.aqo = getelementptr inbounds i8, ptr %.0.i138, i64 -280 ; 2 uses
  %i.aqp = getelementptr inbounds i8, ptr %.0.i138, i64 -24
  %i.aqq = load i8, ptr %i.aqp, align 8           ; 2 uses
  %i.aqr = trunc i8 %i.aqq to i1                  ; 2 uses
  %i.aqs = getelementptr inbounds i8, ptr %.0.i138, i64 -8
  %i.aqt = load ptr, ptr %i.aqs, align 8
  %i.aqu = getelementptr inbounds i8, ptr %.0.i138, i64 -23
  %i.aqv = select i1 %i.aqr, ptr %i.aqt, ptr %i.aqu
  %i.aqw = getelementptr inbounds i8, ptr %.0.i138, i64 -16
  %i.aqx = load i64, ptr %i.aqw, align 8
  %i.aqy = lshr i8 %i.aqq, 1
  %i.aqz = zext nneg i8 %i.aqy to i64
  %i.ara = select i1 %i.aqr, i64 %i.aqx, i64 %i.aqz ; 2 uses
  %.sroa.speculated.i.i.i.i12.i = call i64 @llvm.umin.i64(i64 %i.apu, i64 %i.ara)
  %i.arb = call noundef i32 @memcmp(ptr noundef %i.aqv, ptr noundef %i.apq, i64 noundef %.sroa.speculated.i.i.i.i12.i) #44 ; 2 uses
  %i.arc = icmp eq i32 %i.arb, 0
  %23 = icmp ult i64 %i.ara, %i.apu
  %or.cond66.i = and i1 %i.arc, %23
  %24 = icmp slt i32 %i.arb, 0
  %or.cond67.i = or i1 %24, %or.cond66.i
  br i1 %or.cond67.i, label %.critedge.i131, label %.preheader29.i, !llvm.loop !2715

.preheader30.i:                                   ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126", %.preheader30.i
  %.1.i127 = phi ptr [ %i.ard, %.preheader30.i ], [ %.024.ph, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i126" ] ; 5 uses
  %i.ard = getelementptr inbounds i8, ptr %.1.i127, i64 -280 ; 2 uses
  %i.are = getelementptr inbounds i8, ptr %.1.i127, i64 -24
  %i.arf = load i8, ptr %i.are, align 8           ; 2 uses
  %i.arg = trunc i8 %i.arf to i1                  ; 2 uses
  %i.arh = getelementptr inbounds i8, ptr %.1.i127, i64 -8
  %i.ari = load ptr, ptr %i.arh, align 8
  %i.arj = getelementptr inbounds i8, ptr %.1.i127, i64 -23
  %i.ark = select i1 %i.arg, ptr %i.ari, ptr %i.arj
  %i.arl = getelementptr inbounds i8, ptr %.1.i127, i64 -16
  %i.arm = load i64, ptr %i.arl, align 8
  %i.arn = lshr i8 %i.arf, 1
  %i.aro = zext nneg i8 %i.arn to i64
  %i.arp = select i1 %i.arg, i64 %i.arm, i64 %i.aro ; 2 uses
  %.sroa.speculated.i.i.i.i15.i128 = call i64 @llvm.umin.i64(i64 %i.apu, i64 %i.arp)
  %i.arq = call noundef i32 @memcmp(ptr noundef %i.ark, ptr noundef %i.apq, i64 noundef %.sroa.speculated.i.i.i.i15.i128) #44 ; 2 uses
  %i.arr = icmp eq i32 %i.arq, 0
  %25 = icmp ult i64 %i.arp, %i.apu
  %or.cond69.i = and i1 %i.arr, %25
  %26 = icmp slt i32 %i.arq, 0
  %or.cond70.i = or i1 %26, %or.cond69.i
  br i1 %or.cond70.i, label %.critedge.i131, label %.preheader30.i, !llvm.loop !2716

.critedge.i131:                                   ; preds = %.preheader30.i, %bb.ci, %.preheader29.i
  %.2.i = phi ptr [ %.0.i138, %.preheader29.i ], [ %i.aqo, %bb.ci ], [ %i.ard, %.preheader30.i ] ; 2 uses
  %.not = icmp ult ptr %i.apv, %.2.i              ; 2 uses
  br i1 %.not, label %.lr.ph.i132, label %._crit_edge.i136

.lr.ph.i132:                                      ; preds = %.critedge.i131, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i"
  %.343.i = phi ptr [ %i.atl, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i" ], [ %.2.i, %.critedge.i131 ] ; 3 uses
  %.11942.i = phi ptr [ %i.asu, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i" ], [ %i.apv, %.critedge.i131 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.ars = load <2 x ptr>, ptr %.11942.i, align 8, !tbaa !361
  store <2 x ptr> %i.ars, ptr %5, align 16, !tbaa !361
  %i.art = getelementptr inbounds nuw i8, ptr %.11942.i, i64 16
  %i.aru = getelementptr inbounds nuw i8, ptr %.11942.i, i64 24 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %.11942.i, i64 32
  %i.arw = load ptr, ptr %i.art, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.11942.i, i8 0, i64 24, i1 false)
  %i.arx = load ptr, ptr %i.aru, align 8, !tbaa !377
  %i.ary = load <2 x ptr>, ptr %i.arv, align 8, !tbaa !379
  %i.arz = insertelement <4 x ptr> poison, ptr %i.arw, i64 0
  %i.asa = insertelement <4 x ptr> %i.arz, ptr %i.arx, i64 1
  %i.asb = shufflevector <2 x ptr> %i.ary, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.asc = shufflevector <4 x ptr> %i.asa, <4 x ptr> %i.asb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.asc, ptr %i.an, align 16, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aru, i8 0, i64 24, i1 false)
  %i.asd = getelementptr inbounds nuw i8, ptr %.11942.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.ao, ptr noundef nonnull align 8 dereferenceable(44) %i.asd, i64 44, i1 false)
  %i.ase = getelementptr inbounds nuw i8, ptr %.11942.i, i64 96 ; 2 uses
  %i.asf = load <2 x ptr>, ptr %i.ase, align 8, !tbaa !376
  store <2 x ptr> %i.asf, ptr %i.ap, align 16, !tbaa !376
  %i.asg = getelementptr inbounds nuw i8, ptr %.11942.i, i64 112
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !376
  store ptr %i.ash, ptr %i.aq, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ase, i8 0, i64 24, i1 false)
  %i.asi = getelementptr inbounds nuw i8, ptr %.11942.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ar, ptr noundef nonnull align 8 dereferenceable(136) %i.asi, i64 136, i1 false)
  %i.asj = getelementptr inbounds nuw i8, ptr %.11942.i, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.asj, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asj, i8 0, i64 24, i1 false)
  %i.ask = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.11942.i, ptr noundef nonnull align 8 dereferenceable(280) %.343.i) #44 ; 0 uses
  %i.asl = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.343.i, ptr noundef nonnull align 8 dereferenceable(280) %5) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.asm = load i8, ptr %i.aj, align 16           ; 2 uses
  %i.asn = trunc i8 %i.asm to i1                  ; 2 uses
  %i.aso = load ptr, ptr %i.ak, align 16
  %i.asp = select i1 %i.asn, ptr %i.aso, ptr %i.al ; 2 uses
  %i.asq = load i64, ptr %i.am, align 8
  %i.asr = lshr i8 %i.asm, 1
  %i.ass = zext nneg i8 %i.asr to i64
  %i.ast = select i1 %i.asn, i64 %i.asq, i64 %i.ass ; 4 uses
  br label %bb.cj

bb.cj:                                            ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i", %.lr.ph.i132
  %.220.i133 = phi ptr [ %.11942.i, %.lr.ph.i132 ], [ %i.asu, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i" ] ; 6 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.220.i133, i64 280 ; 3 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %.220.i133, i64 536
  %i.asw = load i8, ptr %i.asv, align 8           ; 2 uses
  %i.asx = trunc i8 %i.asw to i1                  ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %.220.i133, i64 552
  %i.asz = load ptr, ptr %i.asy, align 8
  %i.ata = getelementptr inbounds nuw i8, ptr %.220.i133, i64 537
  %i.atb = select i1 %i.asx, ptr %i.asz, ptr %i.ata
  %i.atc = getelementptr inbounds nuw i8, ptr %.220.i133, i64 544
  %i.atd = load i64, ptr %i.atc, align 8
  %i.ate = lshr i8 %i.asw, 1
  %i.atf = zext nneg i8 %i.ate to i64
  %i.atg = select i1 %i.asx, i64 %i.atd, i64 %i.atf ; 2 uses
  %.sroa.speculated.i.i.i.i18.i = call i64 @llvm.umin.i64(i64 %i.ast, i64 %i.atg)
  %i.ath = call noundef i32 @memcmp(ptr noundef %i.atb, ptr noundef %i.asp, i64 noundef %.sroa.speculated.i.i.i.i18.i) #44 ; 2 uses
  %i.ati = icmp eq i32 %i.ath, 0
  br i1 %i.ati, label %bb.ck, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i"

bb.ck:                                            ; preds = %bb.cj
  %i.atj = icmp ult i64 %i.atg, %i.ast
  br i1 %i.atj, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i", label %.preheader.i134.preheader

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i": ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i19.i = phi i32 [ %i.ath, %bb.cj ], [ -2147483648, %bb.ck ]
  %i.atk = icmp slt i32 %.0.i.i.i.i19.i, 0
  br i1 %i.atk, label %bb.cj, label %.preheader.i134.preheader, !llvm.loop !2717

.preheader.i134.preheader:                        ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit20.i", %bb.ck
  br label %.preheader.i134

.preheader.i134:                                  ; preds = %.preheader.i134.preheader, %.preheader.i134
  %.4.i135 = phi ptr [ %i.atl, %.preheader.i134 ], [ %.343.i, %.preheader.i134.preheader ] ; 5 uses
  %i.atl = getelementptr inbounds i8, ptr %.4.i135, i64 -280 ; 3 uses
  %i.atm = getelementptr inbounds i8, ptr %.4.i135, i64 -24
  %i.atn = load i8, ptr %i.atm, align 8           ; 2 uses
  %i.ato = trunc i8 %i.atn to i1                  ; 2 uses
  %i.atp = getelementptr inbounds i8, ptr %.4.i135, i64 -8
  %i.atq = load ptr, ptr %i.atp, align 8
  %i.atr = getelementptr inbounds i8, ptr %.4.i135, i64 -23
  %i.ats = select i1 %i.ato, ptr %i.atq, ptr %i.atr
  %i.att = getelementptr inbounds i8, ptr %.4.i135, i64 -16
  %i.atu = load i64, ptr %i.att, align 8
  %i.atv = lshr i8 %i.atn, 1
  %i.atw = zext nneg i8 %i.atv to i64
  %i.atx = select i1 %i.ato, i64 %i.atu, i64 %i.atw ; 2 uses
  %.sroa.speculated.i.i.i.i21.i = call i64 @llvm.umin.i64(i64 %i.ast, i64 %i.atx)
  %i.aty = call noundef i32 @memcmp(ptr noundef %i.ats, ptr noundef %i.asp, i64 noundef %.sroa.speculated.i.i.i.i21.i) #44 ; 2 uses
  %i.atz = icmp eq i32 %i.aty, 0
  %27 = icmp ult i64 %i.atx, %i.ast
  %or.cond.i134 = and i1 %i.atz, %27
  %28 = icmp slt i32 %i.aty, 0
  %or.cond64.i = or i1 %28, %or.cond.i134
  br i1 %or.cond64.i, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i", label %.preheader.i134, !llvm.loop !2718

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i": ; preds = %.preheader.i134
  %i.aua = icmp ult ptr %i.asu, %i.atl
  br i1 %i.aua, label %.lr.ph.i132, label %._crit_edge.i136, !llvm.loop !2719

._crit_edge.i136:                                 ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i", %.critedge.i131
  %i.aub = phi ptr [ %.018.i122, %.critedge.i131 ], [ %.220.i133, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit23.thread.i" ] ; 8 uses
  %.not.i137 = icmp eq ptr %.021, %i.aub
  br i1 %.not.i137, label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit", label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.i136
  %i.auc = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.021, ptr noundef nonnull align 8 dereferenceable(280) %i.aub) #44 ; 0 uses
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit": ; preds = %._crit_edge.i136, %bb.cl
  %i.aud = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.aub, ptr noundef nonnull align 8 dereferenceable(280) %6) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br i1 %.not, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit"
  %i.aue = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEbT1_SP_T0_"(ptr noundef nonnull %.021, ptr noundef nonnull %i.aub) ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 280 ; 2 uses
  %i.aug = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEbT1_SP_T0_"(ptr noundef nonnull %i.auf, ptr noundef %.024.ph)
  br i1 %i.aug, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.aue, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer", !llvm.loop !2720

bb.co:                                            ; preds = %bb.cm
  br i1 %i.aue, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit", label %bb.cp, !llvm.loop !2720

bb.cp:                                            ; preds = %bb.co, %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EENS_4pairIT0_bEESQ_SQ_T1_.exit"
  call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb"(ptr noundef nonnull %.021, ptr noundef nonnull %i.aub, i64 noundef %i.ahl, i1 noundef zeroext %i.bb)
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aub, i64 280
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405.backedge": ; preds = %bb.cp, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EET0_SP_SP_T1_.exit"
  %.021.ph406.be = phi ptr [ %.321.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev9ImageDataERZNKS2_15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_1EET0_SP_SP_T1_.exit" ], [ %i.auh, %bb.cp ]
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.outer405", !llvm.loop !2720

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit.thread": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_T0_.exit", %bb.cn, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i62", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread.i", %bb.c, %.preheader.i54, %bb.w, %.preheader.i, %bb.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread29", %bb.e, %bb.d, %bb.f, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSR_SR_SR_SR_SR_SQ_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  %6 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  %7 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  %8 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 4 uses
  %i.c = load i8, ptr %i.a, align 8               ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 257
  %i.h = select i1 %i.d, ptr %i.f, ptr %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i8 %i.c, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = select i1 %i.d, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = load i8, ptr %i.b, align 8               ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 257 ; 2 uses
  %i.s = select i1 %i.o, ptr %i.q, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.n, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.o, i64 %i.u, i64 %i.w       ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.m)
  %i.y = tail call noundef i32 @memcmp(ptr noundef %i.h, ptr noundef %i.s, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp ult i64 %i.m, %i.x
  br i1 %i.aa, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i": ; preds = %bb.a
  %i.ab = icmp slt i32 %i.y, 0
  br i1 %i.ab, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.i", %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = load <2 x ptr>, ptr %3, align 8, !tbaa !361
  store <2 x ptr> %i.ad, ptr %8, align 16, !tbaa !361
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !361
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %3, i8 0, i64 24, i1 false)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !377
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !379
  %i.ak = insertelement <4 x ptr> poison, ptr %i.ah, i64 0
  %i.al = insertelement <4 x ptr> %i.ak, ptr %i.ai, i64 1
  %i.am = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <4 x ptr> %i.al, <4 x ptr> %i.am, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.an, ptr %i.ac, align 16, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.ao, ptr noundef nonnull align 8 dereferenceable(44) %i.ap, i64 44, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.at = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !376
  store <2 x ptr> %i.at, ptr %i.aq, align 16, !tbaa !376
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !376
  store ptr %i.av, ptr %i.as, align 16, !tbaa !376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.aw, ptr noundef nonnull align 8 dereferenceable(136) %i.ax, i64 136, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.az = tail call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(280) %4) #44 ; 0 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(280) %8) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 4 uses
  %i.bc = load i8, ptr %i.b, align 8              ; 2 uses
  %i.bd = trunc i8 %i.bc to i1                    ; 2 uses
  %i.be = load ptr, ptr %i.p, align 8
  %i.bf = select i1 %i.bd, ptr %i.be, ptr %i.r
  %i.bg = load i64, ptr %i.t, align 8
  %i.bh = lshr i8 %i.bc, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = select i1 %i.bd, i64 %i.bg, i64 %i.bi   ; 2 uses
  %i.bk = load i8, ptr %i.bb, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 257 ; 2 uses
  %i.bp = select i1 %i.bl, ptr %i.bn, ptr %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = lshr i8 %i.bk, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = select i1 %i.bl, i64 %i.br, i64 %i.bt   ; 2 uses
  %.sroa.speculated.i.i.i.i5.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bj)
  %i.bv = call noundef i32 @memcmp(ptr noundef %i.bf, ptr noundef %i.bp, i64 noundef %.sroa.speculated.i.i.i.i5.i) #44 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.c, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.i"

bb.c:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i"
  %i.bx = icmp ult i64 %i.bj, %i.bu
  br i1 %i.bx, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread17.i"
  %i.by = icmp slt i32 %i.bv, 0
  br i1 %i.by, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.thread21.i": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit7.i", %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ca = load <2 x ptr>, ptr %2, align 8, !tbaa !361
  store <2 x ptr> %i.ca, ptr %7, align 16, !tbaa !361
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %2, i8 0, i64 24, i1 false)
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !377
  %i.cg = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !379
  %i.ch = insertelement <4 x ptr> poison, ptr %i.ce, i64 0
  %i.ci = insertelement <4 x ptr> %i.ch, ptr %i.cf, i64 1
  %i.cj = shufflevector <2 x ptr> %i.cg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x ptr> %i.ci, <4 x ptr> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ck, ptr %i.bz, align 16, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.cl, ptr noundef nonnull align 8 dereferenceable(44) %i.cm, i64 44, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.cq = load <2 x ptr>, ptr %i.co, align 8, !tbaa !376
  store <2 x ptr> %i.cq, ptr %i.cn, align 16, !tbaa !376
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !376
  store ptr %i.cs, ptr %i.cp, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ct, ptr noundef nonnull align 8 dereferenceable(136) %i.cu, i64 136, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.cw = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(280) %3) #44 ; 0 uses
  %i.cx = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(280) %7) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %7) #44
end_hunk_1
begin_hunk_2_@"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEbT1_SP_T0_":bb.a

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit": ; preds = %bb.b
  %i.ag = icmp slt i32 %i.ad, 0
  br i1 %i.ag, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread16", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread16": ; preds = %bb.c, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load <2 x ptr>, ptr %0, align 8, !tbaa !361
  store <2 x ptr> %i.ai, ptr %2, align 16, !tbaa !361
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !361
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 0, i64 24, i1 false)
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !377
  %i.ao = load <2 x ptr>, ptr %i.al, align 8, !tbaa !379
  %i.ap = insertelement <4 x ptr> poison, ptr %i.am, i64 0
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %i.an, i64 1
  %i.ar = shufflevector <2 x ptr> %i.ao, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.as = shufflevector <4 x ptr> %i.aq, <4 x ptr> %i.ar, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.as, ptr %i.ah, align 16, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.at, ptr noundef nonnull align 8 dereferenceable(44) %i.au, i64 44, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ay = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !376
  store <2 x ptr> %i.ay, ptr %i.av, align 16, !tbaa !376
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !376
  store ptr %i.ba, ptr %i.ax, align 16, !tbaa !376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bb, ptr noundef nonnull align 8 dereferenceable(136) %i.bc, i64 136, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.be = tail call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.e) #44 ; 0 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %i.e, ptr noundef nonnull align 8 dereferenceable(280) %2) #44 ; 0 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread"

bb.d:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bh = getelementptr inbounds i8, ptr %1, i64 -280
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %0, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh)
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread"

bb.e:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bk = getelementptr inbounds i8, ptr %1, i64 -280
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_T0_"(ptr noundef %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk)
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread"

bb.f:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bo = getelementptr inbounds i8, ptr %1, i64 -280
  tail call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSR_SR_SR_SR_SR_SQ_"(ptr noundef %0, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo)
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread"

bb.g:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %0, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %.not30 = icmp eq ptr %i.br, %1
  br i1 %.not30, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 257
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 264
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread"
  %.02033 = phi ptr [ %i.bp, %.lr.ph ], [ %storemerge31, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread" ] ; 6 uses
  %.02432 = phi i32 [ 0, %.lr.ph ], [ %.125, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread" ] ; 3 uses
  %storemerge31 = phi ptr [ %i.br, %.lr.ph ], [ %i.ez, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread" ] ; 17 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %storemerge31, i64 256 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02033, i64 256
  %i.cd = load i8, ptr %i.cb, align 8             ; 2 uses
  %i.ce = trunc i8 %i.cd to i1                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge31, i64 272
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge31, i64 257
  %i.ci = select i1 %i.ce, ptr %i.cg, ptr %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge31, i64 264
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = lshr i8 %i.cd, 1
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = select i1 %i.ce, i64 %i.ck, i64 %i.cm   ; 2 uses
  %i.co = load i8, ptr %i.cc, align 8             ; 2 uses
  %i.cp = trunc i8 %i.co to i1                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02033, i64 272
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.02033, i64 257
  %i.ct = select i1 %i.cp, ptr %i.cr, ptr %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.02033, i64 264
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = lshr i8 %i.co, 1
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = select i1 %i.cp, i64 %i.cv, i64 %i.cx   ; 2 uses
  %.sroa.speculated.i.i.i.i30 = call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cn)
  %i.cz = call noundef i32 @memcmp(ptr noundef %i.ci, ptr noundef %i.ct, i64 noundef %.sroa.speculated.i.i.i.i30) #44 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.i, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32"

bb.i:                                             ; preds = %bb.h
  %i.db = icmp ult i64 %i.cn, %i.cy
  br i1 %i.db, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread20", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32": ; preds = %bb.h
  %i.dc = icmp slt i32 %i.cz, 0
  br i1 %i.dc, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread20", label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread20": ; preds = %bb.i, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32"
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.dd = load <2 x ptr>, ptr %storemerge31, align 8, !tbaa !361
  store <2 x ptr> %i.dd, ptr %3, align 16, !tbaa !361
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge31, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %storemerge31, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge31, i64 32
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %storemerge31, i8 0, i64 24, i1 false)
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !377
  %i.dj = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !379
  %i.dk = insertelement <4 x ptr> poison, ptr %i.dh, i64 0
  %i.dl = insertelement <4 x ptr> %i.dk, ptr %i.di, i64 1
  %i.dm = shufflevector <2 x ptr> %i.dj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x ptr> %i.dl, <4 x ptr> %i.dm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.dn, ptr %i.bs, align 16, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %storemerge31, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.bt, ptr noundef nonnull align 8 dereferenceable(44) %i.do, i64 44, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge31, i64 96 ; 2 uses
  %i.dq = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !376
  store <2 x ptr> %i.dq, ptr %i.bu, align 16, !tbaa !376
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge31, i64 112
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !376
  store ptr %i.ds, ptr %i.bv, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %storemerge31, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bw, ptr noundef nonnull align 8 dereferenceable(136) %i.dt, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  %i.du = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %storemerge31, ptr noundef nonnull align 8 dereferenceable(280) %.02033) #44 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit35"
  %i.dv = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.01244, ptr noundef nonnull align 8 dereferenceable(280) %i.dw) #44 ; 0 uses
  %.not28 = icmp eq ptr %i.dw, %0
  br i1 %.not28, label %.critedge, label %bb.k, !llvm.loop !2721

bb.k:                                             ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread20", %bb.j
  %.01244 = phi ptr [ %.02033, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread20" ], [ %i.dw, %bb.j ] ; 8 uses
  %i.dw = getelementptr inbounds i8, ptr %.01244, i64 -280 ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %.01244, i64 -24
  %i.dy = load i8, ptr %i.bx, align 16            ; 2 uses
  %i.dz = trunc i8 %i.dy to i1                    ; 2 uses
  %i.ea = load ptr, ptr %i.by, align 16
  %i.eb = select i1 %i.dz, ptr %i.ea, ptr %i.bz
  %i.ec = load i64, ptr %i.ca, align 8
  %i.ed = lshr i8 %i.dy, 1
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = select i1 %i.dz, i64 %i.ec, i64 %i.ee   ; 2 uses
  %i.eg = load i8, ptr %i.dx, align 8             ; 2 uses
  %i.eh = trunc i8 %i.eg to i1                    ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.01244, i64 -8
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %.01244, i64 -23
  %i.el = select i1 %i.eh, ptr %i.ej, ptr %i.ek
  %i.em = getelementptr inbounds i8, ptr %.01244, i64 -16
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = lshr i8 %i.eg, 1
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = select i1 %i.eh, i64 %i.en, i64 %i.ep   ; 2 uses
  %.sroa.speculated.i.i.i.i33 = call i64 @llvm.umin.i64(i64 %i.eq, i64 %i.ef)
  %i.er = call noundef i32 @memcmp(ptr noundef %i.eb, ptr noundef %i.el, i64 noundef %.sroa.speculated.i.i.i.i33) #44 ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.l, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit35"

bb.l:                                             ; preds = %bb.k
  %i.et = icmp ult i64 %i.ef, %i.eq
  br i1 %i.et, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit35", label %.critedge

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit35": ; preds = %bb.l, %bb.k
  %.0.i.i.i.i34 = phi i32 [ %i.er, %bb.k ], [ -2147483648, %bb.l ]
  %i.eu = icmp slt i32 %.0.i.i.i.i34, 0
  br i1 %i.eu, label %bb.j, label %.critedge, !llvm.loop !2721

.critedge:                                        ; preds = %bb.l, %bb.j, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit35"
  %.012.lcssa = phi ptr [ %.01244, %bb.l ], [ %0, %bb.j ], [ %.01244, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit35" ]
  %i.ev = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %.012.lcssa, ptr noundef nonnull align 8 dereferenceable(280) %3) #44 ; 0 uses
  %i.ew = add i32 %.02432, 1                      ; 2 uses
  %.not29 = icmp eq i32 %i.ew, 8
  br i1 %.not29, label %.thread, label %bb.m

.thread:                                          ; preds = %.critedge
  %i.ex = getelementptr inbounds nuw i8, ptr %storemerge31, i64 280
  %i.ey = icmp eq ptr %i.ex, %1
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread"

bb.m:                                             ; preds = %.critedge
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread"

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread": ; preds = %bb.i, %bb.m, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32"
  %.125 = phi i32 [ %i.ew, %bb.m ], [ %.02432, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32" ], [ %.02432, %bb.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %storemerge31, i64 280 ; 2 uses
  %.not = icmp eq ptr %i.ez, %1
  br i1 %.not, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread", label %bb.h, !llvm.loop !2722

"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread": ; preds = %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread", %bb.g, %.thread, %bb.c, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit", %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread16", %bb.a, %bb.a, %bb.f, %bb.e, %bb.d
  %.5 = phi i1 [ true, %bb.c ], [ true, %bb.f ], [ true, %bb.a ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.a ], [ true, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit.thread16" ], [ true, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit" ], [ %i.ey, %.thread ], [ true, %bb.g ], [ true, %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit32.thread" ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !377  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !378  ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.f, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.i = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.k = load i64, ptr %i.f, align 8
  %i.l = and i64 %i.k, -2
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !377
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.b
  %i.m = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !378
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !379
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.s = load <2 x ptr>, ptr %i.b, align 8, !tbaa !379
  store <2 x ptr> %i.s, ptr %i.a, align 8, !tbaa !379
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !379
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !379
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.w, ptr noundef nonnull align 8 dereferenceable(44) %i.x, i64 44, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !374 ; 5 uses
  %.not.i.i.i7 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i7, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !375 ; 2 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i1.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.0.i2.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.d ]
  %i.ad = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i, i64 -96 ; 3 uses
  tail call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ad) #44, !inline_history !13
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.aa, %i.ad
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i9 = load ptr, ptr %i.y, align 8, !tbaa !374
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.d
  %i.ae = phi ptr [ %.pre.i.i.i9, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !375
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !376
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.aj) #49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEaSB8ne180100EOS8_.exit, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.ak = load <2 x ptr>, ptr %i.z, align 8, !tbaa !376
  store <2 x ptr> %i.ak, ptr %i.y, align 8, !tbaa !376
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !376
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.am, ptr %i.an, align 8, !tbaa !376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ao, ptr noundef nonnull align 8 dereferenceable(136) %i.ap, i64 136, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit

bb.e:                                             ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.av = load i64, ptr %i.aq, align 8
  %i.aw = and i64 %i.av, -2
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.aw) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEaSB8ne180100EOS5_.exit, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 257
  store i8 0, ptr %i.ay, align 1, !tbaa !80
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEvT1_SP_SP_SP_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  %5 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  %6 = alloca %"struct.tev::ImageData", align 16  ; 11 uses
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev15TiffImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_1PNS2_9ImageDataEEEjT1_SP_SP_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 4 uses
  %i.c = load i8, ptr %i.a, align 8               ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 257
  %i.h = select i1 %i.d, ptr %i.f, ptr %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i8 %i.c, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = select i1 %i.d, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = load i8, ptr %i.b, align 8               ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 257 ; 2 uses
  %i.s = select i1 %i.o, ptr %i.q, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.n, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.o, i64 %i.u, i64 %i.w       ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.m)
  %i.y = tail call noundef i32 @memcmp(ptr noundef %i.h, ptr noundef %i.s, i64 noundef %.sroa.speculated.i.i.i.i) #44 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %"_ZZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clERKNS_9ImageDataESM_.exit"

bb.b:                                             ; preds = %bb.a
end_hunk_2

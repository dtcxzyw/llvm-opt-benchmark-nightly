Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/makeTiled?download=true
inline.NumInlined: 634
inline.NumDeleted: 213
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z9makeTiledPKcS0_iN7Imf_3_49LevelModeENS1_17LevelRoundingModeENS1_11CompressionEiiRKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_EE13ExtrapolationSI_b:bb.a
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !45
  %.not.i1.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn)
          to label %.noexc337 unwind label %.loopexit442

.noexc337:                                        ; preds = %bb.r
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit442, !inline_history !52

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc337, %bb.q
  %.0.i.i.i = phi i8 [ %i.br, %bb.q ], [ %i.bv, %.noexc337 ]
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc339 unwind label %.loopexit442

.noexc339:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit442 ; 0 uses

.loopexit442:                                     ; preds = %bb.m, %bb.n, %bb.o, %bb.r, %.noexc337, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc339
  %lpad.loopexit444 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

.loopexit.split-lp443:                            ; preds = %bb.p
  %lpad.loopexit.split-lp445 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc339, %bb.l
  %i.by = icmp eq i32 %.0108552, %2
  br i1 %i.by, label %bb.s, label %bb.cs

bb.s:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN7Imf_3_49InputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef %2)
          to label %bb.t unwind label %.loopexit447

bb.t:                                             ; preds = %bb.s
  %i.bz = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_49InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.u unwind label %.loopexit447

bb.u:                                             ; preds = %bb.t
  %i.ca = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN7Imf_3_46HeaderaSERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %15, ptr noundef nonnull align 8 dereferenceable(49) %i.bz)
          to label %bb.v unwind label %.loopexit447 ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cb = invoke noundef zeroext i1 @_ZN7Imf_3_49hasEnvmapERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %bb.w unwind label %.loopexit447

bb.w:                                             ; preds = %bb.v
  %or.cond = and i1 %i.p, %i.cb
  br i1 %or.cond, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cc = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_49NoImplExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTIN7Iex_3_49NoImplExcE, ptr nonnull @_ZN7Iex_3_49NoImplExcD1Ev) #27
          to label %bb.jn unwind label %.loopexit.split-lp448

.loopexit447:                                     ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.aa, %bb.ab, %bb.ag, %bb.bp, %bb.bq, %bb.br, %bb.bt, %bb.bu, %bb.ck
  %lpad.loopexit449 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp448:                            ; preds = %bb.y
  %lpad.loopexit.split-lp450 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.z:                                             ; preds = %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cc) #26
  br label %bb.cr

bb.aa:                                            ; preds = %bb.w
  %i.ce = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %bb.ab unwind label %.loopexit447

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5Image6resizeERKN9Imath_3_23BoxINS0_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(16) %i.ce)
          to label %bb.ac unwind label %.loopexit447

bb.ac:                                            ; preds = %bb.ab
  %i.cf = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.cg = invoke ptr @_ZN7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cf)
          to label %.preheader440 unwind label %bb.ah

.preheader440:                                    ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %.sroa.0412.0 = phi ptr [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %i.cg, %bb.ad ] ; 6 uses
  %i.ch = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %.preheader440
  %i.ci = invoke ptr @_ZN7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ch)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.not425 = icmp eq ptr %.sroa.0412.0, %i.ci
  br i1 %.not425, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN7Imf_3_49InputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.bp unwind label %.loopexit447

bb.ah:                                            ; preds = %bb.ad, %bb.ac
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.ai:                                            ; preds = %bb.ae, %.preheader440
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.aj:                                            ; preds = %bb.af
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0412.0, i64 32 ; 13 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0412.0, i64 288 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0412.0, i64 292
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !53
  %.not = icmp eq i32 %i.co, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0412.0, i64 296
  %i.cq = load i32, ptr %i.cp, align 4
  %.not174 = icmp eq i32 %i.cq, 1
  %or.cond198 = select i1 %.not, i1 %.not174, i1 false
  br i1 %or.cond198, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr noundef nonnull @.str.9)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #27
          to label %bb.jn unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.an:                                            ; preds = %bb.ak
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cr) #26
  br label %bb.cr

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store ptr %i.q, ptr %21, align 8, !tbaa !56
  %i.cu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %i.cu, ptr %i.e, align 8, !tbaa !59
  %i.cv = icmp ugt i64 %i.cu, 15
  br i1 %i.cv, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ao
  %i.cw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc202 unwind label %bb.bh ; 2 uses

.noexc202:                                        ; preds = %.noexc.i
  store ptr %i.cw, ptr %21, align 8, !tbaa !60
  %i.cx = load i64, ptr %i.e, align 8, !tbaa !59
  store i64 %i.cx, ptr %i.q, align 8, !tbaa !51
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc202, %bb.ao
  %i.cy = phi ptr [ %i.cw, %.noexc202 ], [ %i.q, %bb.ao ] ; 2 uses
  switch i64 %i.cu, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i
  %i.cz = load i8, ptr %i.cl, align 4, !tbaa !51
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !51
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr nonnull align 1 %i.cl, i64 %i.cu, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i
  %i.da = load i64, ptr %i.e, align 8, !tbaa !59  ; 2 uses
  store i64 %i.da, ptr %i.r, align 8, !tbaa !62
  %i.db = load ptr, ptr %21, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i8 0, ptr %i.dc, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.dd = load i32, ptr %i.cm, align 4, !tbaa !63
  invoke void @_ZN5Image10addChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_49PixelTypeE(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef %i.dd)
          to label %bb.as unwind label %bb.bi

bb.as:                                            ; preds = %bb.ar
  %i.de = load ptr, ptr %21, align 8, !tbaa !60   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.q
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  %i.dg = load i64, ptr %i.q, align 8, !tbaa !51
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.s, ptr %22, align 8, !tbaa !56
  %i.di = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.di, ptr %i.d, align 8, !tbaa !59
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i204, label %._crit_edge.i.i203

.noexc.i204:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc205 unwind label %bb.bj ; 2 uses

.noexc205:                                        ; preds = %.noexc.i204
  store ptr %i.dk, ptr %22, align 8, !tbaa !60
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !59
  store i64 %i.dl, ptr %i.s, align 8, !tbaa !51
  br label %._crit_edge.i.i203

._crit_edge.i.i203:                               ; preds = %.noexc205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dm = phi ptr [ %i.dk, %.noexc205 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.di, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %bb.av
  ]

bb.at:                                            ; preds = %._crit_edge.i.i203
  %i.dn = load i8, ptr %i.cl, align 4, !tbaa !51
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !51
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i203
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %i.cl, i64 %i.di, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge.i.i203
  %i.do = load i64, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  store i64 %i.do, ptr %i.t, align 8, !tbaa !62
  %i.dp = load ptr, ptr %22, align 8, !tbaa !60
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.dr = load i32, ptr %i.cm, align 4, !tbaa !63
  invoke void @_ZN5Image10addChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_49PixelTypeE(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef %i.dr)
          to label %bb.aw unwind label %bb.bk

bb.aw:                                            ; preds = %bb.av
  %i.ds = load ptr, ptr %22, align 8, !tbaa !60   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.s
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %bb.aw
  %i.du = load i64, ptr %i.s, align 8, !tbaa !51
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store ptr %i.u, ptr %23, align 8, !tbaa !56
  %i.dw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.dw, ptr %i.c, align 8, !tbaa !59
  %i.dx = icmp ugt i64 %i.dw, 15
  br i1 %i.dx, label %.noexc.i211, label %._crit_edge.i.i210

.noexc.i211:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.dy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc212 unwind label %bb.bl ; 2 uses

.noexc212:                                        ; preds = %.noexc.i211
  store ptr %i.dy, ptr %23, align 8, !tbaa !60
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !59
  store i64 %i.dz, ptr %i.u, align 8, !tbaa !51
  br label %._crit_edge.i.i210

._crit_edge.i.i210:                               ; preds = %.noexc212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.ea = phi ptr [ %i.dy, %.noexc212 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ] ; 2 uses
  switch i64 %i.dw, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %bb.az
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i210
  %i.eb = load i8, ptr %i.cl, align 4, !tbaa !51
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !51
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i210
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 1 %i.cl, i64 %i.dw, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i210
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  store i64 %i.ec, ptr %i.v, align 8, !tbaa !62
  %i.ed = load ptr, ptr %23, align 8, !tbaa !60
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec
  store i8 0, ptr %i.ee, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ef = load i32, ptr %i.cm, align 4, !tbaa !63
  invoke void @_ZN5Image10addChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_49PixelTypeE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef %i.ef)
          to label %bb.ba unwind label %bb.bm

bb.ba:                                            ; preds = %bb.az
  %i.eg = load ptr, ptr %23, align 8, !tbaa !60   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.u
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.ba
  %i.ei = load i64, ptr %i.u, align 8, !tbaa !51
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  store ptr %i.w, ptr %25, align 8, !tbaa !56
  %i.ek = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ek, ptr %i.b, align 8, !tbaa !59
  %i.el = icmp ugt i64 %i.ek, 15
  br i1 %i.el, label %.noexc.i218, label %._crit_edge.i.i217

.noexc.i218:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.em = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc219 unwind label %bb.bn ; 2 uses

.noexc219:                                        ; preds = %.noexc.i218
  store ptr %i.em, ptr %25, align 8, !tbaa !60
  %i.en = load i64, ptr %i.b, align 8, !tbaa !59
  store i64 %i.en, ptr %i.w, align 8, !tbaa !51
  br label %._crit_edge.i.i217

._crit_edge.i.i217:                               ; preds = %.noexc219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.eo = phi ptr [ %i.em, %.noexc219 ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ] ; 2 uses
  switch i64 %i.ek, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %bb.bd
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i217
  %i.ep = load i8, ptr %i.cl, align 4, !tbaa !51
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !51
  br label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i.i217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr nonnull align 1 %i.cl, i64 %i.ek, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i217
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  store i64 %i.eq, ptr %i.x, align 8, !tbaa !62
  %i.er = load ptr, ptr %25, align 8, !tbaa !60
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 0, ptr %i.es, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.et = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.be unwind label %bb.bo     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void %i.ew(ptr dead_on_unwind nonnull writable sret(%"struct.Imf_3_4::Slice") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %bb.bf unwind label %bb.bo

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull %i.cl, ptr noundef nonnull align 8 dereferenceable(50) %24)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.ex = load ptr, ptr %25, align 8, !tbaa !60   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.w
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.bg
  %i.ez = load i64, ptr %i.w, align 8, !tbaa !51
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.fb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0412.0) #29
  br label %.preheader440, !llvm.loop !64

bb.bh:                                            ; preds = %.noexc.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

bb.bi:                                            ; preds = %bb.ar
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %21, align 8, !tbaa !60   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.q
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.bi
  %i.fg = load i64, ptr %i.q, align 8, !tbaa !51
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %bb.bh
  %.pn175 = phi { ptr, i32 } [ %i.fc, %bb.bh ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %i.fd, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.cr

bb.bj:                                            ; preds = %.noexc.i204
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

bb.bk:                                            ; preds = %bb.av
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %22, align 8, !tbaa !60   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.s
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.bk
  %i.fm = load i64, ptr %i.s, align 8, !tbaa !51
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %bb.bj
  %.pn177 = phi { ptr, i32 } [ %i.fi, %bb.bj ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ], [ %i.fj, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.cr

bb.bl:                                            ; preds = %.noexc.i211
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.bm:                                            ; preds = %bb.az
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = load ptr, ptr %23, align 8, !tbaa !60   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.u
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.bm
  %i.fs = load i64, ptr %i.u, align 8, !tbaa !51
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %bb.bl
  %.pn179 = phi { ptr, i32 } [ %i.fo, %bb.bl ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %i.fp, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.cr

bb.bn:                                            ; preds = %.noexc.i218
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

bb.bo:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %25, align 8, !tbaa !60   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.w
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.bo
  %i.fy = load i64, ptr %i.w, align 8, !tbaa !51
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.bn
  %.pn181 = phi { ptr, i32 } [ %i.fu, %bb.bn ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %i.fv, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.cr

bb.bp:                                            ; preds = %bb.ag
  %i.ga = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %bb.bq unwind label %.loopexit447

bb.bq:                                            ; preds = %bb.bp
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !66
  %i.gd = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %bb.br unwind label %.loopexit447

bb.br:                                            ; preds = %bb.bq
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !69
  invoke void @_ZN7Imf_3_49InputPart10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %i.gc, i32 noundef %i.gf)
          to label %bb.bs unwind label %.loopexit447

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  store i32 %6, ptr %26, align 4, !tbaa !70
  store i32 %7, ptr %i.y, align 4, !tbaa !74
  store i32 %3, ptr %i.z, align 4, !tbaa !75
  store i32 %4, ptr %i.aa, align 4, !tbaa !76
  invoke void @_ZN7Imf_3_46Header18setTileDescriptionERKNS_15TileDescriptionE(ptr noundef nonnull align 8 dereferenceable(49) %15, ptr noundef nonnull align 4 dereferenceable(16) %26)
          to label %bb.bt unwind label %bb.ci

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.gg = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %bb.bu unwind label %.loopexit447

bb.bu:                                            ; preds = %bb.bt
  store i32 %5, ptr %i.gg, align 4, !tbaa !77
  %i.gh = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7Imf_3_46Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %bb.bv unwind label %.loopexit447

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.gh, align 4, !tbaa !79
  br i1 %i.p, label %bb.bw, label %bb.ck

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  store ptr %i.ab, ptr %29, align 8, !tbaa !56, !alias.scope !81
  store i64 0, ptr %i.ac, align 8, !tbaa !62, !alias.scope !81
  store i8 0, ptr %i.ab, align 8, !tbaa !51, !alias.scope !81
  br i1 %i.aj, label %switch.lookup, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.bx:                                            ; preds = %switch.lookup
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %29, align 8, !tbaa !60, !alias.scope !81 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.ab
  br i1 %i.gk, label %.body, label %.body.sink.split

switch.lookup:                                    ; preds = %bb.bw
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.load717 = load i8, ptr %switch.gep716, align 1
  %switch.ext = zext i8 %switch.load717 to i64
  %i.gl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %switch.load, i64 noundef %switch.ext)
          to label %_ZN12_GLOBAL__N_111extToStringB5cxx11E13Extrapolation.exit unwind label %bb.bx ; 0 uses

_ZN12_GLOBAL__N_111extToStringB5cxx11E13Extrapolation.exit: ; preds = %switch.lookup
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !62, !noalias !84
  %i.gm = icmp eq i64 %.pre, 4611686018427387903
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  br i1 %i.gm, label %bb.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_17reduceXERKN7Imf_3_411ChannelListERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EE13ExtrapolationbRK5ImageRSI_:bb.a
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.h = tail call ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  %i.i = tail call ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %.not290 = icmp eq ptr %i.h, %i.i
  br i1 %.not290, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.bt, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.bt
  %.sroa.0196.0291 = phi ptr [ %i.h, %.lr.ph ], [ %i.uf, %bb.bt ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0196.0291, i64 32 ; 21 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0196.0291, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.j, ptr %6, align 8, !tbaa !56
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.ab, ptr %i.g, align 8, !tbaa !59
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !60
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !59
  store i64 %i.ae, ptr %i.j, align 8, !tbaa !51
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.af = phi ptr [ %i.ad, %.noexc.i ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %i.ab, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !51
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !51
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !62
  %i.ai = load ptr, ptr %6, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !18  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ak, null
  %.pre = load ptr, ptr %6, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.al = load i64, ptr %i.k, align 8, !tbaa !62  ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !62 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !60
  %i.ar = call i32 @memcmp(ptr noundef %i.aq, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.as = sub i64 %i.an, %i.al
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.as, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ar, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.at = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.at, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.f, !llvm.loop !115

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.au, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !62 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.al) ; 2 uses
  %i.ax = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !60
  %i.ba = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.az, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.bb = sub i64 %i.al, %i.aw
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bb, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bc = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi i1 [ true, %bb.e ], [ true, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i ], [ %i.bc, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 3 uses
  %i.bd = icmp eq ptr %.pre, %i.j
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.be = load i64, ptr %i.j, align 8, !tbaa !51
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bg = load i32, ptr %i.aa, align 4, !tbaa !63
  switch i32 %i.bg, label %bb.bt [
    i32 1, label %bb.h
    i32 2, label %bb.aj
    i32 0, label %bb.bb
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.v, ptr %7, align 8, !tbaa !56
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i64 %i.bh, ptr %i.f, align 8, !tbaa !59
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.noexc.i56, label %._crit_edge.i.i55

.noexc.i56:                                       ; preds = %bb.h
  %i.bj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc57 unwind label %bb.af  ; 2 uses

.noexc57:                                         ; preds = %.noexc.i56
  store ptr %i.bj, ptr %7, align 8, !tbaa !60
  %i.bk = load i64, ptr %i.f, align 8, !tbaa !59
  store i64 %i.bk, ptr %i.v, align 8, !tbaa !51
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %.noexc57, %bb.h
  %i.bl = phi ptr [ %i.bj, %.noexc57 ], [ %i.v, %bb.h ] ; 2 uses
  switch i64 %i.bh, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i55
  %i.bm = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !51
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr nonnull align 1 %i.z, i64 %i.bh, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i55
  %i.bn = load i64, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  store i64 %i.bn, ptr %i.w, align 8, !tbaa !62
  %i.bo = load ptr, ptr %7, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc59 unwind label %.loopexit233

.noexc59:                                         ; preds = %bb.k
  %i.br = call ptr @__dynamic_cast(ptr nonnull %i.bq, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIN9Imath_3_24halfEE, i64 0) #26 ; 6 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.l, label %_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %.noexc59
  invoke void @__cxa_bad_cast() #27
          to label %.noexc60 unwind label %.loopexit.split-lp234

.noexc60:                                         ; preds = %bb.l
  unreachable

_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.x, ptr %8, align 8, !tbaa !56
  %i.bt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %i.bt, ptr %i.e, align 8, !tbaa !59
  %i.bu = icmp ugt i64 %i.bt, 15
  br i1 %i.bu, label %.noexc.i62, label %._crit_edge.i.i61

.noexc.i62:                                       ; preds = %_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc63 unwind label %bb.ag  ; 2 uses

.noexc63:                                         ; preds = %.noexc.i62
  store ptr %i.bv, ptr %8, align 8, !tbaa !60
  %i.bw = load i64, ptr %i.e, align 8, !tbaa !59
  store i64 %i.bw, ptr %i.x, align 8, !tbaa !51
  br label %._crit_edge.i.i61

._crit_edge.i.i61:                                ; preds = %.noexc63, %_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bx = phi ptr [ %i.bv, %.noexc63 ], [ %i.x, %_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  switch i64 %i.bt, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i61
  %i.by = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !51
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull align 1 %i.z, i64 %i.bt, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i61
  %i.bz = load i64, ptr %i.e, align 8, !tbaa !59  ; 2 uses
  store i64 %i.bz, ptr %i.y, align 8, !tbaa !62
  %i.ca = load ptr, ptr %8, align 8, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc65 unwind label %.loopexit238

.noexc65:                                         ; preds = %bb.o
  %i.cd = call ptr @__dynamic_cast(ptr nonnull %i.cc, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIN9Imath_3_24halfEE, i64 0) #26 ; 6 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.p, label %_ZN5Image12typedChannelIN9Imath_3_24halfEEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.p:                                             ; preds = %.noexc65
  invoke void @__cxa_bad_cast() #27
          to label %.noexc66 unwind label %.loopexit.split-lp239

.noexc66:                                         ; preds = %bb.p
  unreachable

_ZN5Image12typedChannelIN9Imath_3_24halfEEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc65
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !116, !nonnull !119, !align !120 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !121
  %i.cj = load i32, ptr %i.cg, align 8, !tbaa !128
  %i.ck = add i32 %i.ci, 1
  %i.cl = sub i32 %i.ck, %i.cj                    ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !116, !nonnull !119, !align !120 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !121
  %i.cq = load i32, ptr %i.cn, align 8, !tbaa !128
  %i.cr = add i32 %i.cp, 1
  %i.cs = sub i32 %i.cr, %i.cq                    ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !129
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !130
  %i.cx = add i32 %i.cu, 1
  %i.cy = sub i32 %i.cx, %i.cw                    ; 4 uses
  br i1 %.sroa.0.0.i.i, label %bb.q, label %bb.ae

bb.q:                                             ; preds = %_ZN5Image12typedChannelIN9Imath_3_24halfEEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cz = icmp sgt i32 %i.cs, 1
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.da = add nsw i32 %i.cl, -2
  %i.db = sitofp i32 %i.da to double
  %i.dc = add nsw i32 %i.cs, -1
  %i.dd = uitofp nneg i32 %i.dc to double
  %i.de = fdiv double %i.db, %i.dd
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.df = phi double [ %i.de, %bb.r ], [ 1.000000e+00, %bb.q ]
  %i.dg = icmp sgt i32 %i.cy, 0
  br i1 %i.dg, label %.preheader.lr.ph.i, label %_ZN12_GLOBAL__N_17reduceXIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_bR13Extrapolationb.exit

.preheader.lr.ph.i:                               ; preds = %bb.s
  %i.dh = icmp sgt i32 %i.cs, 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  br i1 %i.dh, label %.preheader.lr.ph.split.i, label %_ZN12_GLOBAL__N_17reduceXIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_bR13Extrapolationb.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !131
  %i.dn = load i64, ptr %i.dk, align 8, !tbaa !134
  %wide.trip.count26.i = zext nneg i32 %i.cy to i64
  %wide.trip.count21.i = zext nneg i32 %i.cs to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge9.i, %.preheader.lr.ph.split.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next24.i, %._crit_edge9.i ] ; 3 uses
  %i.do = mul nsw i64 %indvars.iv23.i, %i.dn
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.do
  %i.dq = trunc nuw nsw i64 %indvars.iv23.i to i32 ; 4 uses
  br label %bb.t

._crit_edge9.i:                                   ; preds = %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %wide.trip.count26.i
  br i1 %exitcond27.not.i, label %_ZN12_GLOBAL__N_17reduceXIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_bR13Extrapolationb.exit, label %.preheader.i, !llvm.loop !135

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i, %.preheader.i
  %indvars.iv18.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next19.i, %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i ] ; 3 uses
  %i.dr = trunc nuw nsw i64 %indvars.iv18.i to i32
  %i.ds = uitofp nneg i32 %i.dr to double
  %i.dt = fmul double %i.df, %i.ds                ; 4 uses
  %.val.i = load i64, ptr %i.di, align 8          ; 4 uses
  %.val41.i = load ptr, ptr %i.dj, align 8        ; 4 uses
  %i.du = fadd double %i.dt, -1.000000e+00
  %i.dv = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i, ptr readonly %.val41.i, i32 noundef %i.cl, double noundef %i.du, i32 noundef %i.dq, i32 noundef %2)
  %i.dw = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i, ptr readonly %.val41.i, i32 noundef %i.cl, double noundef %i.dt, i32 noundef %i.dq, i32 noundef %2)
  %i.dx = fmul double %i.dw, 3.750000e-01
  %i.dy = call double @llvm.fmuladd.f64(double %i.dv, double 1.250000e-01, double %i.dx)
  %i.dz = fadd double %i.dt, 1.000000e+00
  %i.ea = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i, ptr readonly %.val41.i, i32 noundef %i.cl, double noundef %i.dz, i32 noundef %i.dq, i32 noundef %2)
  %i.eb = call double @llvm.fmuladd.f64(double %i.ea, double 3.750000e-01, double %i.dy)
  %i.ec = fadd double %i.dt, 2.000000e+00
  %i.ed = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i, ptr readonly %.val41.i, i32 noundef %i.cl, double noundef %i.ec, i32 noundef %i.dq, i32 noundef %2)
  %i.ee = call double @llvm.fmuladd.f64(double %i.ed, double 1.250000e-01, double %i.eb)
  %i.ef = fptrunc double %i.ee to float           ; 2 uses
  %i.eg = bitcast float %i.ef to i32
  %i.eh = call float @llvm.fabs.f32(float %i.ef)
  %i.ei = bitcast float %i.eh to i32              ; 10 uses
  %i.ej = lshr i32 %i.eg, 16                      ; 3 uses
  %i.ek = trunc nuw i32 %i.ej to i16
  %i.el = and i16 %i.ek, -32768                   ; 3 uses
  %i.em = icmp samesign ugt i32 %i.ei, 947912703
  br i1 %i.em, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.en = icmp samesign ugt i32 %i.ei, 2139095039
  br i1 %i.en, label %bb.v, label %bb.x, !prof !111

bb.v:                                             ; preds = %bb.u
  %i.eo = or disjoint i16 %i.el, 31744            ; 2 uses
  %i.ep = icmp eq i32 %i.ei, 2139095040
  br i1 %i.ep, label %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = lshr i32 %i.ei, 13
  %i.er = and i32 %i.eq, 1023                     ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %i.et = zext i1 %i.es to i16
  %i.eu = trunc nuw nsw i32 %i.er to i16
  %i.ev = or i16 %i.eu, %i.et
  %i.ew = or disjoint i16 %i.ev, %i.eo
  br label %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i

bb.x:                                             ; preds = %bb.u
  %i.ex = icmp samesign ugt i32 %i.ei, 1199566847
  br i1 %i.ex, label %bb.y, label %bb.z, !prof !111

bb.y:                                             ; preds = %bb.x
  %i.ey = or disjoint i16 %i.el, 31744
  br label %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ez = add nuw nsw i32 %i.ei, 134221823
  %i.fa = lshr i32 %i.ei, 13
  %i.fb = and i32 %i.fa, 1
  %i.fc = add nuw nsw i32 %i.ez, %i.fb
  %i.fd = lshr i32 %i.fc, 13
  %i.fe = and i32 %i.ej, 32768
  %i.ff = or i32 %i.fd, %i.fe
  %i.fg = trunc i32 %i.ff to i16
  br label %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i

bb.aa:                                            ; preds = %bb.t
  %i.fh = icmp samesign ult i32 %i.ei, 855638017
  br i1 %i.fh, label %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = lshr i32 %i.ei, 23                      ; 2 uses
  %i.fj = sub nuw nsw i32 126, %i.fi
  %i.fk = and i32 %i.ei, 8388607
  %i.fl = or disjoint i32 %i.fk, 8388608          ; 2 uses
  %i.fm = add nsw i32 %i.fi, -94
  %i.fn = shl i32 %i.fl, %i.fm                    ; 2 uses
  %i.fo = lshr i32 %i.fl, %i.fj                   ; 2 uses
  %i.fp = and i32 %i.ej, 32768
  %i.fq = or i32 %i.fo, %i.fp
  %i.fr = trunc nuw i32 %i.fq to i16              ; 2 uses
  %i.fs = icmp ugt i32 %i.fn, -2147483648
  br i1 %i.fs, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ft = icmp ne i32 %i.fn, -2147483648
  %i.fu = and i32 %i.fo, 1
  %.not.i.i.i.i = icmp eq i32 %i.fu, 0
  %or.cond.i.i.i.i = select i1 %i.ft, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fv = add nuw i16 %i.fr, 1
  br label %_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i

_ZN12_GLOBAL__N_17filterXIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eidi13Extrapolation.exit.i: ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v
  %.033.i.i.i.i = phi i16 [ %i.el, %bb.aa ], [ %i.ew, %bb.w ], [ %i.ey, %bb.y ], [ %i.fg, %bb.z ], [ %i.eo, %bb.v ], [ %i.fv, %bb.ad ], [ %i.fr, %bb.ac ]
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv18.i
  store i16 %.033.i.i.i.i, ptr %i.fw, align 2, !tbaa !136
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %wide.trip.count21.i
  br i1 %exitcond22.not.i, label %._crit_edge9.i, label %bb.t, !llvm.loop !138

bb.ae:                                            ; preds = %_ZN5Image12typedChannelIN9Imath_3_24halfEEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fx = icmp sgt i32 %i.cy, 0
  %i.fy = icmp sgt i32 %i.cs, 0
  %or.cond = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond, label %.preheader4.lr.ph.split.i, label %_ZN12_GLOBAL__N_17reduceXIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_bR13Extrapolationb.exit

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_17reduceXERKN7Imf_3_411ChannelListERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EE13ExtrapolationbRK5ImageRSI_:bb.a
  %i.he = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter408 = and i64 %i.he, 3                 ; 2 uses
  %lcmp.mod409.not = icmp eq i64 %xtraiter408, 0
  br i1 %lcmp.mod409.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter410 = phi i64 [ %prol.iter410.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.idx.i.prol = shl nuw nsw i64 %indvars.iv.i.prol, 2
  %gep.i.prol = getelementptr i8, ptr %gep34.i, i64 %.idx.i.prol
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %indvars.iv.i.prol
  %i.hg = load i16, ptr %gep.i.prol, align 2, !tbaa !136
  store i16 %i.hg, ptr %i.hf, align 2, !tbaa !136
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter410.next = add i64 %prol.iter410, 1   ; 2 uses
  %prol.iter410.cmp.not = icmp eq i64 %prol.iter410.next, %xtraiter408
  br i1 %prol.iter410.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !139

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.hh = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %._crit_edge.i, label %scalar.ph

vector.body:                                      ; preds = %.preheader4.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader4.i ] ; 4 uses
  %i.hj = shl nuw nsw i64 %index, 2
  %i.hk = shl i64 %index, 2
  %i.hl = getelementptr i8, ptr %gep34.i, i64 %i.hj
  %i.hm = getelementptr i8, ptr %gep34.i, i64 %i.hk
  %i.hn = getelementptr i8, ptr %i.hm, i64 16
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %index ; 2 uses
  %wide.vec = load <8 x i16>, ptr %i.hl, align 2, !tbaa !136, !alias.scope !141
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec354 = load <8 x i16>, ptr %i.hn, align 2, !tbaa !136, !alias.scope !141
  %strided.vec355 = shufflevector <8 x i16> %wide.vec354, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store <4 x i16> %strided.vec, ptr %i.ho, align 2, !tbaa !136, !alias.scope !144, !noalias !141
  store <4 x i16> %strided.vec355, ptr %i.hp, align 2, !tbaa !136, !alias.scope !144, !noalias !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !146

._crit_edge.i:                                    ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1 ; 2 uses
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next14.i, %wide.trip.count16.i
  br i1 %exitcond17.not.i, label %_ZN12_GLOBAL__N_17reduceXIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_bR13Extrapolationb.exit, label %.preheader4.i, !llvm.loop !149

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 2
  %gep.i = getelementptr i8, ptr %gep34.i, i64 %.idx.i
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.hs = load i16, ptr %gep.i, align 2, !tbaa !136
  store i16 %i.hs, ptr %i.hr, align 2, !tbaa !136
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.idx.i.1 = shl nuw nsw i64 %indvars.iv.next.i, 2
  %gep.i.1 = getelementptr i8, ptr %gep34.i, i64 %.idx.i.1
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %indvars.iv.next.i
  %i.hu = load i16, ptr %gep.i.1, align 2, !tbaa !136
  store i16 %i.hu, ptr %i.ht, align 2, !tbaa !136
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %.idx.i.2 = shl nuw nsw i64 %indvars.iv.next.i.1, 2
  %gep.i.2 = getelementptr i8, ptr %gep34.i, i64 %.idx.i.2
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %indvars.iv.next.i.1
  %i.hw = load i16, ptr %gep.i.2, align 2, !tbaa !136
  store i16 %i.hw, ptr %i.hv, align 2, !tbaa !136
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %.idx.i.3 = shl nuw nsw i64 %indvars.iv.next.i.2, 2
  %gep.i.3 = getelementptr i8, ptr %gep34.i, i64 %.idx.i.3
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %indvars.iv.next.i.2
  %i.hy = load i16, ptr %gep.i.3, align 2, !tbaa !136
  store i16 %i.hy, ptr %i.hx, align 2, !tbaa !136
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !150

_ZN12_GLOBAL__N_17reduceXIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_bR13Extrapolationb.exit: ; preds = %._crit_edge.i, %._crit_edge9.i, %bb.ae, %.preheader.lr.ph.i, %bb.s
  %i.hz = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.x
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZN12_GLOBAL__N_17reduceXIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_bR13Extrapolationb.exit
  %i.ib = load i64, ptr %i.x, align 8, !tbaa !51
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZN12_GLOBAL__N_17reduceXIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_bR13Extrapolationb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.id = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.v
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.if = load i64, ptr %i.v, align 8, !tbaa !51
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bt

bb.af:                                            ; preds = %.noexc.i56
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

.loopexit233:                                     ; preds = %bb.k
  %lpad.loopexit235 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp234:                            ; preds = %bb.l
  %lpad.loopexit.split-lp236 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %.noexc.i62
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

.loopexit238:                                     ; preds = %bb.o
  %lpad.loopexit240 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp239:                            ; preds = %bb.p
  %lpad.loopexit.split-lp241 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp239, %.loopexit238
  %lpad.phi242 = phi { ptr, i32 } [ %lpad.loopexit240, %.loopexit238 ], [ %lpad.loopexit.split-lp241, %.loopexit.split-lp239 ] ; 2 uses
  %i.ij = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.x
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.ah
  %i.il = load i64, ptr %i.x, align 8, !tbaa !51
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.ag
  %.pn45 = phi { ptr, i32 } [ %i.ii, %bb.ag ], [ %lpad.phi242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %lpad.phi242, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit233, %.loopexit.split-lp234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %lpad.loopexit235, %.loopexit233 ], [ %lpad.loopexit.split-lp236, %.loopexit.split-lp234 ] ; 2 uses
  %i.in = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.v
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ai
  %i.ip = load i64, ptr %i.v, align 8, !tbaa !51
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.af
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.af ], [ %.pn45.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn45.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bu

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.r, ptr %9, align 8, !tbaa !56
  %i.ir = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.ir, ptr %i.d, align 8, !tbaa !59
  %i.is = icmp ugt i64 %i.ir, 15
  br i1 %i.is, label %.noexc.i80, label %._crit_edge.i.i79

.noexc.i80:                                       ; preds = %bb.aj
  %i.it = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc81 unwind label %bb.ax  ; 2 uses

.noexc81:                                         ; preds = %.noexc.i80
  store ptr %i.it, ptr %9, align 8, !tbaa !60
  %i.iu = load i64, ptr %i.d, align 8, !tbaa !59
  store i64 %i.iu, ptr %i.r, align 8, !tbaa !51
  br label %._crit_edge.i.i79

._crit_edge.i.i79:                                ; preds = %.noexc81, %bb.aj
  %i.iv = phi ptr [ %i.it, %.noexc81 ], [ %i.r, %bb.aj ] ; 2 uses
  switch i64 %i.ir, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i79
  %i.iw = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.iw, ptr %i.iv, align 1, !tbaa !51
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iv, ptr nonnull align 1 %i.z, i64 %i.ir, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i79
  %i.ix = load i64, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  store i64 %i.ix, ptr %i.s, align 8, !tbaa !62
  %i.iy = load ptr, ptr %9, align 8, !tbaa !60
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.ix
  store i8 0, ptr %i.iz, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.ja = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc83 unwind label %.loopexit223

.noexc83:                                         ; preds = %bb.am
  %i.jb = call ptr @__dynamic_cast(ptr nonnull %i.ja, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIfE, i64 0) #26 ; 6 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.an, label %_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.an:                                            ; preds = %.noexc83
  invoke void @__cxa_bad_cast() #27
          to label %.noexc84 unwind label %.loopexit.split-lp224

.noexc84:                                         ; preds = %bb.an
  unreachable

_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %i.t, ptr %10, align 8, !tbaa !56
  %i.jd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.jd, ptr %i.c, align 8, !tbaa !59
  %i.je = icmp ugt i64 %i.jd, 15
  br i1 %i.je, label %.noexc.i86, label %._crit_edge.i.i85

.noexc.i86:                                       ; preds = %_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc87 unwind label %bb.ay  ; 2 uses

.noexc87:                                         ; preds = %.noexc.i86
  store ptr %i.jf, ptr %10, align 8, !tbaa !60
  %i.jg = load i64, ptr %i.c, align 8, !tbaa !59
  store i64 %i.jg, ptr %i.t, align 8, !tbaa !51
  br label %._crit_edge.i.i85

._crit_edge.i.i85:                                ; preds = %.noexc87, %_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jh = phi ptr [ %i.jf, %.noexc87 ], [ %i.t, %_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  switch i64 %i.jd, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i85
  %i.ji = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.ji, ptr %i.jh, align 1, !tbaa !51
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i85
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jh, ptr nonnull align 1 %i.z, i64 %i.jd, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i85
  %i.jj = load i64, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  store i64 %i.jj, ptr %i.u, align 8, !tbaa !62
  %i.jk = load ptr, ptr %10, align 8, !tbaa !60
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jj
  store i8 0, ptr %i.jl, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.jm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc89 unwind label %.loopexit228

.noexc89:                                         ; preds = %bb.aq
  %i.jn = call ptr @__dynamic_cast(ptr nonnull %i.jm, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIfE, i64 0) #26 ; 6 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.ar, label %_ZN5Image12typedChannelIfEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ar:                                            ; preds = %.noexc89
  invoke void @__cxa_bad_cast() #27
          to label %.noexc90 unwind label %.loopexit.split-lp229

.noexc90:                                         ; preds = %bb.ar
  unreachable

_ZN5Image12typedChannelIfEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc89
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !116, !nonnull !119, !align !120 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !121
  %i.jt = load i32, ptr %i.jq, align 8, !tbaa !128
  %i.ju = add i32 %i.js, 1
  %i.jv = sub i32 %i.ju, %i.jt                    ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !116, !nonnull !119, !align !120 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !121
  %i.ka = load i32, ptr %i.jx, align 8, !tbaa !128
  %i.kb = add i32 %i.jz, 1
  %i.kc = sub i32 %i.kb, %i.ka                    ; 8 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !129
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !130
  %i.kh = add i32 %i.ke, 1
  %i.ki = sub i32 %i.kh, %i.kg                    ; 4 uses
  br i1 %.sroa.0.0.i.i, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %_ZN5Image12typedChannelIfEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.kj = icmp sgt i32 %i.kc, 1
  br i1 %i.kj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kk = add nsw i32 %i.jv, -2
  %i.kl = sitofp i32 %i.kk to double
  %i.km = add nsw i32 %i.kc, -1
  %i.kn = uitofp nneg i32 %i.km to double
  %i.ko = fdiv double %i.kl, %i.kn
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.kp = phi double [ %i.ko, %bb.at ], [ 1.000000e+00, %bb.as ]
  %i.kq = icmp sgt i32 %i.ki, 0
  br i1 %i.kq, label %.preheader.lr.ph.i106, label %_ZN12_GLOBAL__N_17reduceXIfEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit

.preheader.lr.ph.i106:                            ; preds = %bb.au
  %i.kr = icmp sgt i32 %i.kc, 0
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  br i1 %i.kr, label %.preheader.lr.ph.split.i107, label %_ZN12_GLOBAL__N_17reduceXIfEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit

.preheader.lr.ph.split.i107:                      ; preds = %.preheader.lr.ph.i106
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !151
  %i.kx = load i64, ptr %i.ku, align 8, !tbaa !154
  %wide.trip.count26.i108 = zext nneg i32 %i.ki to i64
  %wide.trip.count21.i109 = zext nneg i32 %i.kc to i64
  br label %.preheader.i110

.preheader.i110:                                  ; preds = %._crit_edge9.i117, %.preheader.lr.ph.split.i107
  %indvars.iv23.i111 = phi i64 [ 0, %.preheader.lr.ph.split.i107 ], [ %indvars.iv.next24.i118, %._crit_edge9.i117 ] ; 3 uses
  %i.ky = mul nsw i64 %indvars.iv23.i111, %i.kx
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.kw, i64 %i.ky
  %i.la = trunc nuw nsw i64 %indvars.iv23.i111 to i32 ; 4 uses
  br label %bb.av

._crit_edge9.i117:                                ; preds = %bb.av
  %indvars.iv.next24.i118 = add nuw nsw i64 %indvars.iv23.i111, 1 ; 2 uses
  %exitcond27.not.i119 = icmp eq i64 %indvars.iv.next24.i118, %wide.trip.count26.i108
  br i1 %exitcond27.not.i119, label %_ZN12_GLOBAL__N_17reduceXIfEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit, label %.preheader.i110, !llvm.loop !155

bb.av:                                            ; preds = %bb.av, %.preheader.i110
  %indvars.iv18.i112 = phi i64 [ 0, %.preheader.i110 ], [ %indvars.iv.next19.i115, %bb.av ] ; 3 uses
  %i.lb = trunc nuw nsw i64 %indvars.iv18.i112 to i32
  %i.lc = uitofp nneg i32 %i.lb to double
  %i.ld = fmul double %i.kp, %i.lc                ; 4 uses
  %.val.i113 = load i64, ptr %i.ks, align 8       ; 4 uses
  %.val41.i114 = load ptr, ptr %i.kt, align 8     ; 4 uses
  %i.le = fadd double %i.ld, -1.000000e+00
  %i.lf = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIfEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i113, ptr readonly %.val41.i114, i32 noundef %i.jv, double noundef %i.le, i32 noundef %i.la, i32 noundef %2)
  %i.lg = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIfEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i113, ptr readonly %.val41.i114, i32 noundef %i.jv, double noundef %i.ld, i32 noundef %i.la, i32 noundef %2)
  %i.lh = fmul double %i.lg, 3.750000e-01
  %i.li = call double @llvm.fmuladd.f64(double %i.lf, double 1.250000e-01, double %i.lh)
  %i.lj = fadd double %i.ld, 1.000000e+00
  %i.lk = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIfEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i113, ptr readonly %.val41.i114, i32 noundef %i.jv, double noundef %i.lj, i32 noundef %i.la, i32 noundef %2)
  %i.ll = call double @llvm.fmuladd.f64(double %i.lk, double 3.750000e-01, double %i.li)
  %i.lm = fadd double %i.ld, 2.000000e+00
  %i.ln = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIfEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i113, ptr readonly %.val41.i114, i32 noundef %i.jv, double noundef %i.lm, i32 noundef %i.la, i32 noundef %2)
  %i.lo = call double @llvm.fmuladd.f64(double %i.ln, double 1.250000e-01, double %i.ll)
  %i.lp = fptrunc double %i.lo to float
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv18.i112
  store float %i.lp, ptr %i.lq, align 4, !tbaa !9
  %indvars.iv.next19.i115 = add nuw nsw i64 %indvars.iv18.i112, 1 ; 2 uses
  %exitcond22.not.i116 = icmp eq i64 %indvars.iv.next19.i115, %wide.trip.count21.i109
  br i1 %exitcond22.not.i116, label %._crit_edge9.i117, label %bb.av, !llvm.loop !156

bb.aw:                                            ; preds = %_ZN5Image12typedChannelIfEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.lr = icmp sgt i32 %i.ki, 0
  %i.ls = icmp sgt i32 %i.kc, 0
  %or.cond202 = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %or.cond202, label %.preheader4.lr.ph.split.i93, label %_ZN12_GLOBAL__N_17reduceXIfEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit

.preheader4.lr.ph.split.i93:                      ; preds = %bb.aw
  %reass.sub.i91 = add i32 %i.jv, 1
  %i.lt = shl nuw i32 %i.kc, 1
  %i.lu = sub i32 %reass.sub.i91, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8            ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !154 ; 3 uses
  %i.mb = load ptr, ptr %i.ly, align 8, !tbaa !151 ; 3 uses
  %i.mc = load i64, ptr %i.lx, align 8, !tbaa !154 ; 2 uses
  %i.md = sext i32 %i.lu to i64
  %i.me = select i1 %3, i64 %i.md, i64 0          ; 2 uses
  %wide.trip.count16.i94 = zext nneg i32 %i.ki to i64 ; 2 uses
  %wide.trip.count.i95 = zext nneg i32 %i.kc to i64 ; 7 uses
  %invariant.gep31.i = getelementptr [4 x i8], ptr %i.lw, i64 %i.me ; 2 uses
  %i.mf = shl i64 %i.mc, 2                        ; 2 uses
  %i.mg = add nsw i64 %wide.trip.count16.i94, -1  ; 2 uses
  %i.mh = mul i64 %i.mf, %i.mg
  %i.mi = shl nuw nsw i64 %wide.trip.count.i95, 2
  %i.mj = getelementptr i8, ptr %i.mb, i64 %i.mh
  %scevgep357 = getelementptr i8, ptr %i.mj, i64 %i.mi
  %scevgep358 = getelementptr i8, ptr %i.lw, i64 -4
  %i.mk = shl i64 %i.ma, 2
  %i.ml = mul i64 %i.mk, %i.mg
  %i.mm = shl nuw nsw i64 %wide.trip.count.i95, 3
  %i.mn = shl nsw i64 %i.me, 2
  %i.mo = getelementptr i8, ptr %scevgep358, i64 %i.ml
  %i.mp = getelementptr i8, ptr %i.mo, i64 %i.mm
  %scevgep359 = getelementptr i8, ptr %i.mp, i64 %i.mn
  %min.iters.check366 = icmp ult i32 %i.kc, 9
  %bound0360 = icmp ult ptr %i.mb, %scevgep359
  %bound1361 = icmp ult ptr %invariant.gep31.i, %scevgep357
  %found.conflict362 = and i1 %bound0360, %bound1361
  %stride.check363 = icmp slt i64 %i.mf, 0
  %i.mq = or i1 %found.conflict362, %stride.check363
  %.mask400 = and i64 %i.ma, 2305843009213693952
  %stride.check364 = icmp ne i64 %.mask400, 0
  %i.mr = or i1 %i.mq, %stride.check364
  %i.ms = and i64 %wide.trip.count.i95, 7         ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 0
  %i.mu = select i1 %i.mt, i64 8, i64 %i.ms
  %n.vec368 = sub nsw i64 %wide.trip.count.i95, %i.mu ; 2 uses
  br label %.preheader4.i96

.preheader4.i96:                                  ; preds = %._crit_edge.i103, %.preheader4.lr.ph.split.i93
  %indvars.iv13.i97 = phi i64 [ 0, %.preheader4.lr.ph.split.i93 ], [ %indvars.iv.next14.i104, %._crit_edge.i103 ] ; 3 uses
  %i.mv = mul nsw i64 %indvars.iv13.i97, %i.ma
  %i.mw = mul nsw i64 %indvars.iv13.i97, %i.mc
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.mw ; 6 uses
  %gep32.i = getelementptr [4 x i8], ptr %invariant.gep31.i, i64 %i.mv ; 7 uses
  %brmerge411 = select i1 %min.iters.check366, i1 true, i1 %i.mr
  br i1 %brmerge411, label %scalar.ph365.preheader, label %vector.body369

scalar.ph365.preheader:                           ; preds = %.preheader4.i96, %vector.body369
  %indvars.iv.i98.ph = phi i64 [ %n.vec368, %vector.body369 ], [ 0, %.preheader4.i96 ] ; 4 uses
  %i.my = sub nsw i64 %wide.trip.count.i95, %indvars.iv.i98.ph
  %xtraiter405 = and i64 %i.my, 3                 ; 2 uses
  %lcmp.mod406.not = icmp eq i64 %xtraiter405, 0
  br i1 %lcmp.mod406.not, label %scalar.ph365.prol.loopexit, label %scalar.ph365.prol

scalar.ph365.prol:                                ; preds = %scalar.ph365.preheader, %scalar.ph365.prol
  %indvars.iv.i98.prol = phi i64 [ %indvars.iv.next.i101.prol, %scalar.ph365.prol ], [ %indvars.iv.i98.ph, %scalar.ph365.preheader ] ; 3 uses
  %prol.iter407 = phi i64 [ %prol.iter407.next, %scalar.ph365.prol ], [ 0, %scalar.ph365.preheader ]
  %.idx.i99.prol = shl nuw nsw i64 %indvars.iv.i98.prol, 3
  %gep.i100.prol = getelementptr i8, ptr %gep32.i, i64 %.idx.i99.prol
  %i.mz = load float, ptr %gep.i100.prol, align 4, !tbaa !9
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i98.prol
  store float %i.mz, ptr %i.na, align 4, !tbaa !9
  %indvars.iv.next.i101.prol = add nuw nsw i64 %indvars.iv.i98.prol, 1 ; 2 uses
  %prol.iter407.next = add i64 %prol.iter407, 1   ; 2 uses
  %prol.iter407.cmp.not = icmp eq i64 %prol.iter407.next, %xtraiter405
  br i1 %prol.iter407.cmp.not, label %scalar.ph365.prol.loopexit, label %scalar.ph365.prol, !llvm.loop !157

scalar.ph365.prol.loopexit:                       ; preds = %scalar.ph365.prol, %scalar.ph365.preheader
  %indvars.iv.i98.unr = phi i64 [ %indvars.iv.i98.ph, %scalar.ph365.preheader ], [ %indvars.iv.next.i101.prol, %scalar.ph365.prol ]
  %i.nb = sub nsw i64 %indvars.iv.i98.ph, %wide.trip.count.i95
  %i.nc = icmp ugt i64 %i.nb, -4
  br i1 %i.nc, label %._crit_edge.i103, label %scalar.ph365

vector.body369:                                   ; preds = %.preheader4.i96, %vector.body369
  %index370 = phi i64 [ %index.next375, %vector.body369 ], [ 0, %.preheader4.i96 ] ; 4 uses
  %i.nd = shl nuw nsw i64 %index370, 3
  %i.ne = shl i64 %index370, 3
  %i.nf = getelementptr i8, ptr %gep32.i, i64 %i.nd
  %i.ng = getelementptr i8, ptr %gep32.i, i64 %i.ne
  %i.nh = getelementptr i8, ptr %i.ng, i64 32
  %wide.vec371 = load <8 x float>, ptr %i.nf, align 4, !tbaa !9, !alias.scope !158
  %strided.vec372 = shufflevector <8 x float> %wide.vec371, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec373 = load <8 x float>, ptr %i.nh, align 4, !tbaa !9, !alias.scope !158
  %strided.vec374 = shufflevector <8 x float> %wide.vec373, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index370 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  store <4 x float> %strided.vec372, ptr %i.ni, align 4, !tbaa !9, !alias.scope !161, !noalias !158
  store <4 x float> %strided.vec374, ptr %i.nj, align 4, !tbaa !9, !alias.scope !161, !noalias !158
  %index.next375 = add nuw i64 %index370, 8       ; 2 uses
  %i.nk = icmp eq i64 %index.next375, %n.vec368
  br i1 %i.nk, label %scalar.ph365.preheader, label %vector.body369, !llvm.loop !163

._crit_edge.i103:                                 ; preds = %scalar.ph365, %scalar.ph365.prol.loopexit
  %indvars.iv.next14.i104 = add nuw nsw i64 %indvars.iv13.i97, 1 ; 2 uses
  %exitcond17.not.i105 = icmp eq i64 %indvars.iv.next14.i104, %wide.trip.count16.i94
  br i1 %exitcond17.not.i105, label %_ZN12_GLOBAL__N_17reduceXIfEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit, label %.preheader4.i96, !llvm.loop !164

scalar.ph365:                                     ; preds = %scalar.ph365.prol.loopexit, %scalar.ph365
  %indvars.iv.i98 = phi i64 [ %indvars.iv.next.i101.3, %scalar.ph365 ], [ %indvars.iv.i98.unr, %scalar.ph365.prol.loopexit ] ; 6 uses
  %.idx.i99 = shl nuw nsw i64 %indvars.iv.i98, 3
  %gep.i100 = getelementptr i8, ptr %gep32.i, i64 %.idx.i99
  %i.nl = load float, ptr %gep.i100, align 4, !tbaa !9
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i98
  store float %i.nl, ptr %i.nm, align 4, !tbaa !9
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i98, 1 ; 2 uses
  %.idx.i99.1 = shl nuw nsw i64 %indvars.iv.next.i101, 3
  %gep.i100.1 = getelementptr i8, ptr %gep32.i, i64 %.idx.i99.1
  %i.nn = load float, ptr %gep.i100.1, align 4, !tbaa !9
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i101
  store float %i.nn, ptr %i.no, align 4, !tbaa !9
  %indvars.iv.next.i101.1 = add nuw nsw i64 %indvars.iv.i98, 2 ; 2 uses
  %.idx.i99.2 = shl nuw nsw i64 %indvars.iv.next.i101.1, 3
  %gep.i100.2 = getelementptr i8, ptr %gep32.i, i64 %.idx.i99.2
  %i.np = load float, ptr %gep.i100.2, align 4, !tbaa !9
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i101.1
  store float %i.np, ptr %i.nq, align 4, !tbaa !9
  %indvars.iv.next.i101.2 = add nuw nsw i64 %indvars.iv.i98, 3 ; 2 uses
  %.idx.i99.3 = shl nuw nsw i64 %indvars.iv.next.i101.2, 3
  %gep.i100.3 = getelementptr i8, ptr %gep32.i, i64 %.idx.i99.3
  %i.nr = load float, ptr %gep.i100.3, align 4, !tbaa !9
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i101.2
  store float %i.nr, ptr %i.ns, align 4, !tbaa !9
  %indvars.iv.next.i101.3 = add nuw nsw i64 %indvars.iv.i98, 4 ; 2 uses
  %exitcond.not.i102.3 = icmp eq i64 %indvars.iv.next.i101.3, %wide.trip.count.i95
  br i1 %exitcond.not.i102.3, label %._crit_edge.i103, label %scalar.ph365, !llvm.loop !165

_ZN12_GLOBAL__N_17reduceXIfEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit: ; preds = %._crit_edge.i103, %._crit_edge9.i117, %bb.aw, %.preheader.lr.ph.i106, %bb.au
  %i.nt = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.t
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZN12_GLOBAL__N_17reduceXIfEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit
  %i.nv = load i64, ptr %i.t, align 8, !tbaa !51
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZN12_GLOBAL__N_17reduceXIfEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.nx = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.r
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.nz = load i64, ptr %i.r, align 8, !tbaa !51
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.oa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bt

bb.ax:                                            ; preds = %.noexc.i80
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

.loopexit223:                                     ; preds = %bb.am
  %lpad.loopexit225 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp224:                            ; preds = %bb.an
  %lpad.loopexit.split-lp226 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %.noexc.i86
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

.loopexit228:                                     ; preds = %bb.aq
  %lpad.loopexit230 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp229:                            ; preds = %bb.ar
  %lpad.loopexit.split-lp231 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp229, %.loopexit228
  %lpad.phi232 = phi { ptr, i32 } [ %lpad.loopexit230, %.loopexit228 ], [ %lpad.loopexit.split-lp231, %.loopexit.split-lp229 ] ; 2 uses
  %i.od = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.t
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.az
  %i.of = load i64, ptr %i.t, align 8, !tbaa !51
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.ay
  %.pn41 = phi { ptr, i32 } [ %i.oc, %bb.ay ], [ %lpad.phi232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %lpad.phi232, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit223, %.loopexit.split-lp224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %lpad.loopexit225, %.loopexit223 ], [ %lpad.loopexit.split-lp226, %.loopexit.split-lp224 ] ; 2 uses
  %i.oh = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.r
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.ba
  %i.oj = load i64, ptr %i.r, align 8, !tbaa !51
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.ax
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.ob, %bb.ax ], [ %.pn41.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn41.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bu

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %i.n, ptr %11, align 8, !tbaa !56
  %i.ol = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ol, ptr %i.b, align 8, !tbaa !59
  %i.om = icmp ugt i64 %i.ol, 15
  br i1 %i.om, label %.noexc.i133, label %._crit_edge.i.i132

.noexc.i133:                                      ; preds = %bb.bb
  %i.on = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc134 unwind label %bb.bp ; 2 uses

.noexc134:                                        ; preds = %.noexc.i133
  store ptr %i.on, ptr %11, align 8, !tbaa !60
  %i.oo = load i64, ptr %i.b, align 8, !tbaa !59
  store i64 %i.oo, ptr %i.n, align 8, !tbaa !51
  br label %._crit_edge.i.i132

._crit_edge.i.i132:                               ; preds = %.noexc134, %bb.bb
  %i.op = phi ptr [ %i.on, %.noexc134 ], [ %i.n, %bb.bb ] ; 2 uses
  switch i64 %i.ol, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %bb.be
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i132
  %i.oq = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.oq, ptr %i.op, align 1, !tbaa !51
  br label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i132
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.op, ptr nonnull align 1 %i.z, i64 %i.ol, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i132
  %i.or = load i64, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  store i64 %i.or, ptr %i.o, align 8, !tbaa !62
  %i.os = load ptr, ptr %11, align 8, !tbaa !60
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.or
  store i8 0, ptr %i.ot, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ou = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc136 unwind label %.loopexit

.noexc136:                                        ; preds = %bb.be
  %i.ov = call ptr @__dynamic_cast(ptr nonnull %i.ou, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIjE, i64 0) #26 ; 6 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %bb.bf, label %_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.bf:                                            ; preds = %.noexc136
  invoke void @__cxa_bad_cast() #27
          to label %.noexc137 unwind label %.loopexit.split-lp

.noexc137:                                        ; preds = %bb.bf
  unreachable

_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %i.p, ptr %12, align 8, !tbaa !56
  %i.ox = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ox, ptr %i.a, align 8, !tbaa !59
  %i.oy = icmp ugt i64 %i.ox, 15
  br i1 %i.oy, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.oz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bq ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.oz, ptr %12, align 8, !tbaa !60
  %i.pa = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.pa, ptr %i.p, align 8, !tbaa !51
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc140, %_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.pb = phi ptr [ %i.oz, %.noexc140 ], [ %i.p, %_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  switch i64 %i.ox, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %bb.bi
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i138
  %i.pc = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.pc, ptr %i.pb, align 1, !tbaa !51
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i.i138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pb, ptr nonnull align 1 %i.z, i64 %i.ox, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %._crit_edge.i.i138
  %i.pd = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.pd, ptr %i.q, align 8, !tbaa !62
  %i.pe = load ptr, ptr %12, align 8, !tbaa !60
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.pd
  store i8 0, ptr %i.pf, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.pg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc142 unwind label %.loopexit218

.noexc142:                                        ; preds = %bb.bi
  %i.ph = call ptr @__dynamic_cast(ptr nonnull %i.pg, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIjE, i64 0) #26 ; 6 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %bb.bj, label %_ZN5Image12typedChannelIjEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.bj:                                            ; preds = %.noexc142
  invoke void @__cxa_bad_cast() #27
          to label %.noexc143 unwind label %.loopexit.split-lp219

.noexc143:                                        ; preds = %bb.bj
  unreachable

_ZN5Image12typedChannelIjEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc142
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !116, !nonnull !119, !align !120 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !121
  %i.pn = load i32, ptr %i.pk, align 8, !tbaa !128
  %i.po = add i32 %i.pm, 1
  %i.pp = sub i32 %i.po, %i.pn                    ; 6 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !116, !nonnull !119, !align !120 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !121
  %i.pu = load i32, ptr %i.pr, align 8, !tbaa !128
  %i.pv = add i32 %i.pt, 1
  %i.pw = sub i32 %i.pv, %i.pu                    ; 8 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  %i.py = load i32, ptr %i.px, align 4, !tbaa !129
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !130
  %i.qb = add i32 %i.py, 1
  %i.qc = sub i32 %i.qb, %i.qa                    ; 4 uses
  br i1 %.sroa.0.0.i.i, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %_ZN5Image12typedChannelIjEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.qd = icmp sgt i32 %i.pw, 1
  br i1 %i.qd, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.qe = add nsw i32 %i.pp, -2
  %i.qf = sitofp i32 %i.qe to double
  %i.qg = add nsw i32 %i.pw, -1
  %i.qh = uitofp nneg i32 %i.qg to double
  %i.qi = fdiv double %i.qf, %i.qh
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.qj = phi double [ %i.qi, %bb.bl ], [ 1.000000e+00, %bb.bk ]
  %i.qk = icmp sgt i32 %i.qc, 0
  br i1 %i.qk, label %.preheader.lr.ph.i161, label %_ZN12_GLOBAL__N_17reduceXIjEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit

.preheader.lr.ph.i161:                            ; preds = %bb.bm
  %i.ql = icmp sgt i32 %i.pw, 0
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  br i1 %i.ql, label %.preheader.lr.ph.split.i162, label %_ZN12_GLOBAL__N_17reduceXIjEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit

.preheader.lr.ph.split.i162:                      ; preds = %.preheader.lr.ph.i161
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !166
  %i.qr = load i64, ptr %i.qo, align 8, !tbaa !168
  %wide.trip.count26.i163 = zext nneg i32 %i.qc to i64
  %wide.trip.count21.i164 = zext nneg i32 %i.pw to i64
  br label %.preheader.i165

.preheader.i165:                                  ; preds = %._crit_edge9.i172, %.preheader.lr.ph.split.i162
  %indvars.iv23.i166 = phi i64 [ 0, %.preheader.lr.ph.split.i162 ], [ %indvars.iv.next24.i173, %._crit_edge9.i172 ] ; 3 uses
  %i.qs = mul nsw i64 %indvars.iv23.i166, %i.qr
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qq, i64 %i.qs
  %i.qu = trunc nuw nsw i64 %indvars.iv23.i166 to i32 ; 4 uses
  br label %bb.bn

._crit_edge9.i172:                                ; preds = %bb.bn
  %indvars.iv.next24.i173 = add nuw nsw i64 %indvars.iv23.i166, 1 ; 2 uses
  %exitcond27.not.i174 = icmp eq i64 %indvars.iv.next24.i173, %wide.trip.count26.i163
  br i1 %exitcond27.not.i174, label %_ZN12_GLOBAL__N_17reduceXIjEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit, label %.preheader.i165, !llvm.loop !169

bb.bn:                                            ; preds = %bb.bn, %.preheader.i165
  %indvars.iv18.i167 = phi i64 [ 0, %.preheader.i165 ], [ %indvars.iv.next19.i170, %bb.bn ] ; 3 uses
  %i.qv = trunc nuw nsw i64 %indvars.iv18.i167 to i32
  %i.qw = uitofp nneg i32 %i.qv to double
  %i.qx = fmul double %i.qj, %i.qw                ; 4 uses
  %.val.i168 = load i64, ptr %i.qm, align 8       ; 4 uses
  %.val41.i169 = load ptr, ptr %i.qn, align 8     ; 4 uses
  %i.qy = fadd double %i.qx, -1.000000e+00
  %i.qz = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIjEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i168, ptr readonly %.val41.i169, i32 noundef %i.pp, double noundef %i.qy, i32 noundef %i.qu, i32 noundef %2)
  %i.ra = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIjEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i168, ptr readonly %.val41.i169, i32 noundef %i.pp, double noundef %i.qx, i32 noundef %i.qu, i32 noundef %2)
  %i.rb = fmul double %i.ra, 3.750000e-01
  %i.rc = call double @llvm.fmuladd.f64(double %i.qz, double 1.250000e-01, double %i.rb)
  %i.rd = fadd double %i.qx, 1.000000e+00
  %i.re = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIjEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i168, ptr readonly %.val41.i169, i32 noundef %i.pp, double noundef %i.rd, i32 noundef %i.qu, i32 noundef %2)
  %i.rf = call double @llvm.fmuladd.f64(double %i.re, double 3.750000e-01, double %i.rc)
  %i.rg = fadd double %i.qx, 2.000000e+00
  %i.rh = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIjEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.val.i168, ptr readonly %.val41.i169, i32 noundef %i.pp, double noundef %i.rg, i32 noundef %i.qu, i32 noundef %2)
  %i.ri = call double @llvm.fmuladd.f64(double %i.rh, double 1.250000e-01, double %i.rf)
  %i.rj = fptoui double %i.ri to i32
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv18.i167
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !110
  %indvars.iv.next19.i170 = add nuw nsw i64 %indvars.iv18.i167, 1 ; 2 uses
  %exitcond22.not.i171 = icmp eq i64 %indvars.iv.next19.i170, %wide.trip.count21.i164
  br i1 %exitcond22.not.i171, label %._crit_edge9.i172, label %bb.bn, !llvm.loop !170

bb.bo:                                            ; preds = %_ZN5Image12typedChannelIjEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.rl = icmp sgt i32 %i.qc, 0
  %i.rm = icmp sgt i32 %i.pw, 0
  %or.cond203 = select i1 %i.rl, i1 %i.rm, i1 false
  br i1 %or.cond203, label %.preheader4.lr.ph.split.i146, label %_ZN12_GLOBAL__N_17reduceXIjEEvRK17TypedImageChannelIT_ERS3_bR13Extrapolationb.exit

.preheader4.lr.ph.split.i146:                     ; preds = %bb.bo
  %reass.sub.i144 = add i32 %i.pp, 1
  %i.rn = shl nuw i32 %i.pw, 1
  %i.ro = sub i32 %reass.sub.i144, %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !168 ; 3 uses
  %i.rv = load ptr, ptr %i.rs, align 8, !tbaa !166 ; 3 uses
  %i.rw = load i64, ptr %i.rr, align 8, !tbaa !168 ; 2 uses
  %i.rx = sext i32 %i.ro to i64
  %i.ry = select i1 %3, i64 %i.rx, i64 0          ; 2 uses
  %wide.trip.count16.i147 = zext nneg i32 %i.qc to i64 ; 2 uses
  %wide.trip.count.i148 = zext nneg i32 %i.pw to i64 ; 7 uses
  %invariant.gep31.i149 = getelementptr [4 x i8], ptr %i.rq, i64 %i.ry ; 2 uses
  %i.rz = shl i64 %i.rw, 2                        ; 2 uses
  %i.sa = add nsw i64 %wide.trip.count16.i147, -1 ; 2 uses
  %i.sb = mul i64 %i.rz, %i.sa
  %i.sc = shl nuw nsw i64 %wide.trip.count.i148, 2
  %i.sd = getelementptr i8, ptr %i.rv, i64 %i.sb
  %scevgep379 = getelementptr i8, ptr %i.sd, i64 %i.sc
  %scevgep380 = getelementptr i8, ptr %i.rq, i64 -4
  %i.se = shl i64 %i.ru, 2
  %i.sf = mul i64 %i.se, %i.sa
  %i.sg = shl nuw nsw i64 %wide.trip.count.i148, 3
  %i.sh = shl nsw i64 %i.ry, 2
  %i.si = getelementptr i8, ptr %scevgep380, i64 %i.sf
  %i.sj = getelementptr i8, ptr %i.si, i64 %i.sg
  %scevgep381 = getelementptr i8, ptr %i.sj, i64 %i.sh
  %min.iters.check388 = icmp ult i32 %i.pw, 9
  %bound0382 = icmp ult ptr %i.rv, %scevgep381
  %bound1383 = icmp ult ptr %invariant.gep31.i149, %scevgep379
  %found.conflict384 = and i1 %bound0382, %bound1383
  %stride.check385 = icmp slt i64 %i.rz, 0
  %i.sk = or i1 %found.conflict384, %stride.check385
  %.mask = and i64 %i.ru, 2305843009213693952
  %stride.check386 = icmp ne i64 %.mask, 0
  %i.sl = or i1 %i.sk, %stride.check386
  %i.sm = and i64 %wide.trip.count.i148, 7        ; 2 uses
  %i.sn = icmp eq i64 %i.sm, 0
  %i.so = select i1 %i.sn, i64 8, i64 %i.sm
  %n.vec390 = sub nsw i64 %wide.trip.count.i148, %i.so ; 2 uses
  br label %.preheader4.i150

.preheader4.i150:                                 ; preds = %._crit_edge.i158, %.preheader4.lr.ph.split.i146
  %indvars.iv13.i151 = phi i64 [ 0, %.preheader4.lr.ph.split.i146 ], [ %indvars.iv.next14.i159, %._crit_edge.i158 ] ; 3 uses
  %i.sp = mul nsw i64 %indvars.iv13.i151, %i.ru
  %i.sq = mul nsw i64 %indvars.iv13.i151, %i.rw
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.sq ; 6 uses
  %gep32.i152 = getelementptr [4 x i8], ptr %invariant.gep31.i149, i64 %i.sp ; 7 uses
  %brmerge412 = select i1 %min.iters.check388, i1 true, i1 %i.sl
  br i1 %brmerge412, label %scalar.ph387.preheader, label %vector.body391

scalar.ph387.preheader:                           ; preds = %.preheader4.i150, %vector.body391
  %indvars.iv.i153.ph = phi i64 [ %n.vec390, %vector.body391 ], [ 0, %.preheader4.i150 ] ; 4 uses
  %i.ss = sub nsw i64 %wide.trip.count.i148, %indvars.iv.i153.ph
  %xtraiter = and i64 %i.ss, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph387.prol.loopexit, label %scalar.ph387.prol

scalar.ph387.prol:                                ; preds = %scalar.ph387.preheader, %scalar.ph387.prol
  %indvars.iv.i153.prol = phi i64 [ %indvars.iv.next.i156.prol, %scalar.ph387.prol ], [ %indvars.iv.i153.ph, %scalar.ph387.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph387.prol ], [ 0, %scalar.ph387.preheader ]
  %.idx.i154.prol = shl nuw nsw i64 %indvars.iv.i153.prol, 3
  %gep.i155.prol = getelementptr i8, ptr %gep32.i152, i64 %.idx.i154.prol
  %i.st = load i32, ptr %gep.i155.prol, align 4, !tbaa !110
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv.i153.prol
  store i32 %i.st, ptr %i.su, align 4, !tbaa !110
  %indvars.iv.next.i156.prol = add nuw nsw i64 %indvars.iv.i153.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph387.prol.loopexit, label %scalar.ph387.prol, !llvm.loop !171

scalar.ph387.prol.loopexit:                       ; preds = %scalar.ph387.prol, %scalar.ph387.preheader
  %indvars.iv.i153.unr = phi i64 [ %indvars.iv.i153.ph, %scalar.ph387.preheader ], [ %indvars.iv.next.i156.prol, %scalar.ph387.prol ]
  %i.sv = sub nsw i64 %indvars.iv.i153.ph, %wide.trip.count.i148
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_17reduceYERKN7Imf_3_411ChannelListERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EE13ExtrapolationbRK5ImageRSI_:bb.a
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.h = tail call ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  %i.i = tail call ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %.not283 = icmp eq ptr %i.h, %i.i
  br i1 %.not283, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.bq, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.bq
  %.sroa.0193.0284 = phi ptr [ %i.h, %.lr.ph ], [ %i.uv, %bb.bq ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0193.0284, i64 32 ; 21 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0193.0284, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.j, ptr %6, align 8, !tbaa !56
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.ab, ptr %i.g, align 8, !tbaa !59
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !60
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !59
  store i64 %i.ae, ptr %i.j, align 8, !tbaa !51
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.af = phi ptr [ %i.ad, %.noexc.i ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %i.ab, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !51
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !51
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !62
  %i.ai = load ptr, ptr %6, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !18  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ak, null
  %.pre = load ptr, ptr %6, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.al = load i64, ptr %i.k, align 8, !tbaa !62  ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !62 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !60
  %i.ar = call i32 @memcmp(ptr noundef %i.aq, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.as = sub i64 %i.an, %i.al
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.as, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ar, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.at = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.at, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.f, !llvm.loop !115

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.au, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !62 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.al) ; 2 uses
  %i.ax = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !60
  %i.ba = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.az, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.bb = sub i64 %i.al, %i.aw
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bb, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bc = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi i1 [ true, %bb.e ], [ true, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i ], [ %i.bc, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 3 uses
  %i.bd = icmp eq ptr %.pre, %i.j
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.be = load i64, ptr %i.j, align 8, !tbaa !51
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bg = load i32, ptr %i.aa, align 4, !tbaa !63
  switch i32 %i.bg, label %bb.bq [
    i32 1, label %bb.h
    i32 2, label %bb.ai
    i32 0, label %bb.az
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.v, ptr %7, align 8, !tbaa !56
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i64 %i.bh, ptr %i.f, align 8, !tbaa !59
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.noexc.i57, label %._crit_edge.i.i56

.noexc.i57:                                       ; preds = %bb.h
  %i.bj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc58 unwind label %bb.ae  ; 2 uses

.noexc58:                                         ; preds = %.noexc.i57
  store ptr %i.bj, ptr %7, align 8, !tbaa !60
  %i.bk = load i64, ptr %i.f, align 8, !tbaa !59
  store i64 %i.bk, ptr %i.v, align 8, !tbaa !51
  br label %._crit_edge.i.i56

._crit_edge.i.i56:                                ; preds = %.noexc58, %bb.h
  %i.bl = phi ptr [ %i.bj, %.noexc58 ], [ %i.v, %bb.h ] ; 2 uses
  switch i64 %i.bh, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i56
  %i.bm = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !51
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr nonnull align 1 %i.z, i64 %i.bh, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i56
  %i.bn = load i64, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  store i64 %i.bn, ptr %i.w, align 8, !tbaa !62
  %i.bo = load ptr, ptr %7, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc60 unwind label %.loopexit226

.noexc60:                                         ; preds = %bb.k
  %i.br = call ptr @__dynamic_cast(ptr nonnull %i.bq, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIN9Imath_3_24halfEE, i64 0) #26 ; 6 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.l, label %_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %.noexc60
  invoke void @__cxa_bad_cast() #27
          to label %.noexc61 unwind label %.loopexit.split-lp227

.noexc61:                                         ; preds = %bb.l
  unreachable

_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc60
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.x, ptr %8, align 8, !tbaa !56
  %i.bt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %i.bt, ptr %i.e, align 8, !tbaa !59
  %i.bu = icmp ugt i64 %i.bt, 15
  br i1 %i.bu, label %.noexc.i63, label %._crit_edge.i.i62

.noexc.i63:                                       ; preds = %_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc64 unwind label %bb.af  ; 2 uses

.noexc64:                                         ; preds = %.noexc.i63
  store ptr %i.bv, ptr %8, align 8, !tbaa !60
  %i.bw = load i64, ptr %i.e, align 8, !tbaa !59
  store i64 %i.bw, ptr %i.x, align 8, !tbaa !51
  br label %._crit_edge.i.i62

._crit_edge.i.i62:                                ; preds = %.noexc64, %_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bx = phi ptr [ %i.bv, %.noexc64 ], [ %i.x, %_ZNK5Image12typedChannelIN9Imath_3_24halfEEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  switch i64 %i.bt, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i62
  %i.by = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !51
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull align 1 %i.z, i64 %i.bt, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i62
  %i.bz = load i64, ptr %i.e, align 8, !tbaa !59  ; 2 uses
  store i64 %i.bz, ptr %i.y, align 8, !tbaa !62
  %i.ca = load ptr, ptr %8, align 8, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc66 unwind label %.loopexit231

.noexc66:                                         ; preds = %bb.o
  %i.cd = call ptr @__dynamic_cast(ptr nonnull %i.cc, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIN9Imath_3_24halfEE, i64 0) #26 ; 6 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.p, label %_ZN5Image12typedChannelIN9Imath_3_24halfEEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.p:                                             ; preds = %.noexc66
  invoke void @__cxa_bad_cast() #27
          to label %.noexc67 unwind label %.loopexit.split-lp232

.noexc67:                                         ; preds = %bb.p
  unreachable

_ZN5Image12typedChannelIN9Imath_3_24halfEEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc66
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !116, !nonnull !119, !align !120 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !121
  %i.cj = load i32, ptr %i.cg, align 8, !tbaa !128
  %i.ck = add i32 %i.ci, 1
  %i.cl = sub i32 %i.ck, %i.cj                    ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !116, !nonnull !119, !align !120 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !129
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !130
  %i.cs = add i32 %i.cp, 1
  %i.ct = sub i32 %i.cs, %i.cr                    ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !129
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !130
  %i.cy = add i32 %i.cv, 1
  %i.cz = sub i32 %i.cy, %i.cx                    ; 7 uses
  br i1 %.sroa.0.0.i.i, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZN5Image12typedChannelIN9Imath_3_24halfEEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %.thread.i, label %bb.r

.thread.i:                                        ; preds = %bb.q
  %i.db = add nsw i32 %i.ct, -2
  %i.dc = sitofp i32 %i.db to double
  %i.dd = add nsw i32 %i.cz, -1
  %i.de = uitofp nneg i32 %i.dd to double
  %i.df = fdiv double %i.dc, %i.de
  br label %.preheader.lr.ph.i

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp eq i32 %i.cz, 1
  br i1 %i.dg, label %.preheader.lr.ph.i, label %_ZN12_GLOBAL__N_17reduceYIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_b13Extrapolationb.exit

.preheader.lr.ph.i:                               ; preds = %bb.r, %.thread.i
  %i.dh = phi double [ %i.df, %.thread.i ], [ 1.000000e+00, %bb.r ]
  %i.di = icmp sgt i32 %i.cl, 0
  %i.dj = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  br i1 %i.di, label %.preheader.lr.ph.split.i, label %_ZN12_GLOBAL__N_17reduceYIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_b13Extrapolationb.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !131
  %i.do = load i64, ptr %i.dl, align 8, !tbaa !134
  %wide.trip.count67.i = zext nneg i32 %i.cz to i64
  %wide.trip.count62.i = zext nneg i32 %i.cl to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge50.i, %.preheader.lr.ph.split.i
  %indvars.iv64.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next65.i, %._crit_edge50.i ] ; 3 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv64.i to i32
  %i.dq = uitofp nneg i32 %i.dp to double
  %i.dr = fmul double %i.dh, %i.dq                ; 4 uses
  %i.ds = fadd double %i.dr, -1.000000e+00
  %i.dt = fadd double %i.dr, 1.000000e+00
  %i.du = fadd double %i.dr, 2.000000e+00
  %i.dv = mul nsw i64 %indvars.iv64.i, %i.do
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.dn, i64 %i.dv
  br label %bb.s

._crit_edge50.i:                                  ; preds = %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %_ZN12_GLOBAL__N_17reduceYIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_b13Extrapolationb.exit, label %.preheader.i, !llvm.loop !181

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i, %.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next60.i, %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i ] ; 3 uses
  %.val.i = load i64, ptr %i.dj, align 8          ; 4 uses
  %.val41.i = load ptr, ptr %i.dk, align 8        ; 4 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv59.i to i32 ; 4 uses
  %i.dy = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i, ptr readonly %.val41.i, i32 noundef %i.ct, i32 noundef %i.dx, double noundef %i.ds, i32 noundef %2)
  %i.dz = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i, ptr readonly %.val41.i, i32 noundef %i.ct, i32 noundef %i.dx, double noundef %i.dr, i32 noundef %2)
  %i.ea = fmul double %i.dz, 3.750000e-01
  %i.eb = call double @llvm.fmuladd.f64(double %i.dy, double 1.250000e-01, double %i.ea)
  %i.ec = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i, ptr readonly %.val41.i, i32 noundef %i.ct, i32 noundef %i.dx, double noundef %i.dt, i32 noundef %2)
  %i.ed = call double @llvm.fmuladd.f64(double %i.ec, double 3.750000e-01, double %i.eb)
  %i.ee = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i, ptr readonly %.val41.i, i32 noundef %i.ct, i32 noundef %i.dx, double noundef %i.du, i32 noundef %2)
  %i.ef = call double @llvm.fmuladd.f64(double %i.ee, double 1.250000e-01, double %i.ed)
  %i.eg = fptrunc double %i.ef to float           ; 2 uses
  %i.eh = bitcast float %i.eg to i32
  %i.ei = call float @llvm.fabs.f32(float %i.eg)
  %i.ej = bitcast float %i.ei to i32              ; 10 uses
  %i.ek = lshr i32 %i.eh, 16                      ; 3 uses
  %i.el = trunc nuw i32 %i.ek to i16
  %i.em = and i16 %i.el, -32768                   ; 3 uses
  %i.en = icmp samesign ugt i32 %i.ej, 947912703
  br i1 %i.en, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.eo = icmp samesign ugt i32 %i.ej, 2139095039
  br i1 %i.eo, label %bb.u, label %bb.w, !prof !111

bb.u:                                             ; preds = %bb.t
  %i.ep = or disjoint i16 %i.em, 31744            ; 2 uses
  %i.eq = icmp eq i32 %i.ej, 2139095040
  br i1 %i.eq, label %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = lshr i32 %i.ej, 13
  %i.es = and i32 %i.er, 1023                     ; 2 uses
  %i.et = icmp eq i32 %i.es, 0
  %i.eu = zext i1 %i.et to i16
  %i.ev = trunc nuw nsw i32 %i.es to i16
  %i.ew = or i16 %i.ev, %i.eu
  %i.ex = or disjoint i16 %i.ew, %i.ep
  br label %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i

bb.w:                                             ; preds = %bb.t
  %i.ey = icmp samesign ugt i32 %i.ej, 1199566847
  br i1 %i.ey, label %bb.x, label %bb.y, !prof !111

bb.x:                                             ; preds = %bb.w
  %i.ez = or disjoint i16 %i.em, 31744
  br label %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i

bb.y:                                             ; preds = %bb.w
  %i.fa = add nuw nsw i32 %i.ej, 134221823
  %i.fb = lshr i32 %i.ej, 13
  %i.fc = and i32 %i.fb, 1
  %i.fd = add nuw nsw i32 %i.fa, %i.fc
  %i.fe = lshr i32 %i.fd, 13
  %i.ff = and i32 %i.ek, 32768
  %i.fg = or i32 %i.fe, %i.ff
  %i.fh = trunc i32 %i.fg to i16
  br label %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i

bb.z:                                             ; preds = %bb.s
  %i.fi = icmp samesign ult i32 %i.ej, 855638017
  br i1 %i.fi, label %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = lshr i32 %i.ej, 23                      ; 2 uses
  %i.fk = sub nuw nsw i32 126, %i.fj
  %i.fl = and i32 %i.ej, 8388607
  %i.fm = or disjoint i32 %i.fl, 8388608          ; 2 uses
  %i.fn = add nsw i32 %i.fj, -94
  %i.fo = shl i32 %i.fm, %i.fn                    ; 2 uses
  %i.fp = lshr i32 %i.fm, %i.fk                   ; 2 uses
  %i.fq = and i32 %i.ek, 32768
  %i.fr = or i32 %i.fp, %i.fq
  %i.fs = trunc nuw i32 %i.fr to i16              ; 2 uses
  %i.ft = icmp ugt i32 %i.fo, -2147483648
  br i1 %i.ft, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = icmp ne i32 %i.fo, -2147483648
  %i.fv = and i32 %i.fp, 1
  %.not.i.i.i.i = icmp eq i32 %i.fv, 0
  %or.cond.i.i.i.i = select i1 %i.fu, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fw = add nuw i16 %i.fs, 1
  br label %_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i

_ZN12_GLOBAL__N_17filterYIN9Imath_3_24halfEEET_RK17TypedImageChannelIS3_Eiid13Extrapolation.exit.i: ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u
  %.033.i.i.i.i = phi i16 [ %i.em, %bb.z ], [ %i.ex, %bb.v ], [ %i.ez, %bb.x ], [ %i.fh, %bb.y ], [ %i.ep, %bb.u ], [ %i.fw, %bb.ac ], [ %i.fs, %bb.ab ]
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %indvars.iv59.i
  store i16 %.033.i.i.i.i, ptr %i.fx, align 2, !tbaa !136
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge50.i, label %bb.s, !llvm.loop !182

bb.ad:                                            ; preds = %_ZN5Image12typedChannelIN9Imath_3_24halfEEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fy = icmp sgt i32 %i.cz, 0
  %i.fz = icmp sgt i32 %i.cl, 0
  %or.cond.i = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %or.cond.i, label %.preheader45.lr.ph.split.i, label %_ZN12_GLOBAL__N_17reduceYIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_b13Extrapolationb.exit
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_17reduceYERKN7Imf_3_411ChannelListERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EE13ExtrapolationbRK5ImageRSI_:bb.a
  br i1 %i.hm, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !189

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index350 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next352, %vec.epilog.vector.body ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %index350
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %index350
  %wide.load351 = load <4 x i16>, ptr %i.hn, align 2, !tbaa !136, !alias.scope !183
  store <4 x i16> %wide.load351, ptr %i.ho, align 2, !tbaa !136, !alias.scope !186, !noalias !183
  %index.next352 = add nuw i64 %index350, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next352, %n.vec349
  br i1 %i.hp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !190

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n353, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec349, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod404.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter405 = phi i64 [ %prol.iter405.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %indvars.iv.i.prol
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %indvars.iv.i.prol
  %i.hs = load i16, ptr %i.hq, align 2, !tbaa !136
  store i16 %i.hs, ptr %i.hr, align 2, !tbaa !136
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter405.next = add i64 %prol.iter405, 1   ; 2 uses
  %prol.iter405.cmp.not = icmp eq i64 %prol.iter405.next, %xtraiter403
  br i1 %prol.iter405.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !191

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ht = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %_ZN12_GLOBAL__N_17reduceYIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_b13Extrapolationb.exit, label %iter.check, !llvm.loop !192

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %indvars.iv.i
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %indvars.iv.i
  %i.hx = load i16, ptr %i.hv, align 2, !tbaa !136
  store i16 %i.hx, ptr %i.hw, align 2, !tbaa !136
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %indvars.iv.next.i
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %indvars.iv.next.i
  %i.ia = load i16, ptr %i.hy, align 2, !tbaa !136
  store i16 %i.ia, ptr %i.hz, align 2, !tbaa !136
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %indvars.iv.next.i.1
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %indvars.iv.next.i.1
  %i.id = load i16, ptr %i.ib, align 2, !tbaa !136
  store i16 %i.id, ptr %i.ic, align 2, !tbaa !136
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %indvars.iv.next.i.2
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %indvars.iv.next.i.2
  %i.ig = load i16, ptr %i.ie, align 2, !tbaa !136
  store i16 %i.ig, ptr %i.if, align 2, !tbaa !136
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !193

_ZN12_GLOBAL__N_17reduceYIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_b13Extrapolationb.exit: ; preds = %._crit_edge.i, %._crit_edge50.i, %bb.ad, %.preheader.lr.ph.i, %bb.r
  %i.ih = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.x
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN12_GLOBAL__N_17reduceYIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_b13Extrapolationb.exit
  %i.ij = load i64, ptr %i.x, align 8, !tbaa !51
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN12_GLOBAL__N_17reduceYIN9Imath_3_24halfEEEvRK17TypedImageChannelIT_ERS5_b13Extrapolationb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.il = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.v
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.in = load i64, ptr %i.v, align 8, !tbaa !51
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bq

bb.ae:                                            ; preds = %.noexc.i57
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

.loopexit226:                                     ; preds = %bb.k
  %lpad.loopexit228 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp227:                            ; preds = %bb.l
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %.noexc.i63
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

.loopexit231:                                     ; preds = %bb.o
  %lpad.loopexit233 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp232:                            ; preds = %bb.p
  %lpad.loopexit.split-lp234 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp232, %.loopexit231
  %lpad.phi235 = phi { ptr, i32 } [ %lpad.loopexit233, %.loopexit231 ], [ %lpad.loopexit.split-lp234, %.loopexit.split-lp232 ] ; 2 uses
  %i.ir = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.x
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ag
  %i.it = load i64, ptr %i.x, align 8, !tbaa !51
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.af
  %.pn48 = phi { ptr, i32 } [ %i.iq, %bb.af ], [ %lpad.phi235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %lpad.phi235, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit226, %.loopexit.split-lp227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %lpad.loopexit228, %.loopexit226 ], [ %lpad.loopexit.split-lp229, %.loopexit.split-lp227 ] ; 2 uses
  %i.iv = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.v
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ah
  %i.ix = load i64, ptr %i.v, align 8, !tbaa !51
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.ae
  %.pn48.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.ae ], [ %.pn48.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn48.pn, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.br

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.r, ptr %9, align 8, !tbaa !56
  %i.iz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.iz, ptr %i.d, align 8, !tbaa !59
  %i.ja = icmp ugt i64 %i.iz, 15
  br i1 %i.ja, label %.noexc.i81, label %._crit_edge.i.i80

.noexc.i81:                                       ; preds = %bb.ai
  %i.jb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc82 unwind label %bb.av  ; 2 uses

.noexc82:                                         ; preds = %.noexc.i81
  store ptr %i.jb, ptr %9, align 8, !tbaa !60
  %i.jc = load i64, ptr %i.d, align 8, !tbaa !59
  store i64 %i.jc, ptr %i.r, align 8, !tbaa !51
  br label %._crit_edge.i.i80

._crit_edge.i.i80:                                ; preds = %.noexc82, %bb.ai
  %i.jd = phi ptr [ %i.jb, %.noexc82 ], [ %i.r, %bb.ai ] ; 2 uses
  switch i64 %i.iz, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i80
  %i.je = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.je, ptr %i.jd, align 1, !tbaa !51
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jd, ptr nonnull align 1 %i.z, i64 %i.iz, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i80
  %i.jf = load i64, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  store i64 %i.jf, ptr %i.s, align 8, !tbaa !62
  %i.jg = load ptr, ptr %9, align 8, !tbaa !60
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jf
  store i8 0, ptr %i.jh, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.ji = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc84 unwind label %.loopexit216

.noexc84:                                         ; preds = %bb.al
  %i.jj = call ptr @__dynamic_cast(ptr nonnull %i.ji, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIfE, i64 0) #26 ; 6 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %bb.am, label %_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.am:                                            ; preds = %.noexc84
  invoke void @__cxa_bad_cast() #27
          to label %.noexc85 unwind label %.loopexit.split-lp217

.noexc85:                                         ; preds = %bb.am
  unreachable

_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %i.t, ptr %10, align 8, !tbaa !56
  %i.jl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.jl, ptr %i.c, align 8, !tbaa !59
  %i.jm = icmp ugt i64 %i.jl, 15
  br i1 %i.jm, label %.noexc.i87, label %._crit_edge.i.i86

.noexc.i87:                                       ; preds = %_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc88 unwind label %bb.aw  ; 2 uses

.noexc88:                                         ; preds = %.noexc.i87
  store ptr %i.jn, ptr %10, align 8, !tbaa !60
  %i.jo = load i64, ptr %i.c, align 8, !tbaa !59
  store i64 %i.jo, ptr %i.t, align 8, !tbaa !51
  br label %._crit_edge.i.i86

._crit_edge.i.i86:                                ; preds = %.noexc88, %_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jp = phi ptr [ %i.jn, %.noexc88 ], [ %i.t, %_ZNK5Image12typedChannelIfEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  switch i64 %i.jl, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i86
  %i.jq = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.jq, ptr %i.jp, align 1, !tbaa !51
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jp, ptr nonnull align 1 %i.z, i64 %i.jl, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i86
  %i.jr = load i64, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  store i64 %i.jr, ptr %i.u, align 8, !tbaa !62
  %i.js = load ptr, ptr %10, align 8, !tbaa !60
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jr
  store i8 0, ptr %i.jt, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ju = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc90 unwind label %.loopexit221

.noexc90:                                         ; preds = %bb.ap
  %i.jv = call ptr @__dynamic_cast(ptr nonnull %i.ju, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIfE, i64 0) #26 ; 6 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.aq, label %_ZN5Image12typedChannelIfEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.aq:                                            ; preds = %.noexc90
  invoke void @__cxa_bad_cast() #27
          to label %.noexc91 unwind label %.loopexit.split-lp222

.noexc91:                                         ; preds = %bb.aq
  unreachable

_ZN5Image12typedChannelIfEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc90
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !116, !nonnull !119, !align !120 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !121
  %i.kb = load i32, ptr %i.jy, align 8, !tbaa !128
  %i.kc = add i32 %i.ka, 1
  %i.kd = sub i32 %i.kc, %i.kb                    ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !116, !nonnull !119, !align !120 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !129
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !130
  %i.kk = add i32 %i.kh, 1
  %i.kl = sub i32 %i.kk, %i.kj                    ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !129
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !130
  %i.kq = add i32 %i.kn, 1
  %i.kr = sub i32 %i.kq, %i.kp                    ; 7 uses
  br i1 %.sroa.0.0.i.i, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN5Image12typedChannelIfEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ks = icmp sgt i32 %i.kr, 1
  br i1 %i.ks, label %.thread.i119, label %bb.as

.thread.i119:                                     ; preds = %bb.ar
  %i.kt = add nsw i32 %i.kl, -2
  %i.ku = sitofp i32 %i.kt to double
  %i.kv = add nsw i32 %i.kr, -1
  %i.kw = uitofp nneg i32 %i.kv to double
  %i.kx = fdiv double %i.ku, %i.kw
  br label %.preheader.lr.ph.i105

bb.as:                                            ; preds = %bb.ar
  %i.ky = icmp eq i32 %i.kr, 1
  br i1 %i.ky, label %.preheader.lr.ph.i105, label %_ZN12_GLOBAL__N_17reduceYIfEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit

.preheader.lr.ph.i105:                            ; preds = %bb.as, %.thread.i119
  %i.kz = phi double [ %i.kx, %.thread.i119 ], [ 1.000000e+00, %bb.as ]
  %i.la = icmp sgt i32 %i.kd, 0
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  br i1 %i.la, label %.preheader.lr.ph.split.i106, label %_ZN12_GLOBAL__N_17reduceYIfEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit

.preheader.lr.ph.split.i106:                      ; preds = %.preheader.lr.ph.i105
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.le = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !151
  %i.lg = load i64, ptr %i.ld, align 8, !tbaa !154
  %wide.trip.count67.i107 = zext nneg i32 %i.kr to i64
  %wide.trip.count62.i108 = zext nneg i32 %i.kd to i64
  br label %.preheader.i109

.preheader.i109:                                  ; preds = %._crit_edge50.i116, %.preheader.lr.ph.split.i106
  %indvars.iv64.i110 = phi i64 [ 0, %.preheader.lr.ph.split.i106 ], [ %indvars.iv.next65.i117, %._crit_edge50.i116 ] ; 3 uses
  %i.lh = trunc nuw nsw i64 %indvars.iv64.i110 to i32
  %i.li = uitofp nneg i32 %i.lh to double
  %i.lj = fmul double %i.kz, %i.li                ; 4 uses
  %i.lk = fadd double %i.lj, -1.000000e+00
  %i.ll = fadd double %i.lj, 1.000000e+00
  %i.lm = fadd double %i.lj, 2.000000e+00
  %i.ln = mul nsw i64 %indvars.iv64.i110, %i.lg
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.ln
  br label %bb.at

._crit_edge50.i116:                               ; preds = %bb.at
  %indvars.iv.next65.i117 = add nuw nsw i64 %indvars.iv64.i110, 1 ; 2 uses
  %exitcond68.not.i118 = icmp eq i64 %indvars.iv.next65.i117, %wide.trip.count67.i107
  br i1 %exitcond68.not.i118, label %_ZN12_GLOBAL__N_17reduceYIfEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit, label %.preheader.i109, !llvm.loop !194

bb.at:                                            ; preds = %bb.at, %.preheader.i109
  %indvars.iv59.i111 = phi i64 [ 0, %.preheader.i109 ], [ %indvars.iv.next60.i114, %bb.at ] ; 3 uses
  %.val.i112 = load i64, ptr %i.lb, align 8       ; 4 uses
  %.val41.i113 = load ptr, ptr %i.lc, align 8     ; 4 uses
  %i.lp = trunc nuw nsw i64 %indvars.iv59.i111 to i32 ; 4 uses
  %i.lq = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIfEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i112, ptr readonly %.val41.i113, i32 noundef %i.kl, i32 noundef %i.lp, double noundef %i.lk, i32 noundef %2)
  %i.lr = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIfEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i112, ptr readonly %.val41.i113, i32 noundef %i.kl, i32 noundef %i.lp, double noundef %i.lj, i32 noundef %2)
  %i.ls = fmul double %i.lr, 3.750000e-01
  %i.lt = call double @llvm.fmuladd.f64(double %i.lq, double 1.250000e-01, double %i.ls)
  %i.lu = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIfEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i112, ptr readonly %.val41.i113, i32 noundef %i.kl, i32 noundef %i.lp, double noundef %i.ll, i32 noundef %2)
  %i.lv = call double @llvm.fmuladd.f64(double %i.lu, double 3.750000e-01, double %i.lt)
  %i.lw = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIfEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i112, ptr readonly %.val41.i113, i32 noundef %i.kl, i32 noundef %i.lp, double noundef %i.lm, i32 noundef %2)
  %i.lx = call double @llvm.fmuladd.f64(double %i.lw, double 1.250000e-01, double %i.lv)
  %i.ly = fptrunc double %i.lx to float
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %indvars.iv59.i111
  store float %i.ly, ptr %i.lz, align 4, !tbaa !9
  %indvars.iv.next60.i114 = add nuw nsw i64 %indvars.iv59.i111, 1 ; 2 uses
  %exitcond63.not.i115 = icmp eq i64 %indvars.iv.next60.i114, %wide.trip.count62.i108
  br i1 %exitcond63.not.i115, label %._crit_edge50.i116, label %bb.at, !llvm.loop !195

bb.au:                                            ; preds = %_ZN5Image12typedChannelIfEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ma = icmp sgt i32 %i.kr, 0
  %i.mb = icmp sgt i32 %i.kd, 0
  %or.cond.i92 = select i1 %i.ma, i1 %i.mb, i1 false
  br i1 %or.cond.i92, label %.preheader45.lr.ph.split.i93, label %_ZN12_GLOBAL__N_17reduceYIfEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit

.preheader45.lr.ph.split.i93:                     ; preds = %bb.au
  %reass.sub.i94 = add i32 %i.kl, 1
  %i.mc = shl nuw i32 %i.kr, 1
  %i.md = sub i32 %reass.sub.i94, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.mf = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.mh = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !151 ; 3 uses
  %i.mj = load i64, ptr %i.mg, align 8, !tbaa !154 ; 4 uses
  %i.mk = load ptr, ptr %i.mf, align 8, !tbaa !151 ; 3 uses
  %i.ml = load i64, ptr %i.me, align 8, !tbaa !154 ; 2 uses
  %i.mm = sext i32 %i.md to i64
  %i.mn = select i1 %3, i64 %i.mm, i64 0          ; 3 uses
  %wide.trip.count57.i95 = zext nneg i32 %i.kr to i64 ; 3 uses
  %wide.trip.count.i96 = zext nneg i32 %i.kd to i64 ; 6 uses
  %i.mo = shl i64 %i.ml, 2                        ; 2 uses
  %i.mp = add nsw i64 %wide.trip.count57.i95, -1
  %i.mq = mul i64 %i.mo, %i.mp
  %i.mr = shl nuw nsw i64 %wide.trip.count.i96, 2 ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mk, i64 %i.mq
  %scevgep355 = getelementptr i8, ptr %i.ms, i64 %i.mr
  %i.mt = shl nsw i64 %i.mn, 2
  %i.mu = mul i64 %i.mt, %i.mj
  %scevgep356 = getelementptr i8, ptr %i.mi, i64 %i.mu
  %i.mv = shl nuw nsw i64 %wide.trip.count57.i95, 3
  %i.mw = add nsw i64 %i.mv, -8
  %i.mx = shl nsw i64 %i.mn, 2
  %i.my = add nsw i64 %i.mw, %i.mx
  %i.mz = mul i64 %i.mj, %i.my
  %i.na = getelementptr i8, ptr %i.mi, i64 %i.mz
  %scevgep357 = getelementptr i8, ptr %i.na, i64 %i.mr
  %min.iters.check363 = icmp ult i32 %i.kd, 8
  %bound0358 = icmp ult ptr %i.mk, %scevgep357
  %bound1359 = icmp ult ptr %scevgep356, %scevgep355
  %found.conflict360 = and i1 %bound0358, %bound1359
  %stride.check361 = icmp slt i64 %i.mo, 0
  %i.nb = or i1 %found.conflict360, %stride.check361
  %.mask395 = and i64 %i.mj, 1152921504606846976
  %stride.check362 = icmp ne i64 %.mask395, 0
  %i.nc = or i1 %i.nb, %stride.check362
  %n.vec365 = and i64 %wide.trip.count.i96, 2147483640 ; 3 uses
  %cmp.n372 = icmp eq i64 %n.vec365, %wide.trip.count.i96
  %xtraiter400 = and i64 %wide.trip.count.i96, 3  ; 2 uses
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br label %.preheader45.i97

.preheader45.i97:                                 ; preds = %._crit_edge.i102, %.preheader45.lr.ph.split.i93
  %indvars.iv54.i98 = phi i64 [ 0, %.preheader45.lr.ph.split.i93 ], [ %indvars.iv.next55.i103, %._crit_edge.i102 ] ; 3 uses
  %i.nd = shl nuw nsw i64 %indvars.iv54.i98, 1
  %i.ne = add nsw i64 %i.nd, %i.mn
  %i.nf = mul nsw i64 %i.ne, %i.mj
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.nf ; 6 uses
  %i.nh = mul nsw i64 %indvars.iv54.i98, %i.ml
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.mk, i64 %i.nh ; 6 uses
  %brmerge406 = select i1 %min.iters.check363, i1 true, i1 %i.nc
  br i1 %brmerge406, label %scalar.ph.preheader, label %vector.body366

vector.body366:                                   ; preds = %.preheader45.i97, %vector.body366
  %index367 = phi i64 [ %index.next370, %vector.body366 ], [ 0, %.preheader45.i97 ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %index367 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %wide.load368 = load <4 x float>, ptr %i.nj, align 4, !tbaa !9, !alias.scope !196
  %wide.load369 = load <4 x float>, ptr %i.nk, align 4, !tbaa !9, !alias.scope !196
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %index367 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store <4 x float> %wide.load368, ptr %i.nl, align 4, !tbaa !9, !alias.scope !199, !noalias !196
  store <4 x float> %wide.load369, ptr %i.nm, align 4, !tbaa !9, !alias.scope !199, !noalias !196
  %index.next370 = add nuw i64 %index367, 8       ; 2 uses
  %i.nn = icmp eq i64 %index.next370, %n.vec365
  br i1 %i.nn, label %middle.block371, label %vector.body366, !llvm.loop !201

middle.block371:                                  ; preds = %vector.body366
  br i1 %cmp.n372, label %._crit_edge.i102, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader45.i97, %middle.block371
  %indvars.iv.i99.ph = phi i64 [ %n.vec365, %middle.block371 ], [ 0, %.preheader45.i97 ] ; 3 uses
  br i1 %lcmp.mod401.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i99.prol = phi i64 [ %indvars.iv.next.i100.prol, %scalar.ph.prol ], [ %indvars.iv.i99.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter402 = phi i64 [ %prol.iter402.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.i99.prol
  %i.np = load float, ptr %i.no, align 4, !tbaa !9
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.i99.prol
  store float %i.np, ptr %i.nq, align 4, !tbaa !9
  %indvars.iv.next.i100.prol = add nuw nsw i64 %indvars.iv.i99.prol, 1 ; 2 uses
  %prol.iter402.next = add i64 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i64 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !202

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i99.unr = phi i64 [ %indvars.iv.i99.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i100.prol, %scalar.ph.prol ]
  %i.nr = sub nsw i64 %indvars.iv.i99.ph, %wide.trip.count.i96
  %i.ns = icmp ugt i64 %i.nr, -4
  br i1 %i.ns, label %._crit_edge.i102, label %scalar.ph

._crit_edge.i102:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block371
  %indvars.iv.next55.i103 = add nuw nsw i64 %indvars.iv54.i98, 1 ; 2 uses
  %exitcond58.not.i104 = icmp eq i64 %indvars.iv.next55.i103, %wide.trip.count57.i95
  br i1 %exitcond58.not.i104, label %_ZN12_GLOBAL__N_17reduceYIfEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit, label %.preheader45.i97, !llvm.loop !203

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i100.3, %scalar.ph ], [ %indvars.iv.i99.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.i99
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !9
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.i99
  store float %i.nu, ptr %i.nv, align 4, !tbaa !9
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next.i100
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !9
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.next.i100
  store float %i.nx, ptr %i.ny, align 4, !tbaa !9
  %indvars.iv.next.i100.1 = add nuw nsw i64 %indvars.iv.i99, 2 ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next.i100.1
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !9
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.next.i100.1
  store float %i.oa, ptr %i.ob, align 4, !tbaa !9
  %indvars.iv.next.i100.2 = add nuw nsw i64 %indvars.iv.i99, 3 ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next.i100.2
  %i.od = load float, ptr %i.oc, align 4, !tbaa !9
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.next.i100.2
  store float %i.od, ptr %i.oe, align 4, !tbaa !9
  %indvars.iv.next.i100.3 = add nuw nsw i64 %indvars.iv.i99, 4 ; 2 uses
  %exitcond.not.i101.3 = icmp eq i64 %indvars.iv.next.i100.3, %wide.trip.count.i96
  br i1 %exitcond.not.i101.3, label %._crit_edge.i102, label %scalar.ph, !llvm.loop !204

_ZN12_GLOBAL__N_17reduceYIfEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit: ; preds = %._crit_edge.i102, %._crit_edge50.i116, %bb.au, %.preheader.lr.ph.i105, %bb.as
  %i.of = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.t
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZN12_GLOBAL__N_17reduceYIfEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit
  %i.oh = load i64, ptr %i.t, align 8, !tbaa !51
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZN12_GLOBAL__N_17reduceYIfEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.oj = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.r
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.ol = load i64, ptr %i.r, align 8, !tbaa !51
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.om) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bq

bb.av:                                            ; preds = %.noexc.i81
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

.loopexit216:                                     ; preds = %bb.al
  %lpad.loopexit218 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp217:                            ; preds = %bb.am
  %lpad.loopexit.split-lp219 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc.i87
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

.loopexit221:                                     ; preds = %bb.ap
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp222:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp222, %.loopexit221
  %lpad.phi225 = phi { ptr, i32 } [ %lpad.loopexit223, %.loopexit221 ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp222 ] ; 2 uses
  %i.op = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.t
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ax
  %i.or = load i64, ptr %i.t, align 8, !tbaa !51
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.aw
  %.pn44 = phi { ptr, i32 } [ %i.oo, %bb.aw ], [ %lpad.phi225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %lpad.phi225, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit216, %.loopexit.split-lp217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %lpad.loopexit218, %.loopexit216 ], [ %lpad.loopexit.split-lp219, %.loopexit.split-lp217 ] ; 2 uses
  %i.ot = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.r
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.ay
  %i.ov = load i64, ptr %i.r, align 8, !tbaa !51
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.av
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.on, %bb.av ], [ %.pn44.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn44.pn, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.br

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %i.n, ptr %11, align 8, !tbaa !56
  %i.ox = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ox, ptr %i.b, align 8, !tbaa !59
  %i.oy = icmp ugt i64 %i.ox, 15
  br i1 %i.oy, label %.noexc.i133, label %._crit_edge.i.i132

.noexc.i133:                                      ; preds = %bb.az
  %i.oz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc134 unwind label %bb.bm ; 2 uses

.noexc134:                                        ; preds = %.noexc.i133
  store ptr %i.oz, ptr %11, align 8, !tbaa !60
  %i.pa = load i64, ptr %i.b, align 8, !tbaa !59
  store i64 %i.pa, ptr %i.n, align 8, !tbaa !51
  br label %._crit_edge.i.i132

._crit_edge.i.i132:                               ; preds = %.noexc134, %bb.az
  %i.pb = phi ptr [ %i.oz, %.noexc134 ], [ %i.n, %bb.az ] ; 2 uses
  switch i64 %i.ox, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i132
  %i.pc = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.pc, ptr %i.pb, align 1, !tbaa !51
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i132
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pb, ptr nonnull align 1 %i.z, i64 %i.ox, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i132
  %i.pd = load i64, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  store i64 %i.pd, ptr %i.o, align 8, !tbaa !62
  %i.pe = load ptr, ptr %11, align 8, !tbaa !60
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.pd
  store i8 0, ptr %i.pf, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.pg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc136 unwind label %.loopexit

.noexc136:                                        ; preds = %bb.bc
  %i.ph = call ptr @__dynamic_cast(ptr nonnull %i.pg, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIjE, i64 0) #26 ; 6 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %bb.bd, label %_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.bd:                                            ; preds = %.noexc136
  invoke void @__cxa_bad_cast() #27
          to label %.noexc137 unwind label %.loopexit.split-lp

.noexc137:                                        ; preds = %bb.bd
  unreachable

_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %i.p, ptr %12, align 8, !tbaa !56
  %i.pj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.pj, ptr %i.a, align 8, !tbaa !59
  %i.pk = icmp ugt i64 %i.pj, 15
  br i1 %i.pk, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.pl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bn ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.pl, ptr %12, align 8, !tbaa !60
  %i.pm = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.pm, ptr %i.p, align 8, !tbaa !51
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc140, %_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.pn = phi ptr [ %i.pl, %.noexc140 ], [ %i.p, %_ZNK5Image12typedChannelIjEERK17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  switch i64 %i.pj, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %bb.bg
  ]

bb.be:                                            ; preds = %._crit_edge.i.i138
  %i.po = load i8, ptr %i.z, align 4, !tbaa !51
  store i8 %i.po, ptr %i.pn, align 1, !tbaa !51
  br label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i.i138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pn, ptr nonnull align 1 %i.z, i64 %i.pj, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i.i138
  %i.pp = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  store i64 %i.pp, ptr %i.q, align 8, !tbaa !62
  %i.pq = load ptr, ptr %12, align 8, !tbaa !60
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pp
  store i8 0, ptr %i.pr, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ps = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc142 unwind label %.loopexit211

.noexc142:                                        ; preds = %bb.bg
  %i.pt = call ptr @__dynamic_cast(ptr nonnull %i.ps, ptr nonnull @_ZTI12ImageChannel, ptr nonnull @_ZTI17TypedImageChannelIjE, i64 0) #26 ; 6 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %bb.bh, label %_ZN5Image12typedChannelIjEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.bh:                                            ; preds = %.noexc142
  invoke void @__cxa_bad_cast() #27
          to label %.noexc143 unwind label %.loopexit.split-lp212

.noexc143:                                        ; preds = %bb.bh
  unreachable

_ZN5Image12typedChannelIjEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc142
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !116, !nonnull !119, !align !120 ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load i32, ptr %i.px, align 8, !tbaa !121
  %i.pz = load i32, ptr %i.pw, align 8, !tbaa !128
  %i.qa = add i32 %i.py, 1
  %i.qb = sub i32 %i.qa, %i.pz                    ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !116, !nonnull !119, !align !120 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 12
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !129
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !130
  %i.qi = add i32 %i.qf, 1
  %i.qj = sub i32 %i.qi, %i.qh                    ; 6 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pw, i64 12
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !129
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !130
  %i.qo = add i32 %i.ql, 1
  %i.qp = sub i32 %i.qo, %i.qn                    ; 7 uses
  br i1 %.sroa.0.0.i.i, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %_ZN5Image12typedChannelIjEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.qq = icmp sgt i32 %i.qp, 1
  br i1 %i.qq, label %.thread.i171, label %bb.bj

.thread.i171:                                     ; preds = %bb.bi
  %i.qr = add nsw i32 %i.qj, -2
  %i.qs = sitofp i32 %i.qr to double
  %i.qt = add nsw i32 %i.qp, -1
  %i.qu = uitofp nneg i32 %i.qt to double
  %i.qv = fdiv double %i.qs, %i.qu
  br label %.preheader.lr.ph.i157

bb.bj:                                            ; preds = %bb.bi
  %i.qw = icmp eq i32 %i.qp, 1
  br i1 %i.qw, label %.preheader.lr.ph.i157, label %_ZN12_GLOBAL__N_17reduceYIjEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit

.preheader.lr.ph.i157:                            ; preds = %bb.bj, %.thread.i171
  %i.qx = phi double [ %i.qv, %.thread.i171 ], [ 1.000000e+00, %bb.bj ]
  %i.qy = icmp sgt i32 %i.qb, 0
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  br i1 %i.qy, label %.preheader.lr.ph.split.i158, label %_ZN12_GLOBAL__N_17reduceYIjEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit

.preheader.lr.ph.split.i158:                      ; preds = %.preheader.lr.ph.i157
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !166
  %i.re = load i64, ptr %i.rb, align 8, !tbaa !168
  %wide.trip.count67.i159 = zext nneg i32 %i.qp to i64
  %wide.trip.count62.i160 = zext nneg i32 %i.qb to i64
  br label %.preheader.i161

.preheader.i161:                                  ; preds = %._crit_edge50.i168, %.preheader.lr.ph.split.i158
  %indvars.iv64.i162 = phi i64 [ 0, %.preheader.lr.ph.split.i158 ], [ %indvars.iv.next65.i169, %._crit_edge50.i168 ] ; 3 uses
  %i.rf = trunc nuw nsw i64 %indvars.iv64.i162 to i32
  %i.rg = uitofp nneg i32 %i.rf to double
  %i.rh = fmul double %i.qx, %i.rg                ; 4 uses
  %i.ri = fadd double %i.rh, -1.000000e+00
  %i.rj = fadd double %i.rh, 1.000000e+00
  %i.rk = fadd double %i.rh, 2.000000e+00
  %i.rl = mul nsw i64 %indvars.iv64.i162, %i.re
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rl
  br label %bb.bk

._crit_edge50.i168:                               ; preds = %bb.bk
  %indvars.iv.next65.i169 = add nuw nsw i64 %indvars.iv64.i162, 1 ; 2 uses
  %exitcond68.not.i170 = icmp eq i64 %indvars.iv.next65.i169, %wide.trip.count67.i159
  br i1 %exitcond68.not.i170, label %_ZN12_GLOBAL__N_17reduceYIjEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit, label %.preheader.i161, !llvm.loop !205

bb.bk:                                            ; preds = %bb.bk, %.preheader.i161
  %indvars.iv59.i163 = phi i64 [ 0, %.preheader.i161 ], [ %indvars.iv.next60.i166, %bb.bk ] ; 3 uses
  %.val.i164 = load i64, ptr %i.qz, align 8       ; 4 uses
  %.val41.i165 = load ptr, ptr %i.ra, align 8     ; 4 uses
  %i.rn = trunc nuw nsw i64 %indvars.iv59.i163 to i32 ; 4 uses
  %i.ro = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIjEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i164, ptr readonly %.val41.i165, i32 noundef %i.qj, i32 noundef %i.rn, double noundef %i.ri, i32 noundef %2)
  %i.rp = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIjEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i164, ptr readonly %.val41.i165, i32 noundef %i.qj, i32 noundef %i.rn, double noundef %i.rh, i32 noundef %2)
  %i.rq = fmul double %i.rp, 3.750000e-01
  %i.rr = call double @llvm.fmuladd.f64(double %i.ro, double 1.250000e-01, double %i.rq)
  %i.rs = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIjEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i164, ptr readonly %.val41.i165, i32 noundef %i.qj, i32 noundef %i.rn, double noundef %i.rj, i32 noundef %2)
  %i.rt = call double @llvm.fmuladd.f64(double %i.rs, double 3.750000e-01, double %i.rr)
  %i.ru = call fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIjEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.val.i164, ptr readonly %.val41.i165, i32 noundef %i.qj, i32 noundef %i.rn, double noundef %i.rk, i32 noundef %2)
  %i.rv = call double @llvm.fmuladd.f64(double %i.ru, double 1.250000e-01, double %i.rt)
  %i.rw = fptoui double %i.rv to i32
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %indvars.iv59.i163
  store i32 %i.rw, ptr %i.rx, align 4, !tbaa !110
  %indvars.iv.next60.i166 = add nuw nsw i64 %indvars.iv59.i163, 1 ; 2 uses
  %exitcond63.not.i167 = icmp eq i64 %indvars.iv.next60.i166, %wide.trip.count62.i160
  br i1 %exitcond63.not.i167, label %._crit_edge50.i168, label %bb.bk, !llvm.loop !206

bb.bl:                                            ; preds = %_ZN5Image12typedChannelIjEER17TypedImageChannelIT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ry = icmp sgt i32 %i.qp, 0
  %i.rz = icmp sgt i32 %i.qb, 0
  %or.cond.i144 = select i1 %i.ry, i1 %i.rz, i1 false
  br i1 %or.cond.i144, label %.preheader45.lr.ph.split.i145, label %_ZN12_GLOBAL__N_17reduceYIjEEvRK17TypedImageChannelIT_ERS3_b13Extrapolationb.exit

.preheader45.lr.ph.split.i145:                    ; preds = %bb.bl
  %reass.sub.i146 = add i32 %i.qj, 1
  %i.sa = shl nuw i32 %i.qp, 1
  %i.sb = sub i32 %reass.sub.i146, %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.se = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !166 ; 3 uses
  %i.sh = load i64, ptr %i.se, align 8, !tbaa !168 ; 4 uses
  %i.si = load ptr, ptr %i.sd, align 8, !tbaa !166 ; 3 uses
  %i.sj = load i64, ptr %i.sc, align 8, !tbaa !168 ; 2 uses
  %i.sk = sext i32 %i.sb to i64
  %i.sl = select i1 %3, i64 %i.sk, i64 0          ; 3 uses
  %wide.trip.count57.i147 = zext nneg i32 %i.qp to i64 ; 3 uses
  %wide.trip.count.i148 = zext nneg i32 %i.qb to i64 ; 6 uses
  %i.sm = shl i64 %i.sj, 2                        ; 2 uses
  %i.sn = add nsw i64 %wide.trip.count57.i147, -1
  %i.so = mul i64 %i.sm, %i.sn
  %i.sp = shl nuw nsw i64 %wide.trip.count.i148, 2 ; 2 uses
  %i.sq = getelementptr i8, ptr %i.si, i64 %i.so
  %scevgep375 = getelementptr i8, ptr %i.sq, i64 %i.sp
  %i.sr = shl nsw i64 %i.sl, 2
  %i.ss = mul i64 %i.sr, %i.sh
  %scevgep376 = getelementptr i8, ptr %i.sg, i64 %i.ss
  %i.st = shl nuw nsw i64 %wide.trip.count57.i147, 3
  %i.su = add nsw i64 %i.st, -8
  %i.sv = shl nsw i64 %i.sl, 2
  %i.sw = add nsw i64 %i.su, %i.sv
  %i.sx = mul i64 %i.sh, %i.sw
  %i.sy = getelementptr i8, ptr %i.sg, i64 %i.sx
  %scevgep377 = getelementptr i8, ptr %i.sy, i64 %i.sp
  %min.iters.check384 = icmp ult i32 %i.qb, 8
  %bound0378 = icmp ult ptr %i.si, %scevgep377
  %bound1379 = icmp ult ptr %scevgep376, %scevgep375
  %found.conflict380 = and i1 %bound0378, %bound1379
  %stride.check381 = icmp slt i64 %i.sm, 0
  %i.sz = or i1 %found.conflict380, %stride.check381
  %.mask = and i64 %i.sh, 1152921504606846976
  %stride.check382 = icmp ne i64 %.mask, 0
  %i.ta = or i1 %i.sz, %stride.check382
  %n.vec386 = and i64 %wide.trip.count.i148, 2147483640 ; 3 uses
  %cmp.n393 = icmp eq i64 %n.vec386, %wide.trip.count.i148
  %xtraiter = and i64 %wide.trip.count.i148, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader45.i149

.preheader45.i149:                                ; preds = %._crit_edge.i154, %.preheader45.lr.ph.split.i145
  %indvars.iv54.i150 = phi i64 [ 0, %.preheader45.lr.ph.split.i145 ], [ %indvars.iv.next55.i155, %._crit_edge.i154 ] ; 3 uses
  %i.tb = shl nuw nsw i64 %indvars.iv54.i150, 1
  %i.tc = add nsw i64 %i.tb, %i.sl
  %i.td = mul nsw i64 %i.tc, %i.sh
  %i.te = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.td ; 6 uses
  %i.tf = mul nsw i64 %indvars.iv54.i150, %i.sj
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.si, i64 %i.tf ; 6 uses
  %brmerge407 = select i1 %min.iters.check384, i1 true, i1 %i.ta
  br i1 %brmerge407, label %scalar.ph383.preheader, label %vector.body387

vector.body387:                                   ; preds = %.preheader45.i149, %vector.body387
  %index388 = phi i64 [ %index.next391, %vector.body387 ], [ 0, %.preheader45.i149 ] ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %index388 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %wide.load389 = load <4 x i32>, ptr %i.th, align 4, !tbaa !110, !alias.scope !207
  %wide.load390 = load <4 x i32>, ptr %i.ti, align 4, !tbaa !110, !alias.scope !207
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %index388 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store <4 x i32> %wide.load389, ptr %i.tj, align 4, !tbaa !110, !alias.scope !210, !noalias !207
  store <4 x i32> %wide.load390, ptr %i.tk, align 4, !tbaa !110, !alias.scope !210, !noalias !207
  %index.next391 = add nuw i64 %index388, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next391, %n.vec386
  br i1 %i.tl, label %middle.block392, label %vector.body387, !llvm.loop !212

middle.block392:                                  ; preds = %vector.body387
  br i1 %cmp.n393, label %._crit_edge.i154, label %scalar.ph383.preheader

scalar.ph383.preheader:                           ; preds = %.preheader45.i149, %middle.block392
  %indvars.iv.i151.ph = phi i64 [ %n.vec386, %middle.block392 ], [ 0, %.preheader45.i149 ] ; 3 uses
end_hunk_4
